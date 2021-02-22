# Create string of lettered columns to load
col_string = pd.read_excel("fcc_survey_headers.xlsx", 
                        skiprows=2, 
                        usecols="AD, AW:BA")

# Load data with skiprows and usecols set
survey_responses = pd.read_excel("fcc_survey_headers.xlsx", 
                        skiprows=2, 
                        usecols="AD, AW:BA")

# View the names of the columns selected
print(survey_responses.columns)
