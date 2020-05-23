#importing catch data and fishing info

ssf = read.csv("Data/Fisheries Catch Data_SSF.csv")
trawler_catch = read.csv("./Data/Fisheries Catch Data_Trawler.csv")
trawler_lvb = read.csv("./Data/Fisheries Catch Data_LVB.csv")
gutcontent = read.csv("./Data/Sea_snakes_gut_content_2018-19.csv")
trawler_info = read.csv("./Data/Fisheries Catch Data_Trawler Info.csv")

# Tonnage per trip

tonnage_tr = trawler_catch%>%
  rename(Date = ï..Date, Boat.Name = Boat.name)%>%
  group_by(Date, Boat.Name)%>%
  summarise(Total.Catch..kg. = sum(Weight..kg.))%>%
  mutate(Gear.Type = "Trawler")%>%
  drop_na()

tonnage_gn = ssf%>%
  rename(Date = ï..Date)%>%
  mutate(Gear.Type = substr(ssf$Gear.Id, 1, 2))%>%
  mutate(Gear.Type = if_else(Gear.Type == "GN", "Gill Net", "Beach Seine"))%>%#getting gear type
  select(Date, Boat.Name, Gear.Type, Total.Catch..kg.)%>%
  distinct()

tonnage <- bind_rows(tonnage_gn, tonnage_tr)%>%
  filter(Gear.Type == "Gill Net" | Gear.Type == "Trawler")

write.csv(tonnage, "./Data/catch tonnage.csv")

#extracting list of fish families from trawler catch

fish_fam = trawler_lvb%>%
  left_join(trawler_info, "Sample")%>%
  unite(Scientific.Name, c("Genus", "Species"), sep = " ")%>%#creating column for sci name
  filter(Scientific.Name != " ")%>%
  dplyr::select(Scientific.Name, Family)%>%
  distinct()

write.csv(fish_fam, "./Data/fish_fam.csv")

#Joining fishing info to trawler low value bycatch and standarising

trawler_lvb = trawler_lvb%>%
  left_join(trawler_info, "Sample")%>%
  mutate(Date = dmy(Date.x))%>%
  unite(Sample, c(Date, Boat.name), remove = F)%>%
  unite(Scientific.Name, c("Genus", "Species"), sep = " ")%>%#creating column for sci name
  dplyr::select(Sample, Scientific.Name, Family, Total.Species.Weight..g., 
                Trash..Discards, Fishing.type, Avg..no..of.hauls.day, Avg..haul.duration..hours.)%>%
  rename(Weight.g = Total.Species.Weight..g.,# weight is for all of one species in sample
         Haul.time = Avg..haul.duration..hours.,
         No.hauls = Avg..no..of.hauls.day,
         Gear.Type = Fishing.type,
         Class = Trash..Discards)%>%
  mutate(Haul.time = 60*(Haul.time))%>%#conveting haultime to minutes
  distinct(Sample, Scientific.Name, .keep_all = T)%>%#removing repeats
  group_by(Gear.Type, Sample, Family)%>%
  summarise(Weight.g = sum(Weight.g, na.rm = T),# calculating wwight of family in sample
            Class = last(Class),
            Haul.time = last(Haul.time),
            No.hauls = last(No.hauls))

#standardising catch data

ssf = ssf%>%
  rename(Date = ï..Date)%>%
  unite(Scientific.Name, c(Genus, Species), sep = " ", remove = F)%>%
  mutate(Gear.Type = substr(ssf$Gear.Id, 1, 2))%>%
  mutate(Gear.Type = if_else(Gear.Type == "GN", "Gill Net", "Beach Seine"))%>%#getting gear type
  left_join(fish_fam)%>%#adding families
  dplyr::select(Gear.Id, Scientific.Name, Family, Weight..g., 
                Category, Gear.Type, Haul.time..min.)%>%
  rename(Sample = Gear.Id,
         Weight.g = Weight..g.,
         Haul.time = Haul.time..min.,
         Class = Category)%>%
  mutate(No.hauls = 1)%>%
  group_by(Gear.Type, Sample,Family, Scientific.Name)%>%
  summarise(Weight.g = sum(Weight.g, na.rm = T),#calculating weight of species in sample
            Class = last(Class),
            Haul.time = last(Haul.time),
            No.hauls = last(No.hauls))%>%
  group_by(Gear.Type, Sample, Family)%>%
  summarise(Weight.g = sum(Weight.g, na.rm = T),#calculating weight of family in sample
            Class = last(Class),
            Haul.time = last(Haul.time),
            No.hauls = last(No.hauls))

trawler_catch = trawler_catch%>%
  rename(Date = ï..Date,
         Scientific.Name = Species)%>%
  mutate(Date = dmy(Date))%>%
  unite(Sample, c(Date, Boat.name), remove = F)%>%
  left_join(fish_fam)%>%
  dplyr::select(Sample, Scientific.Name, Family, Weight..kg., Class)%>%
  rename(Weight.g = Weight..kg.)%>%
  mutate(Weight.g = 1000*Weight.g,
         Gear.Type = "Trawler")%>%
  group_by(Gear.Type, Sample,Family, Scientific.Name)%>%
  summarise(Weight.g = sum(Weight.g, na.rm = T),#calculating weight of species in sample
            Class = last(Class))%>%
  group_by(Gear.Type, Sample, Family)%>%
  summarise(Weight.g = sum(Weight.g, na.rm = T),#calculating weight of family in sample
            Class = last(Class))


# Combining catch data

catch <- bind_rows(ssf, trawler_lvb, trawler_catch)%>%
  filter(Gear.Type == "Trawler" | Gear.Type == "Gill Net")

write.csv(catch, "./Data/catch.csv")
