PROJECT=philcryer.com

DEV_DIR=public
DEV_URL=0.0.0.0
TMP_DIR=/tmp/new-site
PROD_DIR=/var/www/${PROJECT}
DATE_NOW=`date +'%Y-%m-%d.%H:%M'`
OLD_DIR=/tmp/${PROJECT}-old-${DATE_NOW}

all: $(TARGETS)

dev: all
	@echo "*** Beginning dev build of ${PROJECT} at $(DATE_NOW)"
	hugo --baseUrl=${DEV_URL} --buildDrafts=false --buildFuture=false --destination=${DEV_DIR} --disableRSS=true --disableSitemap=true --watch

prod: all
	@echo "*** Beginning prod deploy of ${PROJECT} at $(DATE_NOW)"
	if [ ! -d ${PROD_DIR} ]; then mkdir ${PROD_DIR}; fi
	hugo -d ${TMP_DIR}
	# TODO check if uesr can delete these files before we start on this func
	rm -rf ${PROD_DIR}/*
	mv -f ${TMP_DIR}/* ${PROD_DIR}

clean: all
	@echo "*** Cleaning directories: ${DEV_DIR} ${OLD_DIR}*"
	rm -rf ${DEV_DIR}
	rm -rf ${TMP_DIR}
	rm -rf ${OLD_DIR}*
