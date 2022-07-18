```
$ git clone https://github.com/NTMan/podman-test-sed.git

$ cd podman-test-sed

$ podman build --tag bug-sed:1.0 .

$ podman run  -v "$PWD/inside.ini":"/root/inside.ini":Z localhost/bug-sed:1.0
```
