DATADIR="rgbd_dataset_freiburg1_360"

docker run \
    --rm \
	--volume "${PWD}:/input-output:rw" \
	-it jjkka132/pngtoklg /bin/bash -c "/pngtoklg/png_to_klg/build/pngtoklg -w '/input-output/${DATADIR}/' -o '/input-output/360.klg'"
