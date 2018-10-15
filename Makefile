#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := raspicool-environment-sensor

include $(IDF_PATH)/make/project.mk


buildenv: 
	docker run --user `id -u`:`id -g` --rm -it -v $(IDF_PATH):/esp/esp-idf -v `pwd`:/esp/project espbuild
