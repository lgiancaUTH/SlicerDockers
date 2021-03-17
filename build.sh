#!/bin/bash

VERSION="4.11.20200930"

sudo docker build --build-arg VERSION=${VERSION} -t lgianca/base-sl:$VERSION base
sudo docker build --build-arg VERSION=${VERSION} -t lgianca/x11-sl:$VERSION x11
sudo docker build --build-arg VERSION=${VERSION} -t lgianca/slicer:$VERSION slicer

# SLICER_MORPH_EXTS="MarkupsToModel Auto3dgm SegmentEditorExtraEffects Sandbox SlicerIGT RawImageGuess SlicerDcm2nii SurfaceWrapSolidify SlicerMorph"

# docker build \
#   --build-arg VERSION=${VERSION} --build-arg SLICER_EXTS="${SLICER_MORPH_EXTS}" \
#   -t stevepieper/slicer-morph:$VERSION slicer-plus

# SLICER_DMRI_EXTS="ukftractography SlicerDMRI"

# docker build \
#   --build-arg VERSION=${VERSION} --build-arg SLICER_EXTS="${SLICER_DMRI_EXTS}" \
#   -t stevepieper/slicer-dmri:$VERSION slicer-plus

# docker build --build-arg VERSION=${VERSION} -t stevepieper/slicer-dev:$VERSION slicer-dev


# docker build -t stevepieper/slicer3:$VERSION slicer3
# docker build --build-arg VERSION=${VERSION} --no-cache -t stevepieper/slicer-chronicle:$VERSION slicer-chronicle

