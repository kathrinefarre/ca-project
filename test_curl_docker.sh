docker build -t finkultur/ca-project:0.1 . && \
docker run -d -p 5000:5000 finkultur/ca-project:0.1 && \
sleep 4 && \
curl localhost:5000 &> /dev/null && \

if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi
