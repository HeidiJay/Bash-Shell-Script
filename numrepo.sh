#! /bin/bash
# Automation for retrieving a list of my repositories and commitments

USER=HeidiJay; curl "https://api.github.com/HeidiJay/$USER/repos" | grep -o 'git@github.com:HeidiJay/'