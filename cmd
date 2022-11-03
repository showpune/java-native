## native build
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli  --name simple-native --build-env BP_NATIVE_IMAGE=true BP_JVM_VERSION=17 BP_MAVEN_BUILD_ARGUMENTS="-Dmaven.test.skip=true -Ppre-native package" --build-cpu 2 --build-memory 10Gi  --builder native-builder  --source-path . --env TARGET="Native World"
                                
## Normal Build
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli --build-env BP_JVM_VERSION=17 --name simple  --source-path . --env TARGET="Normal World"
