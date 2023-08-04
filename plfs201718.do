/* -----------------------------------------------------------------------------
                            Extract PLFS2017-18
----------------------------------------------------------------------------- */

set more off

/* input the location of ASCII files */ 

cd "PLFS2017-18"                                                    

// Family files - first visit and revisit

infix ///
          str file_id                  1 - 4 ///
          str schedule                 5 - 7 ///
          str quarter                  8 - 9 ///
          str visit                   10 - 11 ///
          str sector                  12 - 12 ///
          str state_id                13 - 14 ///
          str district_id             15 - 16 ///
          str region                  17 - 19 ///
          str stratum                 20 - 21 ///
          str sub_stratum             22 - 23 ///
          str sub_sample              24 - 24 ///
          str fod_subregion           25 - 28 ///
          str fsu                     29 - 33 ///
          str sample_sgsb_no          34 - 34 ///
          str second_stage_stratum_no 35 - 35 ///
          str sample_household_no     36 - 37 ///
          str month_of_survey         38 - 39 ///
          str response_code           40 - 40 ///
		  str survey_code             41 - 41 ///
		  str reason_hh_sub		      42 - 42 ///	
          str hh_size                 43 - 44 ///
          str hh_type                 44 - 45 ///
          str religion                46 - 46 ///
          str caste                   47 - 47 ///
          str mpce_rs                 48 - 55 ///
          str informant_no            56 - 57 ///
		  str survey_date             58 - 65 ///
		  str time_taken         	  66 - 69 ///		  
          str nss                     70 - 72 ///
          str nsc                     73 - 75 ///
          str multiplier              76 - 85 ///
          str num_occurance           86 - 86 ///
using FHH_FV.TXT 

gen hhid = sector + state_id + region + district_id + stratum + sub_stratum + sub_sample + fod_subregion + fsu + sample_sgsb_no + second_stage_stratum_no + sample_household_no

save "family_firstvisit_201718.dta",replace


infix ///
          str file_id                  1 - 4 ///
          str schedule                 5 - 7 ///
          str quarter                  8 - 9 ///
          str visit                   10 - 11 ///
          str sector                  12 - 12 ///
          str state_id                13 - 14 ///
          str district_id             15 - 16 ///
          str region                  17 - 19 ///
          str stratum                 20 - 21 ///
          str sub_stratum             22 - 23 ///
          str sub_sample              24 - 24 ///
          str fod_subregion           25 - 28 ///
          str fsu                     29 - 33 ///
          str sample_sgsb_no          34 - 34 ///
          str second_stage_stratum_no 35 - 35 ///
          str sample_household_no     36 - 37 ///
          str month_of_survey         38 - 39 ///
          str response_code           40 - 40 ///
		  str survey_code             41 - 41 ///
		  str reason_hh_sub		      42 - 42 ///	
          str hh_size                 43 - 44 ///
          str hh_type                 44 - 45 ///
          str religion                46 - 46 ///
          str caste                   47 - 47 ///
          str mpce_rs                 48 - 55 ///
          str informant_no            56 - 57 ///
		  str survey_date             58 - 65 ///
		  str time_taken         	  66 - 69 ///		  
          str nss                     70 - 72 ///
          str nsc                     73 - 75 ///
          str multiplier              76 - 85 ///
          str num_occurance           86 - 86 ///
using FHH_RV.TXT, clear 

gen hhid = sector + state_id + region + district_id + stratum + sub_stratum + sub_sample + fod_subregion + fsu + sample_sgsb_no + second_stage_stratum_no + sample_household_no

sort hhid visit

save "family_revisit_201718.dta",replace

// Member files - First visit and revisit

