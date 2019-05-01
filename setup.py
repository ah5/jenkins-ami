#!/usr/bin/python

# ###############################################################
# Package imports
# ###############################################################

import os
import json

# ###############################################################
# Function Definitions
# ###############################################################

# Fn Defn get_key: Gets a user input if key defn does not exist
def get_key(data, key):
    if key not in data:
        data[key] = raw_input("Enter your %s : " % key)

# Fn Defn put_data: Dump JSON data to file
def put_data(data, outfilename):
    with open(outfilename, "w+") as outfile:
        json.dump(data, outfile, sort_keys=True, indent=2, separators=(',', ': '))
    outfile.close()

# Fn Defn get_data: Load JSON data from file
def get_data(infilename):
    with open(infilename, "r") as infile:
        data = json.load(infile)
        infile.close()
    return data

# ###############################################################
# Static values
# ###############################################################

aws_config_keys = [
    "aws_access_key", "aws_secret_key", "iam_instance_profile", "source_ami", "ssh_username",
    "vpc_id", "vpc_public_sg_id", "vpc_public_sn_id", "vpc_region"
]
json_filename = "templates/vars.json"

# ###############################################################
# Main
# ###############################################################

json_file_exists = os.path.isfile(json_filename)
json_data = get_data(json_filename) if json_file_exists else {}
for i in range(len(aws_config_keys)):
    get_key(json_data, aws_config_keys[i])
put_data(json_data, json_filename)
