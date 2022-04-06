---
layout: page
title: Day 4 - Singularity containers
permalink: /day4/
---

A _container_ is an application bundled together with its dependencies and a
minimal operating system.  

Singularity is a container platform that is generally preferred over Docker
for HPC applications due to security concerns.  (Singularity runs container
images under the user's limited access permissions, whereas Docker allows
root access).

[Singularity User Guide](https://sylabs.io/guides/3.9/user-guide/)


### First steps

- Download a singularity image (`lolcow_latest.sif`):
```
singularity pull library://lolcow
```

- Enter a shell inside the container:
```
singularity shell lolcow_latest.sif 
```

- Run a container image:
```
singularity run lolcow_latest.sif
```

- Execute a command from inside the container:
```
singularity exec lolcow_latest.sif date
```

