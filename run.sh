#!/bin/bash

RESOLUTION=100
SAMPLINGS=128
OUT_DIR="./out"

mkdir -p ${OUT_DIR}
blender --background --python ./11_mesh_visualization.py -- ${OUT_DIR}/11_mesh_visualization.png ${RESOLUTION} ${SAMPLINGS}
