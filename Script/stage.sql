

CREATE TABLE [dbo].[Accident_Stage](
	[Accident_Index] [nvarchar](255) NULL,
	[Police_Force] [nvarchar](255) NULL,
	[Accident_Severity] [nvarchar](255) NULL,
	[Number_of_Vehicles] [nvarchar](255) NULL,
	[Number_of_Casualties] [nvarchar](255) NULL,
	[Date] [nvarchar](255) NULL,
	[Day_of_Week] [nvarchar](255) NULL,
	[Time] [nvarchar](255) NULL,
	[Local_Authority_(District)] [nvarchar](255) NULL,
	[Local_Authority_(Highway)] [nvarchar](255) NULL,
	[Road_Type] [nvarchar](255) NULL,
	[Speed_limit] [nvarchar](255) NULL,
	[Light_Conditions] [nvarchar](255) NULL,
	[Weather_Conditions] [nvarchar](255) NULL,
	[Road_Surface_Conditions] [nvarchar](255) NULL,
	[Urban_or_Rural_Area] [nvarchar](255) NULL,
	[LSOA_of_Accident_Location] [nvarchar](255) NULL
) 


----------------------------------------------------------------

CREATE TABLE [dbo].[Casualty_Stage](
	[Accident_Index] [nvarchar](255) NULL,
	[Sex_of_Casualty] [nvarchar](255) NULL,
	[Age_Band_of_Casualty] [nvarchar](255) NULL,
	[Casualty_Type] [nvarchar](255) NULL
)


---------------------------------------------------------

CREATE TABLE [dbo].[LSOA_Stage](
	[pcd7] [nvarchar](255) NULL,
	[pcd8] [nvarchar](255) NULL,
	[pcds] [nvarchar](255) NULL,
	[dointr] [nvarchar](255) NULL,
	[doterm] [nvarchar](255) NULL,
	[usertype] [nvarchar](255) NULL,
	[oa11cd] [nvarchar](255) NULL,
	[lsoa11cd] [nvarchar](255) NULL,
	[msoa11cd] [nvarchar](255) NULL
)

-------------------------------------------------

CREATE TABLE [dbo].[Postcode_Stage](
	[postcode] [nvarchar](255) NULL,
	[easting] [nvarchar](255) NULL,
	[northing] [nvarchar](255) NULL,
	[latitude] [nvarchar](255) NULL,
	[longitude] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[county] [nvarchar](255) NULL,
	[country_code] [nvarchar](255) NULL,
	[country_name] [nvarchar](255) NULL,
	[iso3166-2] [nvarchar](255) NULL,
	[region_code] [nvarchar](255) NULL,
	[region_name] [nvarchar](255) NULL
)


-------------------------------------------------

CREATE TABLE [dbo].[Vehicle_Stage](
	[Accident_Index] [nvarchar](255) NULL,
	[Journey_Purpose_of_Driver] [nvarchar](255) NULL,
	[Vehicle_Type] [nvarchar](255) NULL,
	[Junction_Location] [nvarchar](255) NULL,
	[Skidding_and_Overturning] [nvarchar](255) NULL,
	[Was_Vehicle_Left_Hand_Drive?] [nvarchar](255) NULL,
	[Sex_of_Driver] [nvarchar](255) NULL,
	[Age_Band_of_Driver] [nvarchar](255) NULL,
	[Age_of_Vehicle] [nvarchar](255) NULL,
	[Age_of_Driver] [nvarchar](255) NULL
)