infix ///
          str file_id                  1 - 4 /// 
		  str schedule                 5 - 7 /// 
		  str quarter                  8 - 9 /// 
		  str visit                   10 - 11 /// 
		  str sector                  12 - 12 /// 
		  str state_id                13 - 14 ///
		  str district_id             15 - 16 /// 
		  str region                  17 - 19 /// 
		  str stratum                 20 - 21 /// 
		  str sub_stratum             22 - 23 /// 
		  str sub_sample              24 - 24 ///
		  str fod_subregion           25 - 28 /// 
		  str fsu                     29 - 33 /// 
		  str sample_sgsb_no          34 - 34 /// 
		  str second_stage_stratum_no 35 - 35 ///
		  str sample_household_no     36 - 37 /// 
		  str person_no               38 - 39 /// 
		  str relation_to_head        40 - 40 /// 
		  str gender                  41 - 41 ///
		  str age                     42 - 44 ///
		  str marital_status          45 - 45 /// 
		  str general_edu             46 - 47 /// 
		  str tech_edu                48 - 49 /// 
		  str years_general_edu       50 - 51 /// 
		  str edu_status              52 - 53 ///
		  str training_received       54 - 54 /// 
		  str training_pastyear       55 - 55 /// 
		  str training_field          56 - 57 /// 
		  str training_duration       58 - 58 /// 
		  str training_type           59 - 59 ///
		  str training_funds          60 - 60 /// 
		  str ups_activity            61 - 62 ///                                    // 'Usual Principal Status'
		  str ups_nic                 63 - 67 /// 
		  str ups_nco                 68 - 70 ///
		  str ss_yesno                71 - 71 ///                                    // 'Subsidiary status'
		  str ups_worklocation        72 - 73 /// 
		  str ups_enterprise_type     74 - 75 /// 
		  str ups_number_workers      76 - 76 /// 
		  str ups_contract_type       77 - 77 ///
		  str ups_paid_leave          78 - 78 /// 
		  str ups_socialsec           79 - 79 /// 
		  str ss_activity             80 - 81 /// 
		  str ss_nic                  82 - 86 /// 
		  str ss_nco                  87 - 89 ///
		  str ss_worklocation         90 - 91 /// 
		  str ss_enterprisetype       92 - 93 /// 
		  str ss_number_workers       94 - 94 /// 
		  str ss_contract_type        95 - 95 ///
		  str ss_paid_leave           96 - 96 /// 
		  str ss_socialsec            97 - 97 /// 
		  str cds_activity1_day7      98 - 99 ///                                    // 'Current daily status'
		  str cds_nic_activity1_day7 100 - 101 ///
		  str hours_activity1_day7   102 - 103 /// 
		  str earning_activity1_day7 104 - 108 /// 
		  str cds_activity2_day7     109 - 110 ///
		  str cds_nic_activity2_day7 111 - 112 /// 
		  str hours_activity2_day7   113 - 114 /// 
		  str earning_activity2_day7 115 - 119 ///
		  str totalhours_day7        120 - 121 /// 
		  str hours_available_day7   122 - 123 ///
		  str cds_activity1_day6     124 - 125 ///                                   
		  str cds_nic_activity1_day6 126 - 127 ///
		  str hours_activity1_day6   128 - 129 /// 
		  str earning_activity1_day6 130 - 134 /// 
		  str cds_activity2_day6     135 - 136 ///
		  str cds_nic_activity2_day6 137 - 138 /// 
		  str hours_activity2_day6   139 - 140 /// 
		  str earning_activity2_day6 141 - 145 ///
		  str totalhours_day6        146 - 147 /// 
		  str hours_available_day6   148 - 149 ///
		  str cds_activity1_day5     150 - 151 ///                                   
		  str cds_nic_activity1_day5 152 - 153 ///
		  str hours_activity1_day5   154 - 155 /// 
		  str earning_activity1_day5 156 - 160 /// 
		  str cds_activity2_day5     161 - 162 ///
		  str cds_nic_activity2_day5 163 - 164 /// 
		  str hours_activity2_day5   165 - 166 /// 
		  str earning_activity2_day5 167 - 171 ///
		  str totalhours_day5        172 - 173 /// 
		  str hours_available_day5   174 - 175 ///
		  str cds_activity1_day4     176 - 177 ///                                   
		  str cds_nic_activity1_day4 178 - 179 ///
		  str hours_activity1_day4   180 - 181 /// 
		  str earning_activity1_day4 182 - 186 /// 
		  str cds_activity2_day4     187 - 188 ///
		  str cds_nic_activity2_day4 189 - 190 /// 
		  str hours_activity2_day4   191 - 192 /// 
		  str earning_activity2_day4 193 - 197 ///
		  str totalhours_day4        198 - 199 /// 
		  str hours_available_day4   200 - 201 ///
		  str cds_activity1_day3     202 - 203 ///                                   
		  str cds_nic_activity1_day3 204 - 205 ///
		  str hours_activity1_day3   206 - 207 /// 
		  str earning_activity1_day3 208 - 212 /// 
		  str cds_activity2_day3     213 - 214 ///
		  str cds_nic_activity2_day3 215 - 216 /// 
		  str hours_activity2_day3   217 - 218 /// 
		  str earning_activity2_day3 219 - 223 ///
		  str totalhours_day3        224 - 225 /// 
		  str hours_available_day3   226 - 227 ///
		  str cds_activity1_day2     228 - 229 ///                                   
		  str cds_nic_activity1_day2 230 - 231 ///
		  str hours_activity1_day2   232 - 233 /// 
		  str earning_activity1_day2 234 - 238 /// 
		  str cds_activity2_day2     239 - 240 ///
		  str cds_nic_activity2_day2 241 - 242 /// 
		  str hours_activity2_day2   243 - 244 /// 
		  str earning_activity2_day2 245 - 249 ///
		  str totalhours_day2        250 - 251 /// 
		  str hours_available_day2   252 - 253 ///
		  str cds_activity1_day1     254 - 255 ///                                   
		  str cds_nic_activity1_day1 256 - 257 ///
		  str hours_activity1_day1   258 - 259 /// 
		  str earning_activity1_day1 260 - 264 /// 
		  str cds_activity2_day1     265 - 266 ///
		  str cds_nic_activity2_day1 267 - 268 /// 
		  str hours_activity2_day1   269 - 270 /// 
		  str earning_activity2_day1 271 - 275 ///
		  str totalhours_day1        276 - 277 /// 
		  str hours_available_day1   278 - 279 ///
		  str cws_activity           280 - 281 ///                               // 'Current Weekly Status' 
		  str cws_nic                282 - 283 ///
		  str cws_nco                284 - 286 /// 
		  str earnings_regular       287 - 294 /// 
		  str earnings_selfemp       295 - 302 /// 
		  str person_nss             303 - 305 ///
		  str person_nsc             306 - 308 ///
		  str person_multiplier      309 - 318 ///
		  str person_num_occurance   319 - 319 ///
