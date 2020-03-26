# CombinedCovid
This Repository contains a csv that is created by combining the COVID data provided by Johns Hopkins CSSE

Link to original git:
https://github.com/CSSEGISandData/COVID-19

We specifically take the data from https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series and combine the three data sets for confirmed cases, deaths, and recovered. We do a pivot on this data so that each date with numbers for all three series are contained in one row. This allows for easier reporting and filtering. 
