## native build
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli  --name simple-native --build-env BP_NATIVE_IMAGE=true --build-cpu 2 --build-memory 10Gi  --builder native-builder  --source-path . --env TARGET="Native World"
                                
## Normal Build
az spring app deploy --service zhiyongli-asc-e  --resource-group zhiyongli --name simple  --source-path . --env TARGET="Normal World"