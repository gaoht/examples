#!/bin/sh

image_name=registry.cn-zhangjiakou.aliyuncs.com/iamght/kubeflow/ner/preprocess
image_tag=latest

full_image_name=${image_name}:${image_tag}
base_image_tag=1.12.0-py3

cd "$(dirname "$0")" 

docker login -u gaoht1987@gmail.com -p '1q2w3e4r?' registry.cn-zhangjiakou.aliyuncs.com
docker build --build-arg BASE_IMAGE_TAG=${base_image_tag} -t "${full_image_name}" .
docker push "$full_image_name"
