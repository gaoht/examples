#!/bin/sh

BUCKET="amap-meta-3d"

echo "\nCopy component specifications to Google Cloud Storage"


ossutil cp preprocess/component.yaml oss://${BUCKET}/kubeflow/components/preprocess/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW
ossutil acl ch -u AllUsers:R gs://${BUCKET}/components/preprocess/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW

ossutil cp train/component.yaml oss://${BUCKET}/kubeflow/components/train/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW
ossutil acl ch -u AllUsers:R gs://${BUCKET}/components/train/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW

ossutil cp deploy/component.yaml oss://${BUCKET}/kubeflow/components/deploy/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW
ossutil acl ch -u AllUsers:R gs://${BUCKET}/components/deploy/component.yaml -i LTAI5tKhWZQjyGDX2FvMdcPu -k ZbHFmxWADeXgToIEykbhyFQVicnmsW