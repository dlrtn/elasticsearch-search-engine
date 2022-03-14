df -h
exit
ls
cd Elastic
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.16.2-linux-x86_64.tar.gz
ls
cd es ..
cd ..
mv es ..
ls
tar -xfv elasticsearch-7.16.2-linux-x86_64.tar.gz
tar -xvf elasticsearch-7.16.2-linux-x86_64.tar.gz
ls
mv elasticsearch-7.16.2 es
cd es
bin/elasticsearch-plugin install https://github.com/netcrazy/elasticsearch-jaso-analyzer/releases/download/v7.16.2/jaso-analyzer-plugin-7.16.2-plugin.zip
bin/elasticsearch
ls
bin/elasticsearch.yml
config/elasticsearch.yml
vi config/elasticsearch.yml
sudo sysctl -p
ls
cd Elastic
ls
cd es
bin/elasticsearch
vi config/elasticsearch.yml
bin/elasticsearch
vi config/elasticsearch.yml
bin/elasticsearch
vi config/elasticsearch.yml
bin/elasticsearch
vi /etc/hosts
sudo vi /etc/hosts
vi config/elasticsearch.yml
bin/elasticsearch]
bin/elasticsearch
ls
cd plugins
ls
elasticsearch-plugin install analysis-nori
cd ..
elasticsearch-plugin install analysis-nori
bin/elasticsearch-plugin install analysis-nori

