#!/bin/bash
# clear

#Varables de Orquestador"/Sterling/import" "
FolderArtifact="$1"          #/c/documentsterling/import/Release-41

#Ajustar permisos de carpeta Artifacts
#chmod -R 740 $VarsFolderRemoteNextTag

echo "FolderArtifact: [$FolderArtifact] "

cd $FolderArtifact
#Inicia Proceso de Despliegue
echo '***********************************'
echo 'Orquestador Despliegue STERLING'
echo '***********************************'
ls -ltr
