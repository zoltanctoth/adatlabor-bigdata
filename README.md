# adatlabor-bigdata
Adatlabor BigData anyagok

#### Streaming:

1. development: `cat birdstrikes.txt | python mapper.py | sort | python reducer.py`
2. hadoop local mode: `hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.0.jar -fs local -jt local -input birdstrikes.csv -output output.csv -mapper mapper.py -reducer reducer.py`
3. hadoop: `hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.0.jar -input /user/bigdata/birdstrikes.csv -output /user/bigdata/streaming.csv -mapper mapper.py -reducer reducer.py -file mapper.py -file reducer.py`

#### Pig:

1. Interactive shell: `pig -x local`
2. Execute a pig script: `pig -x local -f <filename>`

