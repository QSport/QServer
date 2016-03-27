#! /bin/sh

docker run --rm -v $(pwd)/qserver:/qsport/qserver -i -t -p 8000:8000 qserver-image $@
