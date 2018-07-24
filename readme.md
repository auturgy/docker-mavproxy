# MAVProxy container

## Relay local Seral device to UDP

For ```/dev/ttyUSB0```:

```bash
docker run --rm --device=/dev/ttyUSB0 -v $(pwd):/var/log/mavproxy/ --net=host -it asciich/mavproxy /bin/bash -c "run_mavproxy --master=/dev/ttyUSB0,57600"
```


For ```/dev/ttyAMA0```:

```bash
docker run --rm --device=/dev/ttyAMA0 -v $(pwd)://var/log/mavproxy/ --net=host -it asciich/mavproxy /bin/bash -c "run_mavproxy --master=/dev/ttyAMA0,57600"
```


## More information

* [MAVProxy installation manual](http://ardupilot.github.io/MAVProxy/html/getting_started/download_and_installation.html)
* [MAVProxy on pipy](https://pypi.org/project/MAVProxy/)
* [MAVProxy startup options](https://ardupilot.github.io/MAVProxy/html/getting_started/starting.html)