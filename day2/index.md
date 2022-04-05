---
layout: page
title: Day 2 - Scripting and cluster computing
permalink: /day2/
---

## Submitting jobs

- `qsub -cwd -o out.txt -e err.txt script.sh`
- environment and `module`
- debugging info in scripts:
    - `date`
    - `uname -a`
    - `$PATH`, `env`


## Shell scripting

[hello.sh](hello.sh)

```shell
{% include_relative hello.sh %}
```

[loops.sh](loops.sh)

```shell
{% include_relative loops.sh %}
```

[process_dir.sh](process_dir.sh)

```shell
{% include_relative process_dir.sh %}
```

## Python and wrapper scripts

[count_species.py](count_species.py)

```shell
{% include_relative count_species.py %}
```

[run_count_species.sh](run_count_species.sh)

```shell
{% include_relative run_count_species.sh %}
```


