data = LOAD 'city.csv' USING PigStorage(',') AS (
  CountryorArea:chararray,
  Year:int,
  Area:chararray,
  Sex:chararray,
  City:chararray,
  Citytype:chararray,
  Recordtype:chararray,
  Reliability:chararray,
  Sourceyear:int,
  Value:float,
  ValueFootnotes:int
);

uniq_country = DISTINCT (FOREACH data GENERATE CountryorArea);
uniq_country_count = FOREACH (GROUP uniq_country ALL) GENERATE COUNT(uniq_country);
DUMP uniq_country_count;