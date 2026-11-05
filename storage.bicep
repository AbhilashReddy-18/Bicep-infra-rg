param storageAccountName string = 'nimbus'

@description('The location of the storage account.')
param location string = 'East US'

@description('The SKU name for the storage account.')
param skuName string = 'Standard_LRS'

@allowed([
    'dev'
    'uat'
    'prod'
])
param environment string = 'dev'

var tags = {
env: environment
Location: location
}

var storageName = '${storageAccountName}${environment}${uniqueString(resourceGroup().id)}'


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageName
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  tags: tags
  properties: {
    accessTier: 'Cool'
  }
}
