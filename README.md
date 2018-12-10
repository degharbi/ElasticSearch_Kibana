# ElasticSearch_Kibana

## Setup docker images for Elasticsearch and Kibana
docker pull elasticsearch kibana 
docker network create somenetwork
docker run -d --name kibana --net somenetwork -p 5601:5601 kibana:tag
docker run -d --name elasticsearch --net somenetwork -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:tag

## Load csv into elasticsearch
