{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Lambda
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Lambda where

import Data.Proxy
import Network.AWS.Lambda
import Test.AWS.Fixture
import Test.AWS.Lambda.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteAlias $
--             deleteAlias
--
--         , requestPutFunctionCodeSigningConfig $
--             putFunctionCodeSigningConfig
--
--         , requestGetLayerVersionPolicy $
--             getLayerVersionPolicy
--
--         , requestUpdateAlias $
--             updateAlias
--
--         , requestGetFunctionConfiguration $
--             getFunctionConfiguration
--
--         , requestUpdateEventSourceMapping $
--             updateEventSourceMapping
--
--         , requestGetFunction $
--             getFunction
--
--         , requestListEventSourceMappings $
--             listEventSourceMappings
--
--         , requestDeleteEventSourceMapping $
--             deleteEventSourceMapping
--
--         , requestGetLayerVersionByARN $
--             getLayerVersionByARN
--
--         , requestGetFunctionConcurrency $
--             getFunctionConcurrency
--
--         , requestCreateEventSourceMapping $
--             createEventSourceMapping
--
--         , requestDeleteFunctionConcurrency $
--             deleteFunctionConcurrency
--
--         , requestListProvisionedConcurrencyConfigs $
--             listProvisionedConcurrencyConfigs
--
--         , requestDeleteProvisionedConcurrencyConfig $
--             deleteProvisionedConcurrencyConfig
--
--         , requestUpdateFunctionCode $
--             updateFunctionCode
--
--         , requestUpdateFunctionConfiguration $
--             updateFunctionConfiguration
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListFunctions $
--             listFunctions
--
--         , requestListLayerVersions $
--             listLayerVersions
--
--         , requestInvoke $
--             invoke
--
--         , requestDeleteLayerVersion $
--             deleteLayerVersion
--
--         , requestCreateCodeSigningConfig $
--             createCodeSigningConfig
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetAlias $
--             getAlias
--
--         , requestDeleteCodeSigningConfig $
--             deleteCodeSigningConfig
--
--         , requestUpdateCodeSigningConfig $
--             updateCodeSigningConfig
--
--         , requestListCodeSigningConfigs $
--             listCodeSigningConfigs
--
--         , requestDeleteFunctionEventInvokeConfig $
--             deleteFunctionEventInvokeConfig
--
--         , requestUpdateFunctionEventInvokeConfig $
--             updateFunctionEventInvokeConfig
--
--         , requestListFunctionEventInvokeConfigs $
--             listFunctionEventInvokeConfigs
--
--         , requestListVersionsByFunction $
--             listVersionsByFunction
--
--         , requestAddPermission $
--             addPermission
--
--         , requestGetLayerVersion $
--             getLayerVersion
--
--         , requestDeleteFunctionCodeSigningConfig $
--             deleteFunctionCodeSigningConfig
--
--         , requestListFunctionsByCodeSigningConfig $
--             listFunctionsByCodeSigningConfig
--
--         , requestRemoveLayerVersionPermission $
--             removeLayerVersionPermission
--
--         , requestGetProvisionedConcurrencyConfig $
--             getProvisionedConcurrencyConfig
--
--         , requestCreateFunction $
--             createFunction
--
--         , requestPutFunctionConcurrency $
--             putFunctionConcurrency
--
--         , requestGetPolicy $
--             getPolicy
--
--         , requestPutProvisionedConcurrencyConfig $
--             putProvisionedConcurrencyConfig
--
--         , requestAddLayerVersionPermission $
--             addLayerVersionPermission
--
--         , requestPublishVersion $
--             publishVersion
--
--         , requestDeleteFunction $
--             deleteFunction
--
--         , requestGetEventSourceMapping $
--             getEventSourceMapping
--
--         , requestListTags $
--             listTags
--
--         , requestPublishLayerVersion $
--             publishLayerVersion
--
--         , requestGetFunctionCodeSigningConfig $
--             getFunctionCodeSigningConfig
--
--         , requestPutFunctionEventInvokeConfig $
--             putFunctionEventInvokeConfig
--
--         , requestRemovePermission $
--             removePermission
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestGetCodeSigningConfig $
--             getCodeSigningConfig
--
--         , requestGetFunctionEventInvokeConfig $
--             getFunctionEventInvokeConfig
--
--         , requestListLayers $
--             listLayers
--
--         , requestListAliases $
--             listAliases
--
--         , requestGetAccountSettings $
--             getAccountSettings
--
--           ]

