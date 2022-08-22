
/*----------------Tạo bảng Postcode--------------*/
CREATE TABLE Postcode(
	postcode  nvarchar(255),
	city  nvarchar(255),
	county  nvarchar(255),
	country_code nvarchar(255),
	country_name nvarchar(255),
	region_code nvarchar(255),
	region_name  nvarchar(255),
	easting nvarchar(255),
	northing nvarchar(255),
	latitude nvarchar(255),
	longitude nvarchar(255),
	iso3166_2 nvarchar(255)

	CONSTRAINT PK_P
	PRIMARY KEY (postcode)
)
--/*----------------Tạo bảng PCD_OA_LSOA_MSOA_LAD_AUG21_UK_LU--------------*/
--CREATE TABLE PCD_OA_LSOA_MSOA_LAD_AUG21_UK_LU(
--	ID INT IDENTITY(1,1),
--	pcd7  nvarchar(255),
--	pcd8  nvarchar(255),
--	pcds nvarchar(255),
--	dointr nvarchar(255),
--	doterm nvarchar(255),
--	usertype  nvarchar(255),
--	oa11cd nvarchar(255),
--	lsoa11cd nvarchar(255),
--	msoa11cd nvarchar(255)

--	CONSTRAINT PK_PCD_OA_LSOA_MSOA_LAD_AUG21_UK_LU
--	PRIMARY KEY (ID)
--)
--alter table PCD_OA_LSOA_MSOA_LAD_AUG21_UK_LU add constraint FK_LSOA_Postcode foreign key (pcd8) references Postcode (postcode);
--alter table PCD_OA_LSOA_MSOA_LAD_AUG21_UK_LU add constraint FK_lsoa11cd_Unique UNIQUE(lsoa11cd);
/*==============================================================*/
/*        Những bảng con liên quan tới bảng Accident            */
/*==============================================================*/
--                      1/ Light Conditions
CREATE TABLE LightConditions(
	LightConditions_ID nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_LC
	PRIMARY KEY (LightConditions_ID)
)
--                      2/ Urban or Rural Area
CREATE TABLE UrbanOrRuralArea(
	UrbanOrRuralArea_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_UORA
	PRIMARY KEY (UrbanOrRuralArea_ID)
)
--                      3/ Local_Authority_(Highway)
CREATE TABLE LocalAuthority_Highway(
	LocalAuthority_Highway_ID nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_LAH
	PRIMARY KEY (LocalAuthority_Highway_ID)
)
--                      4/ Local Authority_(District)
CREATE TABLE LocalAuthority_District(
	LocalAuthority_District_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_LAD
	PRIMARY KEY (LocalAuthority_District_ID)
)
--                      5/ Accident Severity
CREATE TABLE AccidentSeverity(
	AccidentSeverity_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_AS
	PRIMARY KEY (AccidentSeverity_ID)
)
--                      6/ Road Type
CREATE TABLE RoadType(
	RoadType_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_RT
	PRIMARY KEY (RoadType_ID)
)
--                      7/ Weather Conditions
CREATE TABLE WeatherConditions(
	WeatherConditions_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_WC
	PRIMARY KEY (WeatherConditions_ID)
)
--                      8/ Police Force
CREATE TABLE PoliceForce(
	PoliceForce_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_PF
	PRIMARY KEY (PoliceForce_ID)
)
--                      9/ Conditions
CREATE TABLE Conditions(
	Conditions_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_C
	PRIMARY KEY (Conditions_ID)
)
/*----------------Tạo bảng Accident--------------*/
CREATE TABLE Accident(
	Accident_Index  nvarchar(255),
	AccidentSeverity  nvarchar(255),
	LocalAuthority_District  nvarchar(255),
	UrbanOrRuralArea  nvarchar(255),
	RoadType  nvarchar(255),
	PoliceForce  nvarchar(255),
	LocalAuthority_Highway nvarchar(255),
	LightConditions nvarchar(255),
	WeatherConditions  nvarchar(255),
	RoadSurfaceConditions  nvarchar(255),
	Day_of_Week  nvarchar(255),
	LSOA_of_Accident_Location nvarchar(255),
	Time nvarchar(255),
	Date nvarchar(255),
	NumberOfVehicles  nvarchar(255),
	NumberOfCasualties  nvarchar(255),
	Speedlimit  nvarchar(255),
	pcd8 nvarchar(255)

	CONSTRAINT PK_Accident
	PRIMARY KEY (Accident_Index)
)
/*----------------Ràng buộc khóa ngoại bảng Accident------------*/
alter table Accident add constraint FK_Accident_LightConditions foreign key (LightConditions) references LightConditions (LightConditions_ID);
alter table Accident add constraint FK_Accident_UrbanOrRuralArea foreign key (UrbanOrRuralArea) references UrbanOrRuralArea (UrbanOrRuralArea_ID);
alter table Accident add constraint FK_Accident_LocalAuthority_Highway foreign key (LocalAuthority_Highway) references LocalAuthority_Highway (LocalAuthority_Highway_ID);
alter table Accident add constraint FK_Accident_LocalAuthority_District foreign key (LocalAuthority_District) references LocalAuthority_District (LocalAuthority_District_ID);
alter table Accident add constraint FK_Accident_AccidentSeverity foreign key (AccidentSeverity) references AccidentSeverity (AccidentSeverity_ID);
alter table Accident add constraint FK_Accident_RoadType foreign key (RoadType) references RoadType (RoadType_ID);
alter table Accident add constraint FK_Accident_WeatherConditions foreign key (WeatherConditions) references WeatherConditions (WeatherConditions_ID);
alter table Accident add constraint FK_Accident_PoliceForce foreign key (PoliceForce) references PoliceForce (PoliceForce_ID);
alter table Accident add constraint FK_Accident_RoadSurfaceConditions foreign key (RoadSurfaceConditions) references Conditions (Conditions_ID);
alter table Accident add constraint FK_Accident_LSOA foreign key (pcd8) references Postcode (postcode);

/*==============================================================*/
/*        Những bảng con liên quan tới bảng Vehicle            */
/*==============================================================*/
--                      1/ JourneyPurposeOfDriver
CREATE TABLE JourneyPurposeOfDriver(
	JourneyPurposeOfDriver_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_JPOD
	PRIMARY KEY (JourneyPurposeOfDriver_ID)
)
--                      2/ VehicleType
CREATE TABLE VehicleType(
	VehicleType_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_VT
	PRIMARY KEY (VehicleType_ID)
)
--                      3/ Junction Location
CREATE TABLE JunctionLocation(
	JunctionLocation_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_JL
	PRIMARY KEY (JunctionLocation_ID)
)
--                      4/ SkiddingAndOverturning
CREATE TABLE SkiddingAndOverturning(
	SkiddingAndOverturning_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_SAOT
	PRIMARY KEY (SkiddingAndOverturning_ID)
)
--                      5/ Was Vehicle Left Hand Drive
CREATE TABLE WasVehicleLeftHandDrive(
	WasVehicleLeftHandDrive_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_WVLHD
	PRIMARY KEY (WasVehicleLeftHandDrive_ID)
)
--                      6/ Sex of Driver
CREATE TABLE SexOfDriver(
	SexOfDriver_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_SOD
	PRIMARY KEY (SexOfDriver_ID)
)
--                      7/ Age Band of Driver
CREATE TABLE AgeBandOfDriver(
	AgeBandOfDriver_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_ABOD
	PRIMARY KEY (AgeBandOfDriver_ID)
)

