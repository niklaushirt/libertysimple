#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
#rm ./libertysimple-1.0.0.tgz

#REMOVE INDEX.YAML
rm ./index.yaml

#-----------------------------------------------------------------------------------------------------------------
#CREATE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
helm package libertysimple

#CREATE INDEX.YAML
helm repo index --url https://raw.githubusercontent.com/niklaushirt/libertysimple/master/charts/stable/repo/stable/ ./

#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES in charts
#-----------------------------------------------------------------------------------------------------------------
#rm ../stable/repo/stable/libertysimple-1.0.0.tgz

#REMOVE INDEX.YAML in charts
rm ../stable/repo/stable/index.yaml


#-----------------------------------------------------------------------------------------------------------------
#COPY PACKAGES
#-----------------------------------------------------------------------------------------------------------------

cp libertysimple-1.0.0.tgz ../stable/repo/stable/
cp libertysimple-1.1.0.tgz ../stable/repo/stable/

#COPY INDEX.YAML
cp index.yaml ../stable/repo/stable/index.yaml