--     , testGroup "response"
--         [ responseDeleteAlias $
--             deleteAliasResponse
--
--         , responsePutFunctionCodeSigningConfig $
--             putFunctionCodeSigningConfigResponse
--
--         , responseGetLayerVersionPolicy $
--             getLayerVersionPolicyResponse
--
--         , responseUpdateAlias $
--             aliasConfiguration
--
--         , responseGetFunctionConfiguration $
--             functionConfiguration
--
--         , responseUpdateEventSourceMapping $
--             eventSourceMappingConfiguration
--
--         , responseGetFunction $
--             getFunctionResponse
--
--         , responseListEventSourceMappings $
--             listEventSourceMappingsResponse
--
--         , responseDeleteEventSourceMapping $
--             eventSourceMappingConfiguration
--
--         , responseGetLayerVersionByARN $
--             getLayerVersionResponse
--
--         , responseGetFunctionConcurrency $
--             getFunctionConcurrencyResponse
--
--         , responseCreateEventSourceMapping $
--             eventSourceMappingConfiguration
--
--         , responseDeleteFunctionConcurrency $
--             deleteFunctionConcurrencyResponse
--
--         , responseListProvisionedConcurrencyConfigs $
--             listProvisionedConcurrencyConfigsResponse
--
--         , responseDeleteProvisionedConcurrencyConfig $
--             deleteProvisionedConcurrencyConfigResponse
--
--         , responseUpdateFunctionCode $
--             functionConfiguration
--
--         , responseUpdateFunctionConfiguration $
--             functionConfiguration
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListFunctions $
--             listFunctionsResponse
--
--         , responseListLayerVersions $
--             listLayerVersionsResponse
--
--         , responseInvoke $
--             invokeResponse
--
--         , responseDeleteLayerVersion $
--             deleteLayerVersionResponse
--
--         , responseCreateCodeSigningConfig $
--             createCodeSigningConfigResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetAlias $
--             aliasConfiguration
--
--         , responseDeleteCodeSigningConfig $
--             deleteCodeSigningConfigResponse
--
--         , responseUpdateCodeSigningConfig $
--             updateCodeSigningConfigResponse
--
--         , responseListCodeSigningConfigs $
--             listCodeSigningConfigsResponse
--
--         , responseDeleteFunctionEventInvokeConfig $
--             deleteFunctionEventInvokeConfigResponse
--
--         , responseUpdateFunctionEventInvokeConfig $
--             functionEventInvokeConfig
--
--         , responseListFunctionEventInvokeConfigs $
--             listFunctionEventInvokeConfigsResponse
--
--         , responseListVersionsByFunction $
--             listVersionsByFunctionResponse
--
--         , responseAddPermission $
--             addPermissionResponse
--
--         , responseGetLayerVersion $
--             getLayerVersionResponse
--
--         , responseDeleteFunctionCodeSigningConfig $
--             deleteFunctionCodeSigningConfigResponse
--
--         , responseListFunctionsByCodeSigningConfig $
--             listFunctionsByCodeSigningConfigResponse
--
--         , responseRemoveLayerVersionPermission $
--             removeLayerVersionPermissionResponse
--
--         , responseGetProvisionedConcurrencyConfig $
--             getProvisionedConcurrencyConfigResponse
--
--         , responseCreateFunction $
--             functionConfiguration
--
--         , responsePutFunctionConcurrency $
--             concurrency
--
--         , responseGetPolicy $
--             getPolicyResponse
--
--         , responsePutProvisionedConcurrencyConfig $
--             putProvisionedConcurrencyConfigResponse
--
--         , responseAddLayerVersionPermission $
--             addLayerVersionPermissionResponse
--
--         , responsePublishVersion $
--             functionConfiguration
--
--         , responseDeleteFunction $
--             deleteFunctionResponse
--
--         , responseGetEventSourceMapping $
--             eventSourceMappingConfiguration
--
--         , responseListTags $
--             listTagsResponse
--
--         , responsePublishLayerVersion $
--             publishLayerVersionResponse
--
--         , responseGetFunctionCodeSigningConfig $
--             getFunctionCodeSigningConfigResponse
--
--         , responsePutFunctionEventInvokeConfig $
--             functionEventInvokeConfig
--
--         , responseRemovePermission $
--             removePermissionResponse
--
--         , responseCreateAlias $
--             aliasConfiguration
--
--         , responseGetCodeSigningConfig $
--             getCodeSigningConfigResponse
--
--         , responseGetFunctionEventInvokeConfig $
--             functionEventInvokeConfig
--
--         , responseListLayers $
--             listLayersResponse
--
--         , responseListAliases $
--             listAliasesResponse
--
--         , responseGetAccountSettings $
--             getAccountSettingsResponse
--
--           ]
--     ]

