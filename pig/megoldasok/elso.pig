birdstrikes = LOAD 'birdstrikes.csv' USING PigStorage(',') AS (id:int, aircraft:chararray, state:chararray, size:chararray, cost:int);
costs = FOREACH birdstrikes GENERATE state, cost;
g = GROUP costs BY state;
incidents = FOREACH g GENERATE group as state, SUM(costs.cost) AS cnt;

DUMP incidents;
