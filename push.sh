#!/bin/bash

docker login
docker tag seurat:3.2.0 hisplan/seurat:3.2.0
docker push hisplan/seurat:3.2.0
