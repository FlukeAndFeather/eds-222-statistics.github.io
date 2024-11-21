# Lead exposure is correlated with reduced nesting success of an urban songbird
---

These datasets correspond to data presented in the named manuscript. Datasets include mockingbird nesting and egg data, nestling blood and feather lead concentration data, and nestling relatedness/sibship data. 


## Data & File Structure


These datasets are all stored as .csv files and may be opened with any supporting program, including Microsoft Excel and RStudio.

Data were collected from studies of nesting birds. Each nest has a unique ID (nest_id) and nestling birds banded and sampled from each nest have a unique idenitifier (nomo_id). 

Datasets:
Mayfield_Analysis.csv: mockingbird nesting data, with additional columns counting nest exposure days; basis of Mayfield nest success analysis
Mockingbird_infertile_eggs.csv: mockingbird nesting data with additional column identifying number of infertile eggs per nest
NestlingPb.csv: nestling mockingbird data including blood and feather lead concentrations for all individuals included in lead analyses.
NOMO_Nest_Data.csv: basic mockingbird nesting data; basis of clutch size analyses & origin of Mayfield_Analysis.csv and Mockingbird_infertile_eggs.csv
Pb_BinomialSibship.csv: nestling mockingbird data including sibship/relatedness for nestlings within the same nest; basis of relatedness analyses. 

## Data & File Structure by Dataset
-------------------------------------------------------
# NestlingPb.csv

This dataset records unique identifiers, location variables, and lead exposure data for nestling mockingbirds sampled in this study. Following is a list of the column headers presented in the dataset, explanations of any abbreviations, and explanations of each variable. Missing values indicate mockingbird individuals for which no lead samples were analyzed (feather samples only).

(nomo) Each study specimen has a unique identifier that is consistent throughout the study datasets.
(age) birds are either identified as of 'nestling' or 'adult' age classes. 
(hood) The study neighborhood where each individual was sampled is recorded 
(hood_pb) The study neighborhood's background soil lead levels; either 'high' or 'low' lead
(nest_id) The unique identifier for which nest the individual was sampled from (consisent with other dataframes in this dataset).
(bloodtube) identifies into which prelabeled specimen collection tube each individual's blood sample was placed prior to analysis. 
(ug_g_drywt) The dried weight of an individual bird's blood sample in micrograms/gram.
(blood_ng_ml_pbwt) The weight of lead (Pb) in an individual bird's blood sample in nanograms/milliliter
(blood_ug_dl_pbwt) The weight of lead (Pb) in an individual bird's blood sample in micrograms/deciliter
(blood_ugdl_log10) The log-10 transformed weight of lead (Pb) in an individual bird's blood sample in micrograms/deciliter for statistical analyses
(blood_ugdl_sqrt) The square-root transformed weight of lead (Pb) in an individual bird's blood sample in micrograms/deciliter for statistical analyses
(feather_ng_g_pbwt) The weight of lead (Pb) in an individual bird's feather sample in nanograms/gram.
(feather_ug_g_pbwt)The weight of lead (Pb) in an individual bird's feather sample in micrograms/gram.
(feather_ugg_log10)The log-10 transformed weight of lead (Pb) in an individual bird's feather sample in micrograms/gram.
(feather_ugg_sqrt)The square-root transformed weight of lead (Pb) in an individual bird's feather sample in micrograms/gram.
(notes) notes pertaining to each sample's collection of analysis, such as instances in which nestling birds were depredated between nest visits, resulting in being unable to acquire a full set of samples from a given nestling.

-------------------------------------------------------
# NOMO_Nest_Data.csv

This dataset records identifying, habitat, and organizational information for each bird nest found and sampled in this study. Following is a list of the column headers presented in the dataset, explanations of any abbreviations, and explanations of each variable. No missing values.

