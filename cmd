## native build
az spring app create --service zhiyongli-asc-e  --resource-group zhiyongli --name simple-2x-native
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli  --name simple-2x-native --build-env BP_NATIVE_IMAGE=true BP_MAVEN_BUILD_ARGUMENTS="-Dmaven.test.skip=true -Ppre-native package" --build-cpu 4 --build-memory 10Gi  --builder native-builder  --source-path . --env TARGET="Native World"
                                
## Normal Build
az spring app create --service zhiyongli-asc-e  --resource-group zhiyongli --name simple-2x
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli --name simple-2x  --source-path . --env TARGET="Normal World"