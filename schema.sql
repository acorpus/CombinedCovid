CREATE TABLE [COVID19].[time_series_19_covid_Combined]
(
	[Province_State] [nvarchar](128) NULL,
	[Country_Region] [nvarchar](128) NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[Date] [datetime] NULL,
	[Confirmed] [int] NULL,
	[Deaths] [int] NULL,
	[daily_confirmed] [int] NULL,
	[daily_deaths] [int] NULL,
	[change_confirmed] [float] NULL,
	[change_deaths] [float] NULL
)
