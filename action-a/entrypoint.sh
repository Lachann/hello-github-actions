#!/bin/sh -l

monccd -s /var/run/monccd.sock --cluster-only --hypervised -d &

MNCC="mncc -s /var/run/monccd.sock"
sleep 10
$MNCC login --email $MONCC_USERNAME --password $MONCC_PASSWORD
$MNCC cluster switch -m $MONCCODE
$MNCC load template.yaml
$MNCC update my-namespace/my-runnable
