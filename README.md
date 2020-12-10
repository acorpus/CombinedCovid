# CombinedCovid
This Repository contains a csv that is created by combining the COVID data provided by Johns Hopkins CSSE
Link to original data:
https://github.com/CSSEGISandData/COVID-19

We specifically take the data from https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_time_series and combine the two data sets for confirmed cases and deaths. We do a pivot on this data so that each date with numbers for both series are contained in one row. This allows for easier reporting and filtering.

We have now added additional files that contain the US numbers. The Data is similar but there are several new fields in the US model that make the overall data set larger due to duplicating much of the static country data. As a fix we have created a Meta Data Table that contains the county specific data that can be joined with the COVID data on a per need basis. This drastically deduplicates the same data being written in every row. While the Original format from John Hopkins is in the best format from a size saving perspective this dataset is meant to be a function of both size and usability. 

# Data Dictionary Global Covid Data
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

# Data Dictionary US County MetaData
|Column|Datatype|Description|
|---|---|---|
|UID|int|A uniqe ID associated with the the Combined_Key_Column for easy Mapping/Joining|
|iso2|varchar(16)|Two Letter Country Code|
|iso3|varchar(16)|Three Letter Country Code|
|code3|varchar(16)|Numeric Country Code|
|FIPS|int|Federal Information Processing Standards code that uniquely identifies counties within the USA.|
|Admin2|varchar(128)|Common name for Counties in the US|
|Provice_State|varchar(128)|The Name of the Province or State the data row reports on|
|Country_Region|varchar(128)|The Name of the County or Region the data row reports on|
|Lat|float|The Latitude of the location the data row reports on|
|Long|float|The Longitude of the location the data row reports on|
|Combined_Key|varchar(128)|The overall Combination of County, State, and Country. *This column has been transformed originally there was a comma in between the elements for ease of use this has been changed to a semicolon|
|Population|int|The population of the County|

# Data Dictionary US Covid Data
|Column|Datatype|Description|
|---|---|---|
|UID|int|A uniqe ID associated with the the Combined_Key_Column for easy Mapping/Joining|
|Combined_Key|varchar(128)|The overall Combination of County, State, and Country. *This column has been transformed originally there was a comma in between the elements for ease of use this has been changed to a semicolon|
|Date|datetime|The date of the data the row reports on|
|Confirmed|int|The total number of confirmed cases for the geographical area. This number is cumulative.|
|Deaths|int|The total number of deaths for the geographical area. This number is cumulative. |
|daily_confirmed|int|The total number of confirmed for the date. Calculated by subtracting the Confirmed column for the previous day from the Confimed column of the current day|
|daily_deaths|int| The total number of deaths for the day. Calculated by subtracting the Deaths column for the previous day from the Deaths column of the current day|
|change_confirmed|float|The percentage change of confirmed as compared to the previous day. Calculated by (confirmed-previousdayconfirmed)/previousdayconfirmed\*100|
|change_deaths|float|The percentage change of deaths as compared to the previous day. Calculated by (deaths-previousdaydeaths)/previousdaydeaths\*100
