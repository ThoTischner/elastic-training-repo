# elastic-repo
A collection of datasets, docker-compose files, notes, and other training material about the Elastic stack.

----

## Table of Contents
* Clusters-to-go - Collection of docker files to spin up Elasticsearch clusters
* Datasets-to-go - Collection of datasets to populate your Elasticsearch clusters
* Exercises - Collection of exercises to practice for the Elastic Certified Engineer exam

## Vagrant setup
You can manage three plain centos7 machines via:
```
  #go to vagrant dir
  cd vagrant
  
  #start
  vagrant up

  #ssh to node
  vagrant ssh elastic-node-{1,2,3}

  #pause
  vagrant pause
  
  #cleanup
  vagrant destroy

  #reload vm config like memory size
  vagrant reload
```
