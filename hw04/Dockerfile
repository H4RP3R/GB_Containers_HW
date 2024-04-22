FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y python3 &&\
    apt-get install -y git && \
    git clone https://github.com/H4RP3R/GB_Notes.git /notes_app
WORKDIR /notes_app
CMD [ "python3", "notes_app.py" ]