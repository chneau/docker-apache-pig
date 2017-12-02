data = LOAD 'sub.csv' USING PigStorage(',') AS (
  CountryorArea,
  Year,
  Area,
  Sex,
  City,
  Citytype,
  Recordtype,
  Reliability,
  Sourceyear,
  Value,
  ValueFootnotes
);

CLEAR;

data = FOREACH data GENERATE CountryorArea, City, Citytype;
dis = DISTINCT data;
grouped = GROUP dis BY CountryorArea;
DUMP grouped;