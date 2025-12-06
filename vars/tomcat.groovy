def call(severname,artifact_name){
  echo "sshPublisher(publishers: [sshPublisherDesc(configName: ${servername}, transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'target', sourceFiles: 'target/${artifact_name}.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])"
}