-- Requests

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias =
  req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestPutFunctionCodeSigningConfig :: PutFunctionCodeSigningConfig -> TestTree
requestPutFunctionCodeSigningConfig =
  req
    "PutFunctionCodeSigningConfig"
    "fixture/PutFunctionCodeSigningConfig.yaml"

requestGetLayerVersionPolicy :: GetLayerVersionPolicy -> TestTree
requestGetLayerVersionPolicy =
  req
    "GetLayerVersionPolicy"
    "fixture/GetLayerVersionPolicy.yaml"

requestUpdateAlias :: UpdateAlias -> TestTree
requestUpdateAlias =
  req
    "UpdateAlias"
    "fixture/UpdateAlias.yaml"

requestGetFunctionConfiguration :: GetFunctionConfiguration -> TestTree
requestGetFunctionConfiguration =
  req
    "GetFunctionConfiguration"
    "fixture/GetFunctionConfiguration.yaml"

requestUpdateEventSourceMapping :: UpdateEventSourceMapping -> TestTree
requestUpdateEventSourceMapping =
  req
    "UpdateEventSourceMapping"
    "fixture/UpdateEventSourceMapping.yaml"

requestGetFunction :: GetFunction -> TestTree
requestGetFunction =
  req
    "GetFunction"
    "fixture/GetFunction.yaml"

requestListEventSourceMappings :: ListEventSourceMappings -> TestTree
requestListEventSourceMappings =
  req
    "ListEventSourceMappings"
    "fixture/ListEventSourceMappings.yaml"

requestDeleteEventSourceMapping :: DeleteEventSourceMapping -> TestTree
requestDeleteEventSourceMapping =
  req
    "DeleteEventSourceMapping"
    "fixture/DeleteEventSourceMapping.yaml"

requestGetLayerVersionByARN :: GetLayerVersionByARN -> TestTree
requestGetLayerVersionByARN =
  req
    "GetLayerVersionByARN"
    "fixture/GetLayerVersionByARN.yaml"

requestGetFunctionConcurrency :: GetFunctionConcurrency -> TestTree
requestGetFunctionConcurrency =
  req
    "GetFunctionConcurrency"
    "fixture/GetFunctionConcurrency.yaml"

requestCreateEventSourceMapping :: CreateEventSourceMapping -> TestTree
requestCreateEventSourceMapping =
  req
    "CreateEventSourceMapping"
    "fixture/CreateEventSourceMapping.yaml"

requestDeleteFunctionConcurrency :: DeleteFunctionConcurrency -> TestTree
requestDeleteFunctionConcurrency =
  req
    "DeleteFunctionConcurrency"
    "fixture/DeleteFunctionConcurrency.yaml"

requestListProvisionedConcurrencyConfigs :: ListProvisionedConcurrencyConfigs -> TestTree
requestListProvisionedConcurrencyConfigs =
  req
    "ListProvisionedConcurrencyConfigs"
    "fixture/ListProvisionedConcurrencyConfigs.yaml"

requestDeleteProvisionedConcurrencyConfig :: DeleteProvisionedConcurrencyConfig -> TestTree
requestDeleteProvisionedConcurrencyConfig =
  req
    "DeleteProvisionedConcurrencyConfig"
    "fixture/DeleteProvisionedConcurrencyConfig.yaml"

requestUpdateFunctionCode :: UpdateFunctionCode -> TestTree
requestUpdateFunctionCode =
  req
    "UpdateFunctionCode"
    "fixture/UpdateFunctionCode.yaml"

requestUpdateFunctionConfiguration :: UpdateFunctionConfiguration -> TestTree
requestUpdateFunctionConfiguration =
  req
    "UpdateFunctionConfiguration"
    "fixture/UpdateFunctionConfiguration.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListFunctions :: ListFunctions -> TestTree
requestListFunctions =
  req
    "ListFunctions"
    "fixture/ListFunctions.yaml"

requestListLayerVersions :: ListLayerVersions -> TestTree
requestListLayerVersions =
  req
    "ListLayerVersions"
    "fixture/ListLayerVersions.yaml"

requestInvoke :: Invoke -> TestTree
requestInvoke =
  req
    "Invoke"
    "fixture/Invoke.yaml"

requestDeleteLayerVersion :: DeleteLayerVersion -> TestTree
requestDeleteLayerVersion =
  req
    "DeleteLayerVersion"
    "fixture/DeleteLayerVersion.yaml"

requestCreateCodeSigningConfig :: CreateCodeSigningConfig -> TestTree
requestCreateCodeSigningConfig =
  req
    "CreateCodeSigningConfig"
    "fixture/CreateCodeSigningConfig.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetAlias :: GetAlias -> TestTree
