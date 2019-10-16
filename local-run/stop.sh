kill -9 $(lsof -t -i:27017 -sTCP:LISTEN)
kill -9 $(lsof -t -i:27018 -sTCP:LISTEN)
kill -9 $(lsof -t -i:27019 -sTCP:LISTEN)
