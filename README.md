DCMI utilities on Docker
=====

Basic functionality to load the correct libraries and tools to perform
DCMI/IPMI tasks. Tested against OpenCompute nodes.

To build the docker image:
```
  # clone repo
  cd dockerfile-dcmi
  docker build -t dcmi
```

#### Example uses:

Check power status:

`docker run -it dcmi /s/pub/dcmitool chassis power status -H <ipmihost> -U <userid> -P <password>`

Hard reset power of host:

`docker run -it dcmi /s/pub/dcmitool chassis power reset -H <ipmihost> -U <userid> -P <password>`

Attach to serial console:

`docker run -it dcmi /s/pub/dcmitool sol activate -H <ipmihost> -U <userid> -P <password>`
