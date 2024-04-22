FROM alpine
RUN apk update && \
    apk add python3 &&\
    apk add git && \
    git clone https://github.com/H4RP3R/GB_Notes.git /notes_app && \
    rm -rf /var/cache/apk/* && \
    rm -rf rm .git/*
WORKDIR /notes_app
CMD [ "python3", "notes_app.py" ]
