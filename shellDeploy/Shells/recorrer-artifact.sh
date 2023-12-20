#!/bin/bash
    clear
#Ejecucion 
# ./recorrer-artifact.sh  "listadoServicios.tmp" "/documentsterling/import/Release-1"

ListServicesToDeploy="$1"   # listadoServicios.tmp listadoServiciosRollback.tmp
remoteDirPath="$2"          # /documentsterling/import/Release-41


#Crear archivo
if [ -d $remoteDirPath/ ];then
	cd $remoteDirPath
	#
	
		#Imprime Resultado de Diff de Bitbucket
	echo "-----------------------------------------"
	echo "Listado de Componentes a Validar"
	echo "-----------------------------------------"
	echo "."

	echo "-----------------------------------------"
	echo " Validacion de Componentes"
	echo "-----------------------------------------"
  
	if [ $ListServicesToDeploy == "listadoServiciosRollback.tmp" ];then
		echo "Rollback"		
	else
		echo "comunes"
		/bin/sh $remoteDirPath/orquestador-deploy.sh "$remoteDirPath" 
	fi		 

else
	echo "-----------------------------------------"
	echo "No existe carpeta remota"
	exit 1;
fi