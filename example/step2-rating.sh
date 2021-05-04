#!/bin/sh

INPUT_PATH=/data/rating/input
OUTPUT_PATH=/data/rating/result
TRANSFER_PATH=/data/cdrpersistence/input

echo "========"
date
echo "-pgm--" 
echo $0
id
echo "# ls -alF /"
ls -alF /
echo "# ls -alF /data "
ls -alF /data
echo "--------"
echo "environment - JOB_DATA : ${JOB_DATA}"
echo "step2 : $0 " > ${INPUT_PATH}/${JOB_DATA}
mkdir -p ${OUTPUT_PATH} 2> /dev/null
echo "$0 : success" > ${OUTPUT_PATH}/${JOB_DATA}.result
mkdir -p ${TRANSFER_PATH} 2> /dev/null
echo "$0 passes to  cdrpersistence "  > ${TRANSFER_PATH}/${JOB_DATA}_C
echo "--------"
echo "# ls -al ${INPUT_PATH} "
ls -al ${INPUT_PATH}
echo "# cat  ${INPUT_PATH}/${JOB_DATA} "
cat  ${INPUT_PATH}/${JOB_DATA}
echo "# ls -al ${OUTPUT_PATH}"
ls -al ${OUTPUT_PATH}
echo "# cat ${OUTPUT_PATH}/${JOB_DATA}.result "
cat ${OUTPUT_PATH}/${JOB_DATA}.result
echo "# ls -al ${TRANSFER_PATH}"
ls -al ${TRANSFER_PATH}
echo"# cat ${TRANSFER_PATH}/${JOB_DATA}_C "
cat ${TRANSFER_PATH}/${JOB_DATA}_C
echo "########"

