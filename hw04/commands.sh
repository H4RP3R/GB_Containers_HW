#!/bin/bash

docker build -t notes .

# test
docker run -v $(pwd)/app_data/:/notes_app/data/ -it --rm --name notes_app notes python3 notes_app.py add -t "Feed the cat"
docker run -v $(pwd)/app_data/:/notes_app/data/ -it --rm --name notes_app notes python3 notes_app.py add -t "Do the chores"
docker run -v $(pwd)/app_data/:/notes_app/data/ -it --rm --name notes_app notes python3 notes_app.py add -t "test" -m "123"
docker run -v $(pwd)/app_data/:/notes_app/data/ -it --rm --name notes_app notes python3 notes_app.py list
