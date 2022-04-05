---
layout: page
title: Day 3 - Array jobs and pipelines
permalink: /day3/
---

## Array jobs

- `qsub -cwd -o out -e err -t 1-10 script.sh`
    - if `out`/`err` is an existing directory, output files placed there
- `SGE_TASK_ID` environment variable
- pipelines
- make


## A simple pipeline

[extract_species.py](extract_species.py)  
[find_cats.sh](find_cats.sh)  
[count_cats.sh](count_cats.sh)  
[get_sequence_length.sh](get_sequence_length.sh)  

[process_species.sh](process_species.sh)
```shell
{% include_relative process_species.sh %}
```

## Example of converting task id to filename

[process_file.sh](process_file.sh)
```shell
{% include_relative process_file.sh %}
```

## Using a Makefile to define the pipeline

[Makefile](Makefile)
```shell
{% include_relative Makefile %}
```

[process_species_2.sh](process_species_2.sh)
```shell
{% include_relative process_species_2.sh %}
```

