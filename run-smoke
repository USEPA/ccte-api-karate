#!/bin/bash
java -jar karate-1.4.1.jar -t @smoke -e ctx-local-dev ccte-api

#this is an example run file
#multiple tags can be used at the same time -t @tag1 -t @tag2 (this format implies operator AND)
#available tags: (bioactivity, chemical, exposure, hazard, html, all) (smoke, regression, contracts, business, security, cors)
#
#while you can select api by tag (bioactivity,chemical,etc) you can also narrow it down by directory to test specific files
#example: ccte-api/bioactivity/bioactivity-data/bioactivity-data.feature
