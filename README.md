# CombinedCovid
This Repository contains a csv that is created by combining the COVID data provided by Johns Hopkins CSSE

Link to original git:
https://github.com/CSSEGISandData/COVID-19

We specifically take the data from https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series and combine the three data sets for confirmed cases, deaths, and recovered. We do a pivot on this data so that each date with numbers for all three series are contained in one row. This allows for easier reporting and filtering. 

# Data Dictionary
|Column|Datatype|Description|
|---|---|---|
|Provice_State|varchar(128)|The Name of the Province or State the data row reports on|
|Country_Region|varchar(128)|The Name of the County or Region the data row reports on|
|Lat|float|The Latitude of the location the data row reports on|
|Long|float|The Longitude of the location the data row reports on|
|Date|datetime|The date of the data the row reports on|
|Confirmed|int|The total number of confirmed cases for the geographical area. This number is cumulative.|
|Deaths|int|The total number of deaths for the geographical area. This number is cumulative. |
|daily_confirmed|int|The total number of confirmed for the date. Calculated by subtracting the Confirmed column for the previous day from the Confimed column of the current day|
|daily_deaths|int| The total number of deaths for the day. Calculated by subtracting the Deaths column for the previous day from the Deaths column of the current day|
|change_confirmed|float|The percentage change of confirmed as compared to the previous day. Calculated by (confirmed-previousdayconfirmed)/previousdayconfirmed\*100|
|change_deaths|float|The percentage change of deaths as compared to the previous day. Calculated by (deaths-previousdaydeaths)/previousdaydeaths\*100 