requestGetAlias =
  req
    "GetAlias"
    "fixture/GetAlias.yaml"

requestDeleteCodeSigningConfig :: DeleteCodeSigningConfig -> TestTree
requestDeleteCodeSigningConfig =
  req
    "DeleteCodeSigningConfig"
    "fixture/DeleteCodeSigningConfig.yaml"

requestUpdateCodeSigningConfig :: UpdateCodeSigningConfig -> TestTree
requestUpdateCodeSigningConfig =
  req
    "UpdateCodeSigningConfig"
    "fixture/UpdateCodeSigningConfig.yaml"

requestListCodeSigningConfigs :: ListCodeSigningConfigs -> TestTree
requestListCodeSigningConfigs =
  req
    "ListCodeSigningConfigs"
    "fixture/ListCodeSigningConfigs.yaml"

requestDeleteFunctionEventInvokeConfig :: DeleteFunctionEventInvokeConfig -> TestTree
requestDeleteFunctionEventInvokeConfig =
  req
    "DeleteFunctionEventInvokeConfig"
    "fixture/DeleteFunctionEventInvokeConfig.yaml"

requestUpdateFunctionEventInvokeConfig :: UpdateFunctionEventInvokeConfig -> TestTree
requestUpdateFunctionEventInvokeConfig =
  req
    "UpdateFunctionEventInvokeConfig"
    "fixture/UpdateFunctionEventInvokeConfig.yaml"

requestListFunctionEventInvokeConfigs :: ListFunctionEventInvokeConfigs -> TestTree
requestListFunctionEventInvokeConfigs =
  req
    "ListFunctionEventInvokeConfigs"
    "fixture/ListFunctionEventInvokeConfigs.yaml"

requestListVersionsByFunction :: ListVersionsByFunction -> TestTree
requestListVersionsByFunction =
  req
    "ListVersionsByFunction"
    "fixture/ListVersionsByFunction.yaml"

requestAddPermission :: AddPermission -> TestTree
requestAddPermission =
  req
    "AddPermission"
    "fixture/AddPermission.yaml"

requestGetLayerVersion :: GetLayerVersion -> TestTree
requestGetLayerVersion =
  req
    "GetLayerVersion"
    "fixture/GetLayerVersion.yaml"

requestDeleteFunctionCodeSigningConfig :: DeleteFunctionCodeSigningConfig -> TestTree
requestDeleteFunctionCodeSigningConfig =
  req
    "DeleteFunctionCodeSigningConfig"
    "fixture/DeleteFunctionCodeSigningConfig.yaml"

requestListFunctionsByCodeSigningConfig :: ListFunctionsByCodeSigningConfig -> TestTree
requestListFunctionsByCodeSigningConfig =
  req
    "ListFunctionsByCodeSigningConfig"
    "fixture/ListFunctionsByCodeSigningConfig.yaml"

requestRemoveLayerVersionPermission :: RemoveLayerVersionPermission -> TestTree
requestRemoveLayerVersionPermission =
  req
    "RemoveLayerVersionPermission"
    "fixture/RemoveLayerVersionPermission.yaml"

requestGetProvisionedConcurrencyConfig :: GetProvisionedConcurrencyConfig -> TestTree
requestGetProvisionedConcurrencyConfig =
  req
    "GetProvisionedConcurrencyConfig"
    "fixture/GetProvisionedConcurrencyConfig.yaml"

requestCreateFunction :: CreateFunction -> TestTree
requestCreateFunction =
  req
    "CreateFunction"
    "fixture/CreateFunction.yaml"

requestPutFunctionConcurrency :: PutFunctionConcurrency -> TestTree
requestPutFunctionConcurrency =
  req
    "PutFunctionConcurrency"
    "fixture/PutFunctionConcurrency.yaml"

requestGetPolicy :: GetPolicy -> TestTree
requestGetPolicy =
  req
    "GetPolicy"
    "fixture/GetPolicy.yaml"

requestPutProvisionedConcurrencyConfig :: PutProvisionedConcurrencyConfig -> TestTree
requestPutProvisionedConcurrencyConfig =
  req
    "PutProvisionedConcurrencyConfig"
    "fixture/PutProvisionedConcurrencyConfig.yaml"

requestAddLayerVersionPermission :: AddLayerVersionPermission -> TestTree
requestAddLayerVersionPermission =
  req
    "AddLayerVersionPermission"
    "fixture/AddLayerVersionPermission.yaml"

requestPublishVersion :: PublishVersion -> TestTree
requestPublishVersion =
  req
    "PublishVersion"
    "fixture/PublishVersion.yaml"

