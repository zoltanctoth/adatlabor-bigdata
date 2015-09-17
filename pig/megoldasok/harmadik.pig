birdstrikes = LOAD '/user/bigdata/birdstrikes.csv' USING PigStorage(',') AS (id:int, aircraft:chararray, state:chararray, size:chararray, cost:int);
costs = FOREACH birdstrikes GENERATE state, cost;
g = GROUP costs BY state;
incidents = FOREACH g GENERATE group as state, COUNT(costs) AS cnt;
sorted = ORDER incidents BY cnt DESC;
top_incidents = LIMIT sorted 10;

STORE top_incidents INTO '/tmp/top_incidents.csv' USING PigStorage(',');
