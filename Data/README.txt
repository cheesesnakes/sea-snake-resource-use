Data base for Dsouza et al. (2021) Resource use and the impacts of fisheries on two sympatric sea snake species on the West Coast of India.

Email: shawn27.dsouza@gmail.com
Collection: Jan 2018 - May 2019
Location: Malvan, Maharashtra

2011_Dist.*: Shape files for the Indian landmass. (Source: DivaGIS)

catch tonnage.csv: Data for fisheries catch weight per boat trip.
  - Date: Sampling date
  - Boat.Name: Name of the boat sampled (anonymised)
  - Gear. Type: Gear employed by the sampled boat
  - Total..catch.kg: Weight of the sampled catch

catch.csv: Fisheries catch composition
  - Gear.Type: Gear employed by sampled boat
  - Sample: Sample ID
  - Family: Family level taxonomy of catch species
  - Weight.g: Weight of all individuals of catch family in sample
  - Class: Economic class of sampled catch (Targetted or Bycatc)
  - Haul.time: Amount of time the net was dragged/ set
  - No.hauls: Number of times the net was set

Fishing intensity_dep.csv: Geocoded fishing trip from Fishing-Effort_250720.csv

Fishing intensity_drig.csv: Rasterised fishing intensity by gear type on sampling extent

Fishing-Effort_250720.csv: Fishing effort data for gillnets and trawlers
  - Date: Sampling date
  - Boat.Name: ID of the sampled boat
  - Gear.Type: Gear employed by the sampled boat
  - Fishing.Location: Location of fishing trip on the sampled date
  - No..of.Days.fishing: Number of days the boat was out at sea
  - Average.Haul.Time..Hours.: Mean time the net was hauled (tawl net) or set (gillnet) during the trip
  - Depth..wav.: Depth at which net was hauled or set as reported by fishers in Fathoms (Marathi:wav)
  - Fishing.Trip.Start: Time at which the crew set out on their trip
  - Fishing.Trip.End: Time at which the crew returned from their trip
  - Snakes.caught: Whether or not sea snakes were encountered in bycatc
  - Number: Number of sea snakes encountered on the trip as reported by fishers
  - Remarks

gebco_2020_n16.7_s15.5_w72.0_e73.9.nc: Depth data for the sampling region from GEBCO database

sampling_extent.tif: Raster with extent of sampled area

Sea snake diet data_Sherratt et al_2018.csv: Sea snake diet data compiled by Sherratt et al. (2018), cleaned.
 - Snake.binomial: Snake species (Species other than Hydrophis schistosus or H. curtus were removed)
 - Prey.Family: Family of prey species
 - Prey.Binomial: Prey specific epithet (where reported in literature)
 - Prey.common.name: Colloquial name for prey species or family
 - Prey.count: Abundance of prey species reported in study
 - Location: Location of the study
 - Reference: Reference from where data was compiled

Sea-snake_fish-dep_2018-19_250720.csv: Sea snake bycatch data from Trawlers, shore seines (Rampan) and gillnets
  - Sr.No.: Serial number of the observation
  - Date: Date of sampling
  - Field.Code: Unique indentifier for sampled individual
  - Species: Specific identity of the sampled individuals
  - Location.encountered: Landing location of fishing boat sampled
  - Dpeth.Caught..Fathoms: Depth at which fishing operatiion was carried out as reported by fishers
  - Gear.Type: Gear employed by the boat for fishing trip
  - Fishing.Location: Approximate location fishing trip as reported by fishers
  - Boat.Name.Owner: ID for sampled boat
  - No..of.Hauls: NUmbe rof times the net was set or hauled during the fishing trip
  - Average.Haul.Duration..Hours.: Mean time the net was set or hauled during the fishing trip
  - Condition.at.encounter..D.A.: Condition of the sea snake when it was taken from the net (Dead or alive)
  - Gut.Content: Presence or Absence of gut content
  - Blood: Whether blood sample was take from the individuals
  - Plasma.Volume: Volume of plasma obtained from centrifuging the sample
  - Plasma.Color: Quality of plasma after cetrifugation
  - Scale: Whether scale samples were collected from the individual
  - Dissected: Whether the dead individual was dissected to check for gut content
  - Snout.to.Vent..cm.: Snout to vent length of the individual in cms
  - Tail.Lenght..cm: Tail length of the individual in cms
  - Head.Length..cm.: head length of individual in cms
  - Head.Width..cm.: Head width of the individual in cms
  - Snout.to.Nose.cm:
  - Noste.to.Eye..cm.:
  - Gape..cm.: Gape length (along labial scales from tip of the snout) in cms
  - Neck.Circumference..cm.: Circumference just behind th head of the snake in cms
  - Body.Circumference..cm.: Circumference of the snake at 2/3rd body length
  - Weight..g.: Weight of the whole snake in grams
  - Sex: Sex of the snake determined by palpation or dissection
  - Photo.No.: Reference no. for photo of the individual (available with first author on request)
  - Remarks:
  
Sea_snake_gut_content_2018-19.csv: Data on prey specimens collected from sea snake gut content, trawler catch and gillnet catch
  - Sr.No.: Serial number of the observation
  - Date: Date of sampling
  - Field.Code: Unique indentifier for sampled individual snake
  - GC.Code: Unique identifier for the sampled prey specimen
  - Source: Where the prey specimen was collected from
  - Snake.Species: Specific identity of the sampled individual snake
  - Local/ Common Name: Colloquial name of the prey species
  - Prey Order, Prey Family, Prey Species: Taxonomic rank of the prey specimen
  - Specimen: Whether the whole specimen was colllected
  - Tissue: Whether fin tissue was collected
  - Condition: Physical condition of the specimen
  - Standard Lenth, Taile Length, Maximum Body Girth (cm): Morphometircs of the pry specimen
  - Weight..g.: Weight of the whole snake in grams
  - Depth.Caught (wav): Depth at which fishing operatiion was carried out in fathoms as reported by fishers
  - Depth.Caught (m): Depth at which fishing operatiion was carried out converted to meters (1 fathom = 1.87 m)
  - Photo.No.: Reference no. for photo of the individual (available with first author on request)
  - Location: Aproximate fishing location as reported by fishers
  - Remarks:
  
SIA_fishing intensity.csv: Geocoded capture locations for individuals from which tissue sample were taken for stable isotope analysis

snakes-density.csv: Geocoded capture locations for all sampled sea snakes

Stable Isotope Data_CEAS_final_191020.csv: Stable isotope analysis data for sea snake and prey specimen tissue tissue along with controls
  - Filed.Code: Specimen ID
  - Tissue.type: Source of the tissue sample
  - d15N (N2 air): Nitrogen isotope ratio 
  - TN (%): Total nitrogen content of the sample
  - d13C (vpdb): Carbon isotope ration
  - TOC (%): Total organic carbon in the sample
  - Sample Amount N (mg): Weight of the sample for Nitrogen run in IRMS
  - Sample Amount C (mg): Weight of the sample for Carbon measurement in IRMS

 