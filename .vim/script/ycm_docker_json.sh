#!/bin/bash

echo $PWD

sudo chmod 755 compile_commands.json

sed -i "s#/root/ar9341#$PWD#g" compile_commands.json