requestDeleteFunction :: DeleteFunction -> TestTree
requestDeleteFunction =
  req
    "DeleteFunction"
    "fixture/DeleteFunction.yaml"

requestGetEventSourceMapping :: GetEventSourceMapping -> TestTree
requestGetEventSourceMapping =
  req
    "GetEventSourceMapping"
    "fixture/GetEventSourceMapping.yaml"

requestListTags :: ListTags -> TestTree
requestListTags =
  req
    "ListTags"
    "fixture/ListTags.yaml"

requestPublishLayerVersion :: PublishLayerVersion -> TestTree
requestPublishLayerVersion =
  req
    "PublishLayerVersion"
    "fixture/PublishLayerVersion.yaml"

requestGetFunctionCodeSigningConfig :: GetFunctionCodeSigningConfig -> TestTree
requestGetFunctionCodeSigningConfig =
  req
    "GetFunctionCodeSigningConfig"
    "fixture/GetFunctionCodeSigningConfig.yaml"

requestPutFunctionEventInvokeConfig :: PutFunctionEventInvokeConfig -> TestTree
requestPutFunctionEventInvokeConfig =
  req
    "PutFunctionEventInvokeConfig"
    "fixture/PutFunctionEventInvokeConfig.yaml"

requestRemovePermission :: RemovePermission -> TestTree
requestRemovePermission =
  req
    "RemovePermission"
    "fixture/RemovePermission.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestGetCodeSigningConfig :: GetCodeSigningConfig -> TestTree
requestGetCodeSigningConfig =
  req
    "GetCodeSigningConfig"
    "fixture/GetCodeSigningConfig.yaml"

requestGetFunctionEventInvokeConfig :: GetFunctionEventInvokeConfig -> TestTree
requestGetFunctionEventInvokeConfig =
  req
    "GetFunctionEventInvokeConfig"
    "fixture/GetFunctionEventInvokeConfig.yaml"

requestListLayers :: ListLayers -> TestTree
requestListLayers =
  req
    "ListLayers"
    "fixture/ListLayers.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases =
  req
    "ListAliases"
    "fixture/ListAliases.yaml"

requestGetAccountSettings :: GetAccountSettings -> TestTree
requestGetAccountSettings =
  req
    "GetAccountSettings"
    "fixture/GetAccountSettings.yaml"

-- Responses

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias =
  res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    lambda
    (Proxy :: Proxy DeleteAlias)

responsePutFunctionCodeSigningConfig :: PutFunctionCodeSigningConfigResponse -> TestTree
responsePutFunctionCodeSigningConfig =
  res
    "PutFunctionCodeSigningConfigResponse"
    "fixture/PutFunctionCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy PutFunctionCodeSigningConfig)

responseGetLayerVersionPolicy :: GetLayerVersionPolicyResponse -> TestTree
responseGetLayerVersionPolicy =
  res
    "GetLayerVersionPolicyResponse"
    "fixture/GetLayerVersionPolicyResponse.proto"
    lambda
    (Proxy :: Proxy GetLayerVersionPolicy)

responseUpdateAlias :: AliasConfiguration -> TestTree
responseUpdateAlias =
  res
    "UpdateAliasResponse"
    "fixture/UpdateAliasResponse.proto"
    lambda
    (Proxy :: Proxy UpdateAlias)

responseGetFunctionConfiguration :: FunctionConfiguration -> TestTree
responseGetFunctionConfiguration =
  res
    "GetFunctionConfigurationResponse"
    "fixture/GetFunctionConfigurationResponse.proto"
    lambda
    (Proxy :: Proxy GetFunctionConfiguration)

responseUpdateEventSourceMapping :: EventSourceMappingConfiguration -> TestTree
responseUpdateEventSourceMapping =
  res
    "UpdateEventSourceMappingResponse"
    "fixture/UpdateEventSourceMappingResponse.proto"
    lambda
    (Proxy :: Proxy UpdateEventSourceMapping)

responseGetFunction :: GetFunctionResponse -> TestTree
responseGetFunction =
  res
    "GetFunctionResponse"
    "fixture/GetFunctionResponse.proto"
    lambda
    (Proxy :: Proxy GetFunction)

responseListEventSourceMappings :: ListEventSourceMappingsResponse -> TestTree
responseListEventSourceMappings =
  res
    "ListEventSourceMappingsResponse"
    "fixture/ListEventSourceMappingsResponse.proto"
    lambda
    (Proxy :: Proxy ListEventSourceMappings)

responseDeleteEventSourceMapping :: EventSourceMappingConfiguration -> TestTree
responseDeleteEventSourceMapping =
  res
    "DeleteEventSourceMappingResponse"
    "fixture/DeleteEventSourceMappingResponse.proto"
    lambda
    (Proxy :: Proxy DeleteEventSourceMapping)