(year) study year in which nest was discovered
(nest) unique identifier for each nest observed in this study, tabulated as follows: YYYY_XXX (survey year_nest# for that year, e.g., 2016_10)
(nest_id) identical as (nest), but with the underscore removed and the first two digits of the survey year removed (YYXXX); e.g., 2016_10 becomes 16010
(hood) the study neighborhood where each nest was sampled was located
(bin.status) binary variable distinguishing nests that progressed to stages in which they hatched at least one nestling (1) or failed to hatch at least one nestling (0)
(status) descriptive status of stages to which each nest progressed: 'depegg' = depredated at egg stage before chicks hatched; 'partial' = at least one chick hatched but other eggs unhatched; 'chick' = all chicks hatched; 'depchick' = depredated in chick phase
(clutch) count of the total number of eggs observed in the nest
(pred.eggs) binary variable distinguishing nests that were depredated as eggs (1) or survived to hatch chicks (0)
(survive) proportion of the number of chicks hatched by a nest compared to the total number of eggs observed in the nest
(product) number of chicks produced by a nest
(lay.month) month in which the nest's first egg was laid

-------------------------------------------------------
# Mayfield_Analysis.csv

This dataset records the data used to generate the Mayfield nest success analysis used in the study. Following is a list of the column headers presented in the dataset, explanations of any abbreviations, and explanations of each variable. Missing values in columns starting with 'date_' or 'status_' are present for nests which had been observed as failed or fledged at the previous nest check date, after which point future nest checks were not needed for that particular nest. Missing values in columns in columns starting with 'range_' failed before the second date in the series (and from that point onward were no longer visited) and therefore do not have a count for the number of days between checks. Missing values in the 'failed' column addressed below. 

(nest_id) unique identifier for each nest observed in this study, tabulated as follows: YYYY_XXX (survey year_nest# for that year, e.g., 2018_004)
(year) survey year in which nest was monitored
(neighborhood) the study neighborhood where each sampled nest was located
(date_1) date on which nest was first observed as containing either eggs or chicks ('exposure days')
(status_1) binary variable; nest status on date 1, either '0' inactive/depredated or '1' active/contains offspring as either eggs or chicks
(date_2) date on which nest was observed for the second time
(status_2) binary variable; nest status on date 2, either '0' inactive/depredated or '1' active/contains offspring as either eggs or chicks
(date_3) date on which nest was observed for the third time
(status_3) binary variable; nest status on date 3, either '0' inactive/depredated/fledged or '1' active/contains offspring as either eggs or chicks
(date_4) date on which nest was observed for the fourth time
(status_4) binary variable; nest status on date 4, either '0' inactive/depredated/fledged or '1' active/contains offspring as either eggs or chicks
(date_5) date on which nest was observed for the fifth time
(status_5) binary variable; nest status on date 5, either '0' inactive/depredated/fledged or '1' active/contains offspring as either eggs or chicks
(date_6) date on which nest was observed for the sixth time
(status_6) binary variable; nest status on date 6, either '0' inactive/depredated/fledged or '1' active/contains offspring as either eggs or chicks
(range1_2) number of days between date_1 and date_2
(range2_3) number of days between date_2 and date_3
(range3_4) number of days between date_3 and date_4
(range4_5) number of days between date_4 and date_5
(range5_6) number of days between date_5 and date_6
(tot_exp_days) total number of days for which a nest had 'exposure;' i.e., the number of days in which offspring occupied the nest as either eggs or chicks before being depredated or fledging the nest. Calculated as the sum of (range1_2)+(range2_3)+(range3_4)+(range4_5)+(range5_6)
(failed) indicator regarding whether a nest failed to fledge offspring 'x' or succeeded in fledging at least one offspring (empty cell)
(failed_bins) binary variable regarding whether a nest failed to fledge offspring (1) or succeeded in fledging at least one offspring (0)

-------------------------------------------------------

# Mockingbird_infertile_eggs.csv

This dataset records the data used to evaluate rates of unhatched mockingbird eggs in the study. Following is a list of the column headers presented in the dataset, explanations of any abbreviations, and explanations of each variable. No missing values present.

(year) survey year in which nest was monitored
(nest_id) unique identifier for each nest observed in this study, tabulated as follows: YYYY_XXX (survey year_nest# for that year, e.g., 2018_004)
(hood) the study neighborhood where each sampled nest was located
(status) descriptive status of stages to which each nest progressed: 'depegg' = depredated at egg stage before chicks hatched; 'partial' = at least one chick hatched but other eggs unhatched; 'chick' = all chicks hatched; 'depchick' = depredated in chick phase
(clutch) count of the total number of eggs observed in the nest
(pred.eggs) binary variable distinguishing nests that were depredated as eggs (1) or survived to hatch chicks (0)
(survive) proportion of the number of chicks hatched by a nest compared to the total number of eggs observed in the nest
(product) number of chicks produced by a nest
(infertile_count) number of unhatched eggs observed in each nest

------------------------------------------------------

# Pb_BinomialSibship.csv

This dataset records the data used to extra-pair paternity and relatedness of offspring observed in mockingbird nests monitored by this study. Following is a list of the column headers presented in the dataset, explanations of any abbreviations, and explanations of each variable. Missing values in the 'half_sib_status' and 'binomial_sibship' columns indicate nests for which sibling relatedness was unable to be analyzed because either only one nestling was present in the nest or not every nestling in the nest had a blood sample collected. Missing values in columns labeled 'chick#id' or 'parent#id' indicate that this individual was not present for this observation; e.g., a nest with only two nestlings will have a missing value for chick3_id, or a nest with unknown parents will have a missing value for the parent1_id column. Missing values in columns ending with 'pb' or 'log10' indicate an individual for which no lead data is available.

(nest_id_2018) unique identifier for each nest observed in survey year 2018 this study, tabulated as follows: YYYY_XXX (survey year_nest# for that year, e.g., 2018_004); only the year 2018 was used for this analysis since only nests for this year were tested for relatedness
(neighborhood) the study neighborhood where each sampled nest was located
(offspring) number of chicks observed in the nest
(parent) binomial variable regarding whether the observed nest had a social parent known to the study (1) or no parents known to the study (0)
(half_sib_status) describes whether the nest was comprised solely of full siblings (full) or if at least one pair of half-siblings was present in the nest (half)
(binomial_sibship) biniomial variable regarding whether the nest was comprised solely of full siblings (full; 0) or if at least one pair of half-siblings was present in the nest (half; 1)
(chick1_id) unique identifier for the first nestling sampled from this nest
(chick2_id) unique identifier for the second nestling sampled from this nest
(chick3_id) unique identifier for the third nestling sampled from this nest (if present)
(chick4_id) unique identifier for the fourth nestling sampled from this nest (if present)
(parent1_id) unique identifier for the parent associated with the nest (if known)
(chick1_pb) The weight of lead (Pb) in the blood sample from the first chick in the nest measured in nanograms/milliliter; from NestlingPb.csv column blood_ng_ml_pbwt
(chick2_pb) The weight of lead (Pb) in the blood sample from the second chick in the nest measured in nanograms/milliliter; from NestlingPb.csv column blood_ng_ml_pbwt
(chick3_pb) The weight of lead (Pb) in the blood sample from the third chick in the nest measured in nanograms/milliliter; from NestlingPb.csv column blood_ng_ml_pbwt
(chick4_pb) The weight of lead (Pb) in the blood sample from the fourth chick in the nest measured in nanograms/milliliter; from NestlingPb.csv column blood_ng_ml_pbwt
(avg_chick_pb) average weight of blood measured in blood samples from all chicks in the nest (calculated as average of columns chick1_pb chick2_pb chick3_pb and chick4_pb)
(ch1_log10) The log-10 transformed weight of lead (Pb) in the blood sample from the first chick in the nest in nanograms/milliliter for statistical analyses
(ch2_log10) The log-10 transformed weight of lead (Pb) in the blood sample from the second chick in the nest in nanograms/milliliter for statistical analyses
(ch3_log10) The log-10 transformed weight of lead (Pb) in the blood sample from the third chick in the nest in nanograms/milliliter for statistical analyses
(ch4_log10) The log-10 transformed weight of lead (Pb) in the blood sample from the fourth chick in the nest in nanograms/milliliter for statistical analyses
(avgch_log10)  average log10-transformed weight of blood measured in blood samples from all chicks in the nest (calculated as average of columns ch1_log10 ch2_log10 ch3_log10 ch4_log10)
(parent_pb) The weight of lead (Pb) in the blood sample from the social parent of the nest measured in nanograms/milliliter
(parent_log10) log-10 transformed weight of lead (Pb) in the blood sample from the social parent of the nest measured in nanograms/milliliter