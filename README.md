```
$ git clone https://github.com/NTMan/podman-example.git

$ cd podman-example

$ podman build --tag bugreport:1.0 .

$ podman run  -v "$PWD/inside.ini":"/root/inside.ini":Z localhost/bugreport:1.0
```