/*----------------Tạo bảng Vehicle--------------*/
CREATE TABLE Vehicle(
	ID INT IDENTITY(1,1),
	Accident_Code  nvarchar(255),
	JourneyPurposeOfDriver  nvarchar(255),
	VehicleType  nvarchar(255),
	JunctionLocation  nvarchar(255),
	SkiddingAndOverturning  nvarchar(255),
	WasVehicleLeftHandDrive  nvarchar(255),
	SexOfDriver  nvarchar(255),
	AgeBandOfDriver  nvarchar(255),
	AgeOfVehicle_Manufacture  nvarchar(255),
	AgeOfDriver  nvarchar(255)

	CONSTRAINT PK_Vehicle
	PRIMARY KEY (ID)
)
/*----------------Ràng buộc khóa ngoại bảng Accident------------*/
alter table Vehicle add constraint FK_Vehicle_JourneyPurposeOfDriver foreign key (JourneyPurposeOfDriver) references JourneyPurposeOfDriver (JourneyPurposeOfDriver_ID);
alter table Vehicle add constraint FK_Vehicle_VehicleType foreign key (VehicleType) references VehicleType (VehicleType_ID);
alter table Vehicle add constraint FK_Vehicle_JunctionLocation foreign key (JunctionLocation) references JunctionLocation (JunctionLocation_ID);
alter table Vehicle add constraint FK_Vehicle_SkiddingAndOverturning foreign key (SkiddingAndOverturning) references SkiddingAndOverturning (SkiddingAndOverturning_ID);
alter table Vehicle add constraint FK_Vehicle_WasVehicleLeftHandDrive foreign key (WasVehicleLeftHandDrive) references WasVehicleLeftHandDrive (WasVehicleLeftHandDrive_ID);
alter table Vehicle add constraint FK_Vehicle_SexOfDriver foreign key (SexOfDriver) references SexOfDriver (SexOfDriver_ID);
alter table Vehicle add constraint FK_Vehicle_AgeBandOfDriver foreign key (AgeBandOfDriver) references AgeBandOfDriver (AgeBandOfDriver_ID);

alter table Vehicle add constraint FK_Vehicle_Accident foreign key (Accident_Code) references Accident (Accident_Index);
/*==============================================================*/
/*        Những bảng con liên quan tới bảng Casualities         */
/*==============================================================*/
--                      1/ Age Band of Casualty
CREATE TABLE AgeBandOfCasualty(
	AgeBandOfCasualty_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_ABOC
	PRIMARY KEY (AgeBandOfCasualty_ID)
)
--                      2/ Sex of Casualty
CREATE TABLE SexOfCasualty(
	SexOfCasualty_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_SOC
	PRIMARY KEY (SexOfCasualty_ID)
)
--                      3/ Casualty Type
CREATE TABLE CasualtyType(
	CasualtyType_ID  nvarchar(255),
	Name nvarchar(255)

	CONSTRAINT PK_CT
	PRIMARY KEY (CasualtyType_ID)
)

/*----------------Tạo bảng Casualitie--------------*/
CREATE TABLE Casualitie(
	ID INT IDENTITY(1,1),
	Accident_Code  nvarchar(255),
	AgeBandOfCasualty  nvarchar(255),
	SexOfCasualty  nvarchar(255),
	CasualtyType  nvarchar(255)

	CONSTRAINT PK_Casualitie
	PRIMARY KEY (ID)
)
/*----------------Ràng buộc khóa ngoại bảng Casualities------------*/
alter table Casualitie add constraint FK_Casualitie_AgeBandOfCasualty foreign key (AgeBandOfCasualty) references AgeBandOfCasualty (AgeBandOfCasualty_ID);
alter table Casualitie add constraint FK_Casualitie_SexOfCasualty foreign key (SexOfCasualty) references SexOfCasualty (SexOfCasualty_ID);
alter table Casualitie add constraint FK_Casualitie_CasualtyType foreign key (CasualtyType) references CasualtyType (CasualtyType_ID);
alter table Casualitie add constraint FK_Casualitie_Accident foreign key (Accident_Code) references Accident (Accident_Index);