responseGetLayerVersionByARN :: GetLayerVersionResponse -> TestTree
responseGetLayerVersionByARN =
  res
    "GetLayerVersionByARNResponse"
    "fixture/GetLayerVersionByARNResponse.proto"
    lambda
    (Proxy :: Proxy GetLayerVersionByARN)

responseGetFunctionConcurrency :: GetFunctionConcurrencyResponse -> TestTree
responseGetFunctionConcurrency =
  res
    "GetFunctionConcurrencyResponse"
    "fixture/GetFunctionConcurrencyResponse.proto"
    lambda
    (Proxy :: Proxy GetFunctionConcurrency)

responseCreateEventSourceMapping :: EventSourceMappingConfiguration -> TestTree
responseCreateEventSourceMapping =
  res
    "CreateEventSourceMappingResponse"
    "fixture/CreateEventSourceMappingResponse.proto"
    lambda
    (Proxy :: Proxy CreateEventSourceMapping)

responseDeleteFunctionConcurrency :: DeleteFunctionConcurrencyResponse -> TestTree
responseDeleteFunctionConcurrency =
  res
    "DeleteFunctionConcurrencyResponse"
    "fixture/DeleteFunctionConcurrencyResponse.proto"
    lambda
    (Proxy :: Proxy DeleteFunctionConcurrency)

responseListProvisionedConcurrencyConfigs :: ListProvisionedConcurrencyConfigsResponse -> TestTree
responseListProvisionedConcurrencyConfigs =
  res
    "ListProvisionedConcurrencyConfigsResponse"
    "fixture/ListProvisionedConcurrencyConfigsResponse.proto"
    lambda
    (Proxy :: Proxy ListProvisionedConcurrencyConfigs)

responseDeleteProvisionedConcurrencyConfig :: DeleteProvisionedConcurrencyConfigResponse -> TestTree
responseDeleteProvisionedConcurrencyConfig =
  res
    "DeleteProvisionedConcurrencyConfigResponse"
    "fixture/DeleteProvisionedConcurrencyConfigResponse.proto"
    lambda
    (Proxy :: Proxy DeleteProvisionedConcurrencyConfig)

responseUpdateFunctionCode :: FunctionConfiguration -> TestTree
responseUpdateFunctionCode =
  res
    "UpdateFunctionCodeResponse"
    "fixture/UpdateFunctionCodeResponse.proto"
    lambda
    (Proxy :: Proxy UpdateFunctionCode)

responseUpdateFunctionConfiguration :: FunctionConfiguration -> TestTree
responseUpdateFunctionConfiguration =
  res
    "UpdateFunctionConfigurationResponse"
    "fixture/UpdateFunctionConfigurationResponse.proto"
    lambda
    (Proxy :: Proxy UpdateFunctionConfiguration)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    lambda
    (Proxy :: Proxy UntagResource)

responseListFunctions :: ListFunctionsResponse -> TestTree
responseListFunctions =
  res
    "ListFunctionsResponse"
    "fixture/ListFunctionsResponse.proto"
    lambda
    (Proxy :: Proxy ListFunctions)

responseListLayerVersions :: ListLayerVersionsResponse -> TestTree
responseListLayerVersions =
  res
    "ListLayerVersionsResponse"
    "fixture/ListLayerVersionsResponse.proto"
    lambda
    (Proxy :: Proxy ListLayerVersions)

responseInvoke :: InvokeResponse -> TestTree
responseInvoke =
  res
    "InvokeResponse"
    "fixture/InvokeResponse.proto"
    lambda
    (Proxy :: Proxy Invoke)

responseDeleteLayerVersion :: DeleteLayerVersionResponse -> TestTree
responseDeleteLayerVersion =
  res
    "DeleteLayerVersionResponse"
    "fixture/DeleteLayerVersionResponse.proto"
    lambda
    (Proxy :: Proxy DeleteLayerVersion)

responseCreateCodeSigningConfig :: CreateCodeSigningConfigResponse -> TestTree
responseCreateCodeSigningConfig =
  res
    "CreateCodeSigningConfigResponse"
    "fixture/CreateCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy CreateCodeSigningConfig)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    lambda
    (Proxy :: Proxy TagResource)

responseGetAlias :: AliasConfiguration -> TestTree
responseGetAlias =
  res
    "GetAliasResponse"
    "fixture/GetAliasResponse.proto"
    lambda
    (Proxy :: Proxy GetAlias)

responseDeleteCodeSigningConfig :: DeleteCodeSigningConfigResponse -> TestTree
responseDeleteCodeSigningConfig =
  res
    "DeleteCodeSigningConfigResponse"
    "fixture/DeleteCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy DeleteCodeSigningConfig)

responseUpdateCodeSigningConfig :: UpdateCodeSigningConfigResponse -> TestTree
responseUpdateCodeSigningConfig =
  res
    "UpdateCodeSigningConfigResponse"
    "fixture/UpdateCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy UpdateCodeSigningConfig)

responseListCodeSigningConfigs :: ListCodeSigningConfigsResponse -> TestTree
responseListCodeSigningConfigs =
  res
    "ListCodeSigningConfigsResponse"
    "fixture/ListCodeSigningConfigsResponse.proto"
    lambda
    (Proxy :: Proxy ListCodeSigningConfigs)

responseDeleteFunctionEventInvokeConfig :: DeleteFunctionEventInvokeConfigResponse -> TestTree
responseDeleteFunctionEventInvokeConfig =
  res
    "DeleteFunctionEventInvokeConfigResponse"
    "fixture/DeleteFunctionEventInvokeConfigResponse.proto"
    lambda
    (Proxy :: Proxy DeleteFunctionEventInvokeConfig)

responseUpdateFunctionEventInvokeConfig :: FunctionEventInvokeConfig -> TestTree
responseUpdateFunctionEventInvokeConfig =
  res
    "UpdateFunctionEventInvokeConfigResponse"
    "fixture/UpdateFunctionEventInvokeConfigResponse.proto"
    lambda
    (Proxy :: Proxy UpdateFunctionEventInvokeConfig)

responseListFunctionEventInvokeConfigs :: ListFunctionEventInvokeConfigsResponse -> TestTree
responseListFunctionEventInvokeConfigs =
  res
    "ListFunctionEventInvokeConfigsResponse"
    "fixture/ListFunctionEventInvokeConfigsResponse.proto"
    lambda
    (Proxy :: Proxy ListFunctionEventInvokeConfigs)

responseListVersionsByFunction :: ListVersionsByFunctionResponse -> TestTree
responseListVersionsByFunction =
  res
    "ListVersionsByFunctionResponse"
    "fixture/ListVersionsByFunctionResponse.proto"
    lambda
    (Proxy :: Proxy ListVersionsByFunction)

responseAddPermission :: AddPermissionResponse -> TestTree
responseAddPermission =
  res
    "AddPermissionResponse"
    "fixture/AddPermissionResponse.proto"
    lambda
    (Proxy :: Proxy AddPermission)

responseGetLayerVersion :: GetLayerVersionResponse -> TestTree
responseGetLayerVersion =
  res
    "GetLayerVersionResponse"
    "fixture/GetLayerVersionResponse.proto"
    lambda
    (Proxy :: Proxy GetLayerVersion)

responseDeleteFunctionCodeSigningConfig :: DeleteFunctionCodeSigningConfigResponse -> TestTree
responseDeleteFunctionCodeSigningConfig =
  res
    "DeleteFunctionCodeSigningConfigResponse"
    "fixture/DeleteFunctionCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy DeleteFunctionCodeSigningConfig)

responseListFunctionsByCodeSigningConfig :: ListFunctionsByCodeSigningConfigResponse -> TestTree
responseListFunctionsByCodeSigningConfig =
  res
    "ListFunctionsByCodeSigningConfigResponse"
    "fixture/ListFunctionsByCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy ListFunctionsByCodeSigningConfig)

responseRemoveLayerVersionPermission :: RemoveLayerVersionPermissionResponse -> TestTree
responseRemoveLayerVersionPermission =
  res
    "RemoveLayerVersionPermissionResponse"
    "fixture/RemoveLayerVersionPermissionResponse.proto"
    lambda
    (Proxy :: Proxy RemoveLayerVersionPermission)

responseGetProvisionedConcurrencyConfig :: GetProvisionedConcurrencyConfigResponse -> TestTree
responseGetProvisionedConcurrencyConfig =
  res
    "GetProvisionedConcurrencyConfigResponse"
    "fixture/GetProvisionedConcurrencyConfigResponse.proto"
    lambda
    (Proxy :: Proxy GetProvisionedConcurrencyConfig)

responseCreateFunction :: FunctionConfiguration -> TestTree
responseCreateFunction =
  res
    "CreateFunctionResponse"
    "fixture/CreateFunctionResponse.proto"
    lambda
    (Proxy :: Proxy CreateFunction)

responsePutFunctionConcurrency :: Concurrency -> TestTree
responsePutFunctionConcurrency =
  res
    "PutFunctionConcurrencyResponse"
    "fixture/PutFunctionConcurrencyResponse.proto"
    lambda
    (Proxy :: Proxy PutFunctionConcurrency)