using FPER_FV.TXT, clear

gen hhid = sector + state_id + region + district_id + stratum + sub_stratum + sub_sample + fod_subregion + fsu + sample_sgsb_no + second_stage_stratum_no + sample_household_no
gen pid = hhid + person_no

save "member_firstvisit_201718.dta",replace


infix ///
          str file_id                  1 - 4 ///
		  str schedule                 5 - 7 ///
		  str quarter                  8 - 9 ///
		  str visit                   10 - 11 ///
		  str sector                  12 - 12 ///
		  str state_id                13 - 14 ///
		  str district_id             15 - 16 ///
		  str region                  17 - 19 ///
          str stratum                 20 - 21 ///
		  str sub_stratum             22 - 23 ///
		  str sub_sample              24 - 24 ///
		  str fod_subregion           25 - 28 ///
		  str fsu                     29 - 33 ///
		  str sample_sgsb_no          34 - 34 ///
          str second_stage_stratum_no 35 - 35 ///
		  str sample_household_no     36 - 37 ///
		  str person_no               38 - 39 ///
		  str relation_to_head        40 - 40 /// 
		  str gender                  41 - 41 ///
		  str age                     42 - 44 ///
		  str marital_status          45 - 45 /// 
		  str general_edu             46 - 47 /// 
		  str tech_edu                48 - 49 /// 
		  str years_general_edu       50 - 51 /// 
		  str edu_status              52 - 53 ///
		  str cds_activity1_day7      54 - 55 ///                                    // 'Current daily status'
		  str cds_nic_activity1_day7  56 - 57 ///
		  str hours_activity1_day7    58 - 59 /// 
		  str earning_activity1_day7  60 - 64 /// 
		  str cds_activity2_day7      65 - 66 ///
		  str cds_nic_activity2_day7  67 - 68 /// 
		  str hours_activity2_day7    69 - 70 /// 
		  str earning_activity2_day7  71 - 75 ///
		  str totalhours_day7         76 - 77 /// 
		  str hours_available_day7    78 - 79 ///
		  str cds_activity1_day6      80 - 81 ///                                   
		  str cds_nic_activity1_day6  82 - 83 ///
		  str hours_activity1_day6    84 - 85 /// 
		  str earning_activity1_day6  86 - 90 /// 
		  str cds_activity2_day6      91 - 92 ///
		  str cds_nic_activity2_day6  93 - 94 /// 
		  str hours_activity2_day6    95 - 96 /// 
		  str earning_activity2_day6  97 - 101 ///
		  str totalhours_day6        102 - 103 /// 
		  str hours_available_day6   104 - 105 ///
		  str cds_activity1_day5     106 - 107 ///                                   
		  str cds_nic_activity1_day5 108 - 109 ///
		  str hours_activity1_day5   110 - 111 /// 
		  str earning_activity1_day5 112 - 116 /// 
		  str cds_activity2_day5     117 - 118 ///
		  str cds_nic_activity2_day5 119 - 120 /// 
		  str hours_activity2_day5   121 - 122 /// 
		  str earning_activity2_day5 123 - 127 ///
		  str totalhours_day5        128 - 129 /// 
		  str hours_available_day5   130 - 131 ///
		  str cds_activity1_day4     132 - 133 ///                                   
		  str cds_nic_activity1_day4 134 - 135 ///
		  str hours_activity1_day4   136 - 137 /// 
		  str earning_activity1_day4 138 - 142 /// 
		  str cds_activity2_day4     143 - 144 ///
		  str cds_nic_activity2_day4 145 - 146 /// 
		  str hours_activity2_day4   147 - 148 /// 
		  str earning_activity2_day4 149 - 153 ///
		  str totalhours_day4        154 - 155 /// 
		  str hours_available_day4   156 - 157 ///
		  str cds_activity1_day3     158 - 159 ///                                   
		  str cds_nic_activity1_day3 160 - 161 ///
		  str hours_activity1_day3   162 - 163 /// 
		  str earning_activity1_day3 164 - 168 /// 
		  str cds_activity2_day3     169 - 170 ///
		  str cds_nic_activity2_day3 171 - 172 /// 
		  str hours_activity2_day3   173 - 174 /// 
		  str earning_activity2_day3 175 - 179 ///
		  str totalhours_day3        178 - 181 /// 
		  str hours_available_day3   182 - 183 ///
		  str cds_activity1_day2     184 - 185 ///                                   
		  str cds_nic_activity1_day2 186 - 187 ///
		  str hours_activity1_day2   188 - 189 /// 
		  str earning_activity1_day2 190 - 194 /// 
		  str cds_activity2_day2     195 - 196 ///
		  str cds_nic_activity2_day2 197 - 198 /// 
		  str hours_activity2_day2   199 - 200 /// 
		  str earning_activity2_day2 201 - 205 ///
		  str totalhours_day2        206 - 207 /// 
		  str hours_available_day2   208 - 209 ///
		  str cds_activity1_day1     210 - 211 ///                                   
		  str cds_nic_activity1_day1 212 - 213 ///
		  str hours_activity1_day1   214 - 215 /// 
		  str earning_activity1_day1 216 - 220 /// 
		  str cds_activity2_day1     221 - 222 ///
		  str cds_nic_activity2_day1 223 - 224 /// 
		  str hours_activity2_day1   225 - 226 /// 
		  str earning_activity2_day1 227 - 231 ///
		  str totalhours_day1        232 - 233 /// 
		  str hours_available_day1   234 - 235 ///
		  str cws_activity           236 - 237 ///                               
		  str cws_nic                238 - 239 ///
		  str cws_nco                240 - 242 /// 
		  str earnings_regular       243 - 250 /// 
		  str earnings_selfemp       251 - 258 /// 
		  str person_nss             259 - 261 ///
		  str person_nsc             260 - 264 ///
		  str person_multiplier      265 - 274 ///
		  str person_num_occurance   275 - 275 ///
using FPER_RV.TXT, clear

gen hhid = sector + state_id + region + district_id + stratum + sub_stratum + sub_sample + fod_subregion + fsu + sample_sgsb_no + second_stage_stratum_no + sample_household_no
gen pid = hhid + person_no

sort pid visit
save "member_revisit_201718.dta",replace
