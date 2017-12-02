data = LOAD 'sub.csv' USING PigStorage(',') AS (
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
dis = DISTINCT data;
grouped = GROUP dis BY CountryorArea;
DUMP grouped;