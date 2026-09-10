#!/bin/bash

# Create a new directory called bash_demo
mkdir bash_demo

cd bash_demo

# Created a new file called demo.txt and added the current date to it
echo "This file was created on $(date)" > demo.txt

echo "demo.txt created with current date."
echo "File 'demo.txt' created"

# Display the contents of demo.txt
cat demo.txt
