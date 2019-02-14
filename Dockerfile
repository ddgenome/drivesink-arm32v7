FROM resin/rpi-raspbian:jessie

MAINTAINER David Dooling <dooling@gmail.com>

RUN apt-get update && apt-get install -y \
        python python-pip python-requests \
        trickle \
    && rm -rf /var/lib/apt/lists/*

RUN pip install requests-toolbelt

RUN curl -s -L https://raw.githubusercontent.com/caseymrm/drivesink/master/drivesink.py | sed 's/	/        /g' > drivesink.py

ENTRYPOINT ["python", "drivesink.py"]
