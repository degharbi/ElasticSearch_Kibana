#!/bin/bash

# Load CSV file 
echo 'Enter CSV file path to load into ElasticSearch' ; read Csvfile

# Elastic Search parameters
echo 'Enter your ip adress (ex: localhost)' ; read ip ;
echo 'Enter your port (ex: 9200)' ; read port
echo 'Enter elastic search index (ex: myindex)' ; read index
echo 'Enter elastic search type (ex: mytype)' ; read type
url='http://'$ip':'$port'/'$index'/'$type
echo 'Data will be loaded to :' $url

while read f1
do
   curl -XPOST $url -H "Content-Type: application/json" -u elastic:secret -d "{ \"$type\": \"$f1\" }"
done < $Csvfile

openlabs_nereid_webshop_elastic_search 3.4.0.5
Elastic seach powered full text search for Nereid Webshop
fio_nereid_webshop_elastic_search 4.0.0.1
Elastic seach powered full text search for Nereid Webshop
bottle-elastic 0.2.1
Elasticsearch integration for Bottle