responseGetPolicy :: GetPolicyResponse -> TestTree
responseGetPolicy =
  res
    "GetPolicyResponse"
    "fixture/GetPolicyResponse.proto"
    lambda
    (Proxy :: Proxy GetPolicy)

responsePutProvisionedConcurrencyConfig :: PutProvisionedConcurrencyConfigResponse -> TestTree
responsePutProvisionedConcurrencyConfig =
  res
    "PutProvisionedConcurrencyConfigResponse"
    "fixture/PutProvisionedConcurrencyConfigResponse.proto"
    lambda
    (Proxy :: Proxy PutProvisionedConcurrencyConfig)

responseAddLayerVersionPermission :: AddLayerVersionPermissionResponse -> TestTree
responseAddLayerVersionPermission =
  res
    "AddLayerVersionPermissionResponse"
    "fixture/AddLayerVersionPermissionResponse.proto"
    lambda
    (Proxy :: Proxy AddLayerVersionPermission)

responsePublishVersion :: FunctionConfiguration -> TestTree
responsePublishVersion =
  res
    "PublishVersionResponse"
    "fixture/PublishVersionResponse.proto"
    lambda
    (Proxy :: Proxy PublishVersion)

responseDeleteFunction :: DeleteFunctionResponse -> TestTree
responseDeleteFunction =
  res
    "DeleteFunctionResponse"
    "fixture/DeleteFunctionResponse.proto"
    lambda
    (Proxy :: Proxy DeleteFunction)

responseGetEventSourceMapping :: EventSourceMappingConfiguration -> TestTree
responseGetEventSourceMapping =
  res
    "GetEventSourceMappingResponse"
    "fixture/GetEventSourceMappingResponse.proto"
    lambda
    (Proxy :: Proxy GetEventSourceMapping)

responseListTags :: ListTagsResponse -> TestTree
responseListTags =
  res
    "ListTagsResponse"
    "fixture/ListTagsResponse.proto"
    lambda
    (Proxy :: Proxy ListTags)

responsePublishLayerVersion :: PublishLayerVersionResponse -> TestTree
responsePublishLayerVersion =
  res
    "PublishLayerVersionResponse"
    "fixture/PublishLayerVersionResponse.proto"
    lambda
    (Proxy :: Proxy PublishLayerVersion)

responseGetFunctionCodeSigningConfig :: GetFunctionCodeSigningConfigResponse -> TestTree
responseGetFunctionCodeSigningConfig =
  res
    "GetFunctionCodeSigningConfigResponse"
    "fixture/GetFunctionCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy GetFunctionCodeSigningConfig)

responsePutFunctionEventInvokeConfig :: FunctionEventInvokeConfig -> TestTree
responsePutFunctionEventInvokeConfig =
  res
    "PutFunctionEventInvokeConfigResponse"
    "fixture/PutFunctionEventInvokeConfigResponse.proto"
    lambda
    (Proxy :: Proxy PutFunctionEventInvokeConfig)

responseRemovePermission :: RemovePermissionResponse -> TestTree
responseRemovePermission =
  res
    "RemovePermissionResponse"
    "fixture/RemovePermissionResponse.proto"
    lambda
    (Proxy :: Proxy RemovePermission)

responseCreateAlias :: AliasConfiguration -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    lambda
    (Proxy :: Proxy CreateAlias)

responseGetCodeSigningConfig :: GetCodeSigningConfigResponse -> TestTree
responseGetCodeSigningConfig =
  res
    "GetCodeSigningConfigResponse"
    "fixture/GetCodeSigningConfigResponse.proto"
    lambda
    (Proxy :: Proxy GetCodeSigningConfig)

responseGetFunctionEventInvokeConfig :: FunctionEventInvokeConfig -> TestTree
responseGetFunctionEventInvokeConfig =
  res
    "GetFunctionEventInvokeConfigResponse"
    "fixture/GetFunctionEventInvokeConfigResponse.proto"
    lambda
    (Proxy :: Proxy GetFunctionEventInvokeConfig)

responseListLayers :: ListLayersResponse -> TestTree
responseListLayers =
  res
    "ListLayersResponse"
    "fixture/ListLayersResponse.proto"
    lambda
    (Proxy :: Proxy ListLayers)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases =
  res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    lambda
    (Proxy :: Proxy ListAliases)

responseGetAccountSettings :: GetAccountSettingsResponse -> TestTree
responseGetAccountSettings =
  res
    "GetAccountSettingsResponse"
    "fixture/GetAccountSettingsResponse.proto"
    lambda
    (Proxy :: Proxy GetAccountSettings)
