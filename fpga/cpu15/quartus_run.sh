#!/bin/bash
project=cpu15

quartus_map --read_settings_files=on --write_settings_files=off $project -c $project
quartus_fit --read_settings_files=off --write_settings_files=off $project -c $project 
quartus_asm --read_settings_files=off --write_settings_files=off $project -c $project 
quartus_sta $project -c $project