bin/elasticsearch
ls
cd Elastic
ls
cd es
ls
cd ..
ls
cd es
ls
bin/elasticsearch
ls
cat /proc/meminfo
ls
cd bin
ls
cd ..
cd config
ls
vi jvm.options
cd ..
bin/elasticsearch
vi config/jvm.options
bin/elasticsearch
bin/elasticsearch -d
vi es.pid
rm es.pid
vi start.sh
ps -ef | grep elasticsearch
kill 29802
ps -ef | grep elasticsearch
kill 29916
ps -ef | grep elasticsearch
ls
mv start.sh ..
ls
mv start.sh es
ls
cd es
ls
vi stop.sh
echo 'bin/elasticsearch -d -p es.pid' > start.sh
echo 'kill 'cat es.pid'' > stop.sh
chomod 755 start.sh stop.sh
chmod 755 start.sh stop.sh
start.sh
./\start.sh
./start.sh
ps -ef | grep elasticsearh
ps -ef | grep elasticsearch
kill 30711
ls
cd Elastic
ls
cd ..
cd es
ls
./start.sh
./stop.sh
ls
ps -ef | grep elasticsearch
kill 31076
bin/elasticsearcxh
bin/elasticsearchj
bin/elasticsearch
ls
vi stop.sh
vi start.sh
$ echo 'bin/elasticsearch -d -p es.pid' > start.sh
$ echo 'kill `cat es.pid`' > stop.sh
echo 'bin/elasticsearch -d -p es.pid' > start.sh
echo 'kill `cat es.pid`' > stop.sh
start.sh
./start.sh
./stop.sh
./start.sh
ls
du -sh ./*
cd ./data
du -sh ./*
du -h
ls
cd nodes
ls
cd 0
ls
cd indices
ls
du -h
du -sh ./*
./fuG8PRZ-RdGwr6lIFEpn6w
cd ./fuG8PRZ-RdGwr6lIFEpn6w
ls
cd 0
ls
cd translog
ls
du -sh ./*
rm *.tlog
ls
cd ..
ls
cd ..
ls
rm *.tlog
du -sh ./*
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
wget https://artifacts.elastic.co/downloads/logstash/logstash-7.10.2-linux-x86_64.tar.gz
ls
wget =============================>] 351,170,815 5.22MB/s   in 68s
wegt https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.28.tar.gz
wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.28.tar.gz
ls
tar -xvf *.tar.gz
tar -xvf logstash-7.10.2-linux-x86_64.tar.gz
ls
tar -xvf mysql-connector-java-8.0.28.tar.gz
ls
mv logstash-7.10.2 ls
mv mysql-connector-java-8.0.28 mc
ls
rm -rf *.tar.gz
ls
cd ls
ls
cd config
ls
cd ..
ls
cd data
ls
mkdir dj_data
mkdir music_data
mkdir artist_data
cd ..
bin/logstash -f config/music.conf --path.data ./data/music_data
ls
cd ls
bin/logstash -f config/dj.conf --path.data ./data/dj_data
cd ..
ls
cd mc
pwd
cd .
cd ..
cd ls
ls
bin/logstash -f config/temp.conf
SELECT os.SONG_ID, os.SONG_TITLE, os.PLAY_TIME, os.MP_CK, os.AAC_CK, ss.ST_ID, s.ST_TITLE, s.THUMB, GROUP_CONCAT(os.ARTIST_ID) as artist, oa.ALBUM_ID
FROM indj_ai.OM_Song AS os
JOIN indj_ai.Station_Song AS ss
ON ss.SONG_ID = os.SONG_ID
INNER JOIN indj_ai.OM_Album AS oa
ON oa.ALBUM_ID = os.ALBUM_ID
JOIN indj_ai.Station AS s
ON s.ST_ID = ss.ST_ID
WHERE s.ENABLED = 1
AND s.ST_TYPE IN (1,2,3,4)
bin/logstash -f config/temp.conf
bin/logstash -f config/dj.conf --path.data ./data/dj_data
cd ls
bin/logstash -f config/artist.conf --path.data ./data/artist_data
ls
cd config
ls
bin/logstash -f config/t.conf
cd ..
bin/logstash -f config/t.conf
bin/logstash -f config/artist.conf --path.data ./data/artist_data
bin/logstash -f config/t.conf
bin/logstash -f config/artist.conf --path.data ./data/artist_data
ls
cd es
ls
start.sh
./start.sh
ps -ef | grep elasticsearch
ls
ps -ef | grep elasticsearch
kill 12474
ls
ps -ef | grep elasticsearch
bin/elasticseabin/elasticsearch
bin/elasticsearch
ls
bin/elasticsearch
ls
cd logs
ls
cd ..
ls
ps
ps -ef | grep elasticsearch
kill 30549
ls
ps -ef | grep elasticsearch
kill 11071
ps -ef | grep elasticsearch
bin/elasticsearch
ls
cd config
ls
vi jvm.options
cd ..
bin/elasticsearch
bin/elasticsearch-plugin install https://github.com/HowookJeong/elasticsearch-analysis-arirang/releases/download/7.10.2/elasticsearch-analysis-arirang-7.10.2.zip
ls
./start.sh
./stop.sh
./start.sh
ls
ls
cd es
ls
cat config/elasticsearch.yml
ls
cd ls
ls
cd config
ls
bin/logstash -f config/station.conf --path.data ./data/station_data
ls
cd ..
ls
cd data
ls
mkdir station_data
cd ..
bin/logstash -f config/station.conf --path.data ./data/station_data
./stop.s
ls
cd es
ls
./stop.sh
ls
history
history elasticsearch
ps -ef | grep elasticsearch
kill 1917
ls
ps -ef | grep elasticsearch
ls
vi config/elasticsearch.yml
ls
cd plugins
ls -la
history
ls
cd ..
ls
cat start.sh
cat stop.sh
bin/elasticsearch
./start.sh
ls
cd ..
cd ls
clear
./stop.sh
cd ..
cd es
./stop.sh
./start.sh
pwd
ls
cd config
ls
cd analysis
bin/logstash -f config/artist.conf --path.data ./data/artist_data
bin/logstash -f config/music.conf --path.data ./data/music_data
cd ..
cd ls
bin/logstash -f config/music.conf --path.data ./data/music_data
ps -ef | grep logstash
kill 10213
ps -ef | grep logstash
bin/logstash -f config/music.conf --path.data ./data/music_data
ls
cd es
ls
ps -ef grep | elasticsearch
ps -ef grep  elasticsearch
ps -ef | grep elasticsearch
clear
ls
cd ..
cd ls
ls
ps -ef | grep logstash
kill 24757
ps -ef | grep logstash
kill 17597
kill 19401
ps -ef | grep logstash
ls
cd
clear
cat /proc/meminfo | grep 'MemTotal'
ls
cd es
cat config/elasticsearch.yml
q
ls
sudo vi /etc/hosts
q
ls
cd config
ls
mkdir analsis
ls
cd ..
ls
cd data
ls
cd ..
cd config
ls
cd ..
cd logs
ls
du 
cd ..
ls
cd data
ls
cd ..
ls
cd c..
cd ..
ls
cd ls
ls
cd data
ls
cd ..
ls
clear
bin/logstash -f config/dj.conf --path.data ./data/dj_data
