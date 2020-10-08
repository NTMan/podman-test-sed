$ podman build --tag bugreport:1.0 .
STEP 1: FROM fedora:33
STEP 2: COPY config/inside.ini /root/inside.ini
--> Using cache 1ae7f139fb78b5bfd9470293b1e39c9d514c6a3957443fe245a1eab9645a66cc
--> 1ae7f139fb7
STEP 3: ENTRYPOINT sed -i "s/#foo/value1/g" /root/inside.ini
--> Using cache 41c47443237ccc02d7e56f67b43e00b4ff200132ed3d7bfc613b6a7d5dc75106
STEP 4: COMMIT bugreport:1.0
--> 41c47443237
41c47443237ccc02d7e56f67b43e00b4ff200132ed3d7bfc613b6a7d5dc75106

$ podman run  -v "/home/mikhail/stend/bugreport/inside.ini":"/root/inside.ini":Z localhost/bugreport:1.0

Where  `/home/mikhail/stend/bugreport` is the path when located this repo.
