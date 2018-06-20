# MAVProxy container

## Relay local Seral device to UDP

For ```/dev/ttyUSB0```:

```bash
docker run --rm --device=/dev/ttyUSB0 --net=host -it asciich/mavproxy /bin/bash -c "mavproxy.py --master=/dev/ttyUSB0,57600 --out=udp:127.0.0.1:14550 --out=udp:127.0.0.1:14551"
```


For ```/dev/ttyAMA0```:

```bash
docker run --rm --device=/dev/ttyAMA0 --net=host -it asciich/mavproxy /bin/bash -c "mavproxy.py --master=/dev/ttyAMA0,57600 --out=udp:127.0.0.1:14550 --out=udp:127.0.0.1:14551"
```


## More information

* [MAVProxy installation manual](http://ardupilot.github.io/MAVProxy/html/getting_started/download_and_installation.html)
* [MAVProxy on pipy](https://pypi.org/project/MAVProxy/)
* [MAVProxy startup options](https://ardupilot.github.io/MAVProxy/html/getting_started/starting.html)