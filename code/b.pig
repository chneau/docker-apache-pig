data = LOAD 'city.csv' USING PigStorage(',') AS (
  CountryorArea:chararray,
  Year:int,
  Area:chararray,
  Sex:chararray,
  City:chararray,
  Citytype:chararray,
  Recordtype:chararray,
  Reliability:chararray,
  Sourceyear: int,
  Value:float,
  ValueFootnotes:int
);

data = FOREACH data GENERATE CountryorArea, City, Citytype;
grouped = GROUP (DISTINCT data) BY CountryorArea;
grouped = FOREACH grouped GENERATE FLATTEN(group), COUNT($1);
grouped = ORDER grouped BY $0;
DUMP grouped;