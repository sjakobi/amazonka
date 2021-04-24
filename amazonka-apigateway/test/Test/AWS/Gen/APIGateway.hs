{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.APIGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.APIGateway where

import Data.Proxy
import Network.AWS.APIGateway
import Test.AWS.APIGateway.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGenerateClientCertificate $
--             generateClientCertificate
--
--         , requestUpdateIntegration $
--             updateIntegration
--
--         , requestDeleteUsagePlan $
--             deleteUsagePlan
--
--         , requestDeleteIntegration $
--             deleteIntegration
--
--         , requestGetUsagePlanKey $
--             getUsagePlanKey
--
--         , requestGetAuthorizer $
--             getAuthorizer
--
--         , requestUpdateUsagePlan $
--             updateUsagePlan
--
--         , requestGetDeployments $
--             getDeployments
--
--         , requestDeleteIntegrationResponse $
--             deleteIntegrationResponse
--
--         , requestFlushStageCache $
--             flushStageCache
--
--         , requestDeleteVPCLink $
--             deleteVPCLink
--
--         , requestDeleteDocumentationPart $
--             deleteDocumentationPart
--
--         , requestUpdateVPCLink $
--             updateVPCLink
--
--         , requestCreateRestAPI $
--             createRestAPI
--
--         , requestUpdateUsage $
--             updateUsage
--
--         , requestUpdateIntegrationResponse $
--             updateIntegrationResponse
--
--         , requestUpdateDocumentationPart $
--             updateDocumentationPart
--
--         , requestGetSDKTypes $
--             getSDKTypes
--
--         , requestGetBasePathMappings $
--             getBasePathMappings
--
--         , requestGetModel $
--             getModel
--
--         , requestGetClientCertificates $
--             getClientCertificates
--
--         , requestTestInvokeMethod $
--             testInvokeMethod
--
--         , requestPutRestAPI $
--             putRestAPI
--
--         , requestGetAPIKey $
--             getAPIKey
--
--         , requestGetGatewayResponses $
--             getGatewayResponses
--
--         , requestDeleteModel $
--             deleteModel
--
--         , requestDeleteMethod $
--             deleteMethod
--
--         , requestGetDocumentationVersion $
--             getDocumentationVersion
--
--         , requestUpdateMethod $
--             updateMethod
--
--         , requestUpdateModel $
--             updateModel
--
--         , requestUpdateDomainName $
--             updateDomainName
--
--         , requestCreateResource $
--             createResource
--
--         , requestDeleteDomainName $
--             deleteDomainName
--
--         , requestUpdateRequestValidator $
--             updateRequestValidator
--
--         , requestDeleteRequestValidator $
--             deleteRequestValidator
--
--         , requestGetUsagePlans $
--             getUsagePlans
--
--         , requestCreateRequestValidator $
--             createRequestValidator
--
--         , requestCreateDomainName $
--             createDomainName
--
--         , requestGetVPCLink $
--             getVPCLink
--
--         , requestUpdateResource $
--             updateResource
--
--         , requestGetDocumentationPart $
--             getDocumentationPart
--
--         , requestGetUsage $
--             getUsage
--
--         , requestImportDocumentationParts $
--             importDocumentationParts
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteResource $
--             deleteResource
--
--         , requestGetIntegrationResponse $
--             getIntegrationResponse
--
--         , requestDeleteDeployment $
--             deleteDeployment
--
--         , requestCreateStage $
--             createStage
--
--         , requestGetIntegration $
--             getIntegration
--
--         , requestTagResource $
--             tagResource
--
--         , requestUpdateDeployment $
--             updateDeployment
--
--         , requestGetUsagePlan $
--             getUsagePlan
--
--         , requestGetRestAPIs $
--             getRestAPIs
--
--         , requestCreateAuthorizer $
--             createAuthorizer
--
--         , requestDeleteStage $
--             deleteStage
--
--         , requestUpdateStage $
--             updateStage
--
--         , requestCreateUsagePlanKey $
--             createUsagePlanKey
--
--         , requestGetGatewayResponse $
--             getGatewayResponse
--
--         , requestImportRestAPI $
--             importRestAPI
--
--         , requestPutMethodResponse $
--             putMethodResponse
--
--         , requestGetBasePathMapping $
--             getBasePathMapping
--
--         , requestGetRequestValidators $
--             getRequestValidators
--
--         , requestGetDomainNames $
--             getDomainNames
--
--         , requestGetSDKType $
--             getSDKType
--
--         , requestPutGatewayResponse $
--             putGatewayResponse
--
--         , requestGetExport $
--             getExport
--
--         , requestGetClientCertificate $
--             getClientCertificate
--
--         , requestTestInvokeAuthorizer $
--             testInvokeAuthorizer
--
--         , requestGetTags $
--             getTags
--
--         , requestGetDeployment $
--             getDeployment
--
--         , requestGetAccount $
--             getAccount
--
--         , requestPutIntegration $
--             putIntegration
--
--         , requestGetResources $
--             getResources
--
--         , requestGetResource $
--             getResource
--
--         , requestCreateDocumentationVersion $
--             createDocumentationVersion
--
--         , requestGetAuthorizers $
--             getAuthorizers
--
--         , requestPutIntegrationResponse $
--             putIntegrationResponse
--
--         , requestGetUsagePlanKeys $
--             getUsagePlanKeys
--
--         , requestCreateDocumentationPart $
--             createDocumentationPart
--
--         , requestGetStages $
--             getStages
--
--         , requestGetDomainName $
--             getDomainName
--
--         , requestGetModelTemplate $
--             getModelTemplate
--
--         , requestDeleteRestAPI $
--             deleteRestAPI
--
--         , requestGetMethod $
--             getMethod
--
--         , requestUpdateRestAPI $
--             updateRestAPI
--
--         , requestCreateVPCLink $
--             createVPCLink
--
--         , requestGetRequestValidator $
--             getRequestValidator
--
--         , requestUpdateDocumentationVersion $
--             updateDocumentationVersion
--
--         , requestImportAPIKeys $
--             importAPIKeys
--
--         , requestDeleteDocumentationVersion $
--             deleteDocumentationVersion
--
--         , requestPutMethod $
--             putMethod
--
--         , requestDeleteAPIKey $
--             deleteAPIKey
--
--         , requestFlushStageAuthorizersCache $
--             flushStageAuthorizersCache
--
--         , requestUpdateAPIKey $
--             updateAPIKey
--
--         , requestGetRestAPI $
--             getRestAPI
--
--         , requestCreateModel $
--             createModel
--
--         , requestCreateAPIKey $
--             createAPIKey
--
--         , requestDeleteUsagePlanKey $
--             deleteUsagePlanKey
--
--         , requestUpdateAccount $
--             updateAccount
--
--         , requestGetVPCLinks $
--             getVPCLinks
--
--         , requestUpdateAuthorizer $
--             updateAuthorizer
--
--         , requestCreateBasePathMapping $
--             createBasePathMapping
--
--         , requestGetDocumentationParts $
--             getDocumentationParts
--
--         , requestDeleteAuthorizer $
--             deleteAuthorizer
--
--         , requestDeleteClientCertificate $
--             deleteClientCertificate
--
--         , requestDeleteMethodResponse $
--             deleteMethodResponse
--
--         , requestDeleteBasePathMapping $
--             deleteBasePathMapping
--
--         , requestGetDocumentationVersions $
--             getDocumentationVersions
--
--         , requestUpdateBasePathMapping $
--             updateBasePathMapping
--
--         , requestUpdateClientCertificate $
--             updateClientCertificate
--
--         , requestUpdateMethodResponse $
--             updateMethodResponse
--
--         , requestCreateDeployment $
--             createDeployment
--
--         , requestGetAPIKeys $
--             getAPIKeys
--
--         , requestCreateUsagePlan $
--             createUsagePlan
--
--         , requestUpdateGatewayResponse $
--             updateGatewayResponse
--
--         , requestGetSDK $
--             getSDK
--
--         , requestGetMethodResponse $
--             getMethodResponse
--
--         , requestGetModels $
--             getModels
--
--         , requestGetStage $
--             getStage
--
--         , requestDeleteGatewayResponse $
--             deleteGatewayResponse
--
--           ]

--     , testGroup "response"
--         [ responseGenerateClientCertificate $
--             clientCertificate
--
--         , responseUpdateIntegration $
--             integration
--
--         , responseDeleteUsagePlan $
--             deleteUsagePlanResponse
--
--         , responseDeleteIntegration $
--             deleteIntegrationResponse'
--
--         , responseGetUsagePlanKey $
--             usagePlanKey
--
--         , responseGetAuthorizer $
--             authorizer
--
--         , responseUpdateUsagePlan $
--             usagePlan
--
--         , responseGetDeployments $
--             getDeploymentsResponse
--
--         , responseDeleteIntegrationResponse $
--             deleteIntegrationResponseResponse
--
--         , responseFlushStageCache $
--             flushStageCacheResponse
--
--         , responseDeleteVPCLink $
--             deleteVPCLinkResponse
--
--         , responseDeleteDocumentationPart $
--             deleteDocumentationPartResponse
--
--         , responseUpdateVPCLink $
--             vpcLink
--
--         , responseCreateRestAPI $
--             restAPI
--
--         , responseUpdateUsage $
--             usage
--
--         , responseUpdateIntegrationResponse $
--             integrationResponse
--
--         , responseUpdateDocumentationPart $
--             documentationPart
--
--         , responseGetSDKTypes $
--             getSDKTypesResponse
--
--         , responseGetBasePathMappings $
--             getBasePathMappingsResponse
--
--         , responseGetModel $
--             model
--
--         , responseGetClientCertificates $
--             getClientCertificatesResponse
--
--         , responseTestInvokeMethod $
--             testInvokeMethodResponse
--
--         , responsePutRestAPI $
--             restAPI
--
--         , responseGetAPIKey $
--             apiKey
--
--         , responseGetGatewayResponses $
--             getGatewayResponsesResponse
--
--         , responseDeleteModel $
--             deleteModelResponse
--
--         , responseDeleteMethod $
--             deleteMethodResponse'
--
--         , responseGetDocumentationVersion $
--             documentationVersion
--
--         , responseUpdateMethod $
--             method
--
--         , responseUpdateModel $
--             model
--
--         , responseUpdateDomainName $
--             domainName
--
--         , responseCreateResource $
--             resource
--
--         , responseDeleteDomainName $
--             deleteDomainNameResponse
--
--         , responseUpdateRequestValidator $
--             requestValidator
--
--         , responseDeleteRequestValidator $
--             deleteRequestValidatorResponse
--
--         , responseGetUsagePlans $
--             getUsagePlansResponse
--
--         , responseCreateRequestValidator $
--             requestValidator
--
--         , responseCreateDomainName $
--             domainName
--
--         , responseGetVPCLink $
--             vpcLink
--
--         , responseUpdateResource $
--             resource
--
--         , responseGetDocumentationPart $
--             documentationPart
--
--         , responseGetUsage $
--             usage
--
--         , responseImportDocumentationParts $
--             importDocumentationPartsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteResource $
--             deleteResourceResponse
--
--         , responseGetIntegrationResponse $
--             integrationResponse
--
--         , responseDeleteDeployment $
--             deleteDeploymentResponse
--
--         , responseCreateStage $
--             stage
--
--         , responseGetIntegration $
--             integration
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseUpdateDeployment $
--             deployment
--
--         , responseGetUsagePlan $
--             usagePlan
--
--         , responseGetRestAPIs $
--             getRestAPIsResponse
--
--         , responseCreateAuthorizer $
--             authorizer
--
--         , responseDeleteStage $
--             deleteStageResponse
--
--         , responseUpdateStage $
--             stage
--
--         , responseCreateUsagePlanKey $
--             usagePlanKey
--
--         , responseGetGatewayResponse $
--             gatewayResponse
--
--         , responseImportRestAPI $
--             restAPI
--
--         , responsePutMethodResponse $
--             methodResponse
--
--         , responseGetBasePathMapping $
--             basePathMapping
--
--         , responseGetRequestValidators $
--             getRequestValidatorsResponse
--
--         , responseGetDomainNames $
--             getDomainNamesResponse
--
--         , responseGetSDKType $
--             sdkType
--
--         , responsePutGatewayResponse $
--             gatewayResponse
--
--         , responseGetExport $
--             getExportResponse
--
--         , responseGetClientCertificate $
--             clientCertificate
--
--         , responseTestInvokeAuthorizer $
--             testInvokeAuthorizerResponse
--
--         , responseGetTags $
--             getTagsResponse
--
--         , responseGetDeployment $
--             deployment
--
--         , responseGetAccount $
--             account
--
--         , responsePutIntegration $
--             integration
--
--         , responseGetResources $
--             getResourcesResponse
--
--         , responseGetResource $
--             resource
--
--         , responseCreateDocumentationVersion $
--             documentationVersion
--
--         , responseGetAuthorizers $
--             getAuthorizersResponse
--
--         , responsePutIntegrationResponse $
--             integrationResponse
--
--         , responseGetUsagePlanKeys $
--             getUsagePlanKeysResponse
--
--         , responseCreateDocumentationPart $
--             documentationPart
--
--         , responseGetStages $
--             getStagesResponse
--
--         , responseGetDomainName $
--             domainName
--
--         , responseGetModelTemplate $
--             getModelTemplateResponse
--
--         , responseDeleteRestAPI $
--             deleteRestAPIResponse
--
--         , responseGetMethod $
--             method
--
--         , responseUpdateRestAPI $
--             restAPI
--
--         , responseCreateVPCLink $
--             vpcLink
--
--         , responseGetRequestValidator $
--             requestValidator
--
--         , responseUpdateDocumentationVersion $
--             documentationVersion
--
--         , responseImportAPIKeys $
--             importAPIKeysResponse
--
--         , responseDeleteDocumentationVersion $
--             deleteDocumentationVersionResponse
--
--         , responsePutMethod $
--             method
--
--         , responseDeleteAPIKey $
--             deleteAPIKeyResponse
--
--         , responseFlushStageAuthorizersCache $
--             flushStageAuthorizersCacheResponse
--
--         , responseUpdateAPIKey $
--             apiKey
--
--         , responseGetRestAPI $
--             restAPI
--
--         , responseCreateModel $
--             model
--
--         , responseCreateAPIKey $
--             apiKey
--
--         , responseDeleteUsagePlanKey $
--             deleteUsagePlanKeyResponse
--
--         , responseUpdateAccount $
--             account
--
--         , responseGetVPCLinks $
--             getVPCLinksResponse
--
--         , responseUpdateAuthorizer $
--             authorizer
--
--         , responseCreateBasePathMapping $
--             basePathMapping
--
--         , responseGetDocumentationParts $
--             getDocumentationPartsResponse
--
--         , responseDeleteAuthorizer $
--             deleteAuthorizerResponse
--
--         , responseDeleteClientCertificate $
--             deleteClientCertificateResponse
--
--         , responseDeleteMethodResponse $
--             deleteMethodResponseResponse
--
--         , responseDeleteBasePathMapping $
--             deleteBasePathMappingResponse
--
--         , responseGetDocumentationVersions $
--             getDocumentationVersionsResponse
--
--         , responseUpdateBasePathMapping $
--             basePathMapping
--
--         , responseUpdateClientCertificate $
--             clientCertificate
--
--         , responseUpdateMethodResponse $
--             methodResponse
--
--         , responseCreateDeployment $
--             deployment
--
--         , responseGetAPIKeys $
--             getAPIKeysResponse
--
--         , responseCreateUsagePlan $
--             usagePlan
--
--         , responseUpdateGatewayResponse $
--             gatewayResponse
--
--         , responseGetSDK $
--             getSDKResponse
--
--         , responseGetMethodResponse $
--             methodResponse
--
--         , responseGetModels $
--             getModelsResponse
--
--         , responseGetStage $
--             stage
--
--         , responseDeleteGatewayResponse $
--             deleteGatewayResponseResponse
--
--           ]
--     ]

-- Requests

requestGenerateClientCertificate :: GenerateClientCertificate -> TestTree
requestGenerateClientCertificate =
  req
    "GenerateClientCertificate"
    "fixture/GenerateClientCertificate.yaml"

requestUpdateIntegration :: UpdateIntegration -> TestTree
requestUpdateIntegration =
  req
    "UpdateIntegration"
    "fixture/UpdateIntegration.yaml"

requestDeleteUsagePlan :: DeleteUsagePlan -> TestTree
requestDeleteUsagePlan =
  req
    "DeleteUsagePlan"
    "fixture/DeleteUsagePlan.yaml"

requestDeleteIntegration :: DeleteIntegration -> TestTree
requestDeleteIntegration =
  req
    "DeleteIntegration"
    "fixture/DeleteIntegration.yaml"

requestGetUsagePlanKey :: GetUsagePlanKey -> TestTree
requestGetUsagePlanKey =
  req
    "GetUsagePlanKey"
    "fixture/GetUsagePlanKey.yaml"

requestGetAuthorizer :: GetAuthorizer -> TestTree
requestGetAuthorizer =
  req
    "GetAuthorizer"
    "fixture/GetAuthorizer.yaml"

requestUpdateUsagePlan :: UpdateUsagePlan -> TestTree
requestUpdateUsagePlan =
  req
    "UpdateUsagePlan"
    "fixture/UpdateUsagePlan.yaml"

requestGetDeployments :: GetDeployments -> TestTree
requestGetDeployments =
  req
    "GetDeployments"
    "fixture/GetDeployments.yaml"

requestDeleteIntegrationResponse :: DeleteIntegrationResponse -> TestTree
requestDeleteIntegrationResponse =
  req
    "DeleteIntegrationResponse"
    "fixture/DeleteIntegrationResponse.yaml"

requestFlushStageCache :: FlushStageCache -> TestTree
requestFlushStageCache =
  req
    "FlushStageCache"
    "fixture/FlushStageCache.yaml"

requestDeleteVPCLink :: DeleteVPCLink -> TestTree
requestDeleteVPCLink =
  req
    "DeleteVPCLink"
    "fixture/DeleteVPCLink.yaml"

requestDeleteDocumentationPart :: DeleteDocumentationPart -> TestTree
requestDeleteDocumentationPart =
  req
    "DeleteDocumentationPart"
    "fixture/DeleteDocumentationPart.yaml"

requestUpdateVPCLink :: UpdateVPCLink -> TestTree
requestUpdateVPCLink =
  req
    "UpdateVPCLink"
    "fixture/UpdateVPCLink.yaml"

requestCreateRestAPI :: CreateRestAPI -> TestTree
requestCreateRestAPI =
  req
    "CreateRestAPI"
    "fixture/CreateRestAPI.yaml"

requestUpdateUsage :: UpdateUsage -> TestTree
requestUpdateUsage =
  req
    "UpdateUsage"
    "fixture/UpdateUsage.yaml"

requestUpdateIntegrationResponse :: UpdateIntegrationResponse -> TestTree
requestUpdateIntegrationResponse =
  req
    "UpdateIntegrationResponse"
    "fixture/UpdateIntegrationResponse.yaml"

requestUpdateDocumentationPart :: UpdateDocumentationPart -> TestTree
requestUpdateDocumentationPart =
  req
    "UpdateDocumentationPart"
    "fixture/UpdateDocumentationPart.yaml"

requestGetSDKTypes :: GetSDKTypes -> TestTree
requestGetSDKTypes =
  req
    "GetSDKTypes"
    "fixture/GetSDKTypes.yaml"

requestGetBasePathMappings :: GetBasePathMappings -> TestTree
requestGetBasePathMappings =
  req
    "GetBasePathMappings"
    "fixture/GetBasePathMappings.yaml"

requestGetModel :: GetModel -> TestTree
requestGetModel =
  req
    "GetModel"
    "fixture/GetModel.yaml"

requestGetClientCertificates :: GetClientCertificates -> TestTree
requestGetClientCertificates =
  req
    "GetClientCertificates"
    "fixture/GetClientCertificates.yaml"

requestTestInvokeMethod :: TestInvokeMethod -> TestTree
requestTestInvokeMethod =
  req
    "TestInvokeMethod"
    "fixture/TestInvokeMethod.yaml"

requestPutRestAPI :: PutRestAPI -> TestTree
requestPutRestAPI =
  req
    "PutRestAPI"
    "fixture/PutRestAPI.yaml"

requestGetAPIKey :: GetAPIKey -> TestTree
requestGetAPIKey =
  req
    "GetAPIKey"
    "fixture/GetAPIKey.yaml"

requestGetGatewayResponses :: GetGatewayResponses -> TestTree
requestGetGatewayResponses =
  req
    "GetGatewayResponses"
    "fixture/GetGatewayResponses.yaml"

requestDeleteModel :: DeleteModel -> TestTree
requestDeleteModel =
  req
    "DeleteModel"
    "fixture/DeleteModel.yaml"

requestDeleteMethod :: DeleteMethod -> TestTree
requestDeleteMethod =
  req
    "DeleteMethod"
    "fixture/DeleteMethod.yaml"

requestGetDocumentationVersion :: GetDocumentationVersion -> TestTree
requestGetDocumentationVersion =
  req
    "GetDocumentationVersion"
    "fixture/GetDocumentationVersion.yaml"

requestUpdateMethod :: UpdateMethod -> TestTree
requestUpdateMethod =
  req
    "UpdateMethod"
    "fixture/UpdateMethod.yaml"

requestUpdateModel :: UpdateModel -> TestTree
requestUpdateModel =
  req
    "UpdateModel"
    "fixture/UpdateModel.yaml"

requestUpdateDomainName :: UpdateDomainName -> TestTree
requestUpdateDomainName =
  req
    "UpdateDomainName"
    "fixture/UpdateDomainName.yaml"

requestCreateResource :: CreateResource -> TestTree
requestCreateResource =
  req
    "CreateResource"
    "fixture/CreateResource.yaml"

requestDeleteDomainName :: DeleteDomainName -> TestTree
requestDeleteDomainName =
  req
    "DeleteDomainName"
    "fixture/DeleteDomainName.yaml"

requestUpdateRequestValidator :: UpdateRequestValidator -> TestTree
requestUpdateRequestValidator =
  req
    "UpdateRequestValidator"
    "fixture/UpdateRequestValidator.yaml"

requestDeleteRequestValidator :: DeleteRequestValidator -> TestTree
requestDeleteRequestValidator =
  req
    "DeleteRequestValidator"
    "fixture/DeleteRequestValidator.yaml"

requestGetUsagePlans :: GetUsagePlans -> TestTree
requestGetUsagePlans =
  req
    "GetUsagePlans"
    "fixture/GetUsagePlans.yaml"

requestCreateRequestValidator :: CreateRequestValidator -> TestTree
requestCreateRequestValidator =
  req
    "CreateRequestValidator"
    "fixture/CreateRequestValidator.yaml"

requestCreateDomainName :: CreateDomainName -> TestTree
requestCreateDomainName =
  req
    "CreateDomainName"
    "fixture/CreateDomainName.yaml"

requestGetVPCLink :: GetVPCLink -> TestTree
requestGetVPCLink =
  req
    "GetVPCLink"
    "fixture/GetVPCLink.yaml"

requestUpdateResource :: UpdateResource -> TestTree
requestUpdateResource =
  req
    "UpdateResource"
    "fixture/UpdateResource.yaml"

requestGetDocumentationPart :: GetDocumentationPart -> TestTree
requestGetDocumentationPart =
  req
    "GetDocumentationPart"
    "fixture/GetDocumentationPart.yaml"

requestGetUsage :: GetUsage -> TestTree
requestGetUsage =
  req
    "GetUsage"
    "fixture/GetUsage.yaml"

requestImportDocumentationParts :: ImportDocumentationParts -> TestTree
requestImportDocumentationParts =
  req
    "ImportDocumentationParts"
    "fixture/ImportDocumentationParts.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteResource :: DeleteResource -> TestTree
requestDeleteResource =
  req
    "DeleteResource"
    "fixture/DeleteResource.yaml"

requestGetIntegrationResponse :: GetIntegrationResponse -> TestTree
requestGetIntegrationResponse =
  req
    "GetIntegrationResponse"
    "fixture/GetIntegrationResponse.yaml"

requestDeleteDeployment :: DeleteDeployment -> TestTree
requestDeleteDeployment =
  req
    "DeleteDeployment"
    "fixture/DeleteDeployment.yaml"

requestCreateStage :: CreateStage -> TestTree
requestCreateStage =
  req
    "CreateStage"
    "fixture/CreateStage.yaml"

requestGetIntegration :: GetIntegration -> TestTree
requestGetIntegration =
  req
    "GetIntegration"
    "fixture/GetIntegration.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUpdateDeployment :: UpdateDeployment -> TestTree
requestUpdateDeployment =
  req
    "UpdateDeployment"
    "fixture/UpdateDeployment.yaml"

requestGetUsagePlan :: GetUsagePlan -> TestTree
requestGetUsagePlan =
  req
    "GetUsagePlan"
    "fixture/GetUsagePlan.yaml"

requestGetRestAPIs :: GetRestAPIs -> TestTree
requestGetRestAPIs =
  req
    "GetRestAPIs"
    "fixture/GetRestAPIs.yaml"

requestCreateAuthorizer :: CreateAuthorizer -> TestTree
requestCreateAuthorizer =
  req
    "CreateAuthorizer"
    "fixture/CreateAuthorizer.yaml"

requestDeleteStage :: DeleteStage -> TestTree
requestDeleteStage =
  req
    "DeleteStage"
    "fixture/DeleteStage.yaml"

requestUpdateStage :: UpdateStage -> TestTree
requestUpdateStage =
  req
    "UpdateStage"
    "fixture/UpdateStage.yaml"

requestCreateUsagePlanKey :: CreateUsagePlanKey -> TestTree
requestCreateUsagePlanKey =
  req
    "CreateUsagePlanKey"
    "fixture/CreateUsagePlanKey.yaml"

requestGetGatewayResponse :: GetGatewayResponse -> TestTree
requestGetGatewayResponse =
  req
    "GetGatewayResponse"
    "fixture/GetGatewayResponse.yaml"

requestImportRestAPI :: ImportRestAPI -> TestTree
requestImportRestAPI =
  req
    "ImportRestAPI"
    "fixture/ImportRestAPI.yaml"

requestPutMethodResponse :: PutMethodResponse -> TestTree
requestPutMethodResponse =
  req
    "PutMethodResponse"
    "fixture/PutMethodResponse.yaml"

requestGetBasePathMapping :: GetBasePathMapping -> TestTree
requestGetBasePathMapping =
  req
    "GetBasePathMapping"
    "fixture/GetBasePathMapping.yaml"

requestGetRequestValidators :: GetRequestValidators -> TestTree
requestGetRequestValidators =
  req
    "GetRequestValidators"
    "fixture/GetRequestValidators.yaml"

requestGetDomainNames :: GetDomainNames -> TestTree
requestGetDomainNames =
  req
    "GetDomainNames"
    "fixture/GetDomainNames.yaml"

requestGetSDKType :: GetSDKType -> TestTree
requestGetSDKType =
  req
    "GetSDKType"
    "fixture/GetSDKType.yaml"

requestPutGatewayResponse :: PutGatewayResponse -> TestTree
requestPutGatewayResponse =
  req
    "PutGatewayResponse"
    "fixture/PutGatewayResponse.yaml"

requestGetExport :: GetExport -> TestTree
requestGetExport =
  req
    "GetExport"
    "fixture/GetExport.yaml"

requestGetClientCertificate :: GetClientCertificate -> TestTree
requestGetClientCertificate =
  req
    "GetClientCertificate"
    "fixture/GetClientCertificate.yaml"

requestTestInvokeAuthorizer :: TestInvokeAuthorizer -> TestTree
requestTestInvokeAuthorizer =
  req
    "TestInvokeAuthorizer"
    "fixture/TestInvokeAuthorizer.yaml"

requestGetTags :: GetTags -> TestTree
requestGetTags =
  req
    "GetTags"
    "fixture/GetTags.yaml"

requestGetDeployment :: GetDeployment -> TestTree
requestGetDeployment =
  req
    "GetDeployment"
    "fixture/GetDeployment.yaml"

requestGetAccount :: GetAccount -> TestTree
requestGetAccount =
  req
    "GetAccount"
    "fixture/GetAccount.yaml"

requestPutIntegration :: PutIntegration -> TestTree
requestPutIntegration =
  req
    "PutIntegration"
    "fixture/PutIntegration.yaml"

requestGetResources :: GetResources -> TestTree
requestGetResources =
  req
    "GetResources"
    "fixture/GetResources.yaml"

requestGetResource :: GetResource -> TestTree
requestGetResource =
  req
    "GetResource"
    "fixture/GetResource.yaml"

requestCreateDocumentationVersion :: CreateDocumentationVersion -> TestTree
requestCreateDocumentationVersion =
  req
    "CreateDocumentationVersion"
    "fixture/CreateDocumentationVersion.yaml"

requestGetAuthorizers :: GetAuthorizers -> TestTree
requestGetAuthorizers =
  req
    "GetAuthorizers"
    "fixture/GetAuthorizers.yaml"

requestPutIntegrationResponse :: PutIntegrationResponse -> TestTree
requestPutIntegrationResponse =
  req
    "PutIntegrationResponse"
    "fixture/PutIntegrationResponse.yaml"

requestGetUsagePlanKeys :: GetUsagePlanKeys -> TestTree
requestGetUsagePlanKeys =
  req
    "GetUsagePlanKeys"
    "fixture/GetUsagePlanKeys.yaml"

requestCreateDocumentationPart :: CreateDocumentationPart -> TestTree
requestCreateDocumentationPart =
  req
    "CreateDocumentationPart"
    "fixture/CreateDocumentationPart.yaml"

requestGetStages :: GetStages -> TestTree
requestGetStages =
  req
    "GetStages"
    "fixture/GetStages.yaml"

requestGetDomainName :: GetDomainName -> TestTree
requestGetDomainName =
  req
    "GetDomainName"
    "fixture/GetDomainName.yaml"

requestGetModelTemplate :: GetModelTemplate -> TestTree
requestGetModelTemplate =
  req
    "GetModelTemplate"
    "fixture/GetModelTemplate.yaml"

requestDeleteRestAPI :: DeleteRestAPI -> TestTree
requestDeleteRestAPI =
  req
    "DeleteRestAPI"
    "fixture/DeleteRestAPI.yaml"

requestGetMethod :: GetMethod -> TestTree
requestGetMethod =
  req
    "GetMethod"
    "fixture/GetMethod.yaml"

requestUpdateRestAPI :: UpdateRestAPI -> TestTree
requestUpdateRestAPI =
  req
    "UpdateRestAPI"
    "fixture/UpdateRestAPI.yaml"

requestCreateVPCLink :: CreateVPCLink -> TestTree
requestCreateVPCLink =
  req
    "CreateVPCLink"
    "fixture/CreateVPCLink.yaml"

requestGetRequestValidator :: GetRequestValidator -> TestTree
requestGetRequestValidator =
  req
    "GetRequestValidator"
    "fixture/GetRequestValidator.yaml"

requestUpdateDocumentationVersion :: UpdateDocumentationVersion -> TestTree
requestUpdateDocumentationVersion =
  req
    "UpdateDocumentationVersion"
    "fixture/UpdateDocumentationVersion.yaml"

requestImportAPIKeys :: ImportAPIKeys -> TestTree
requestImportAPIKeys =
  req
    "ImportAPIKeys"
    "fixture/ImportAPIKeys.yaml"

requestDeleteDocumentationVersion :: DeleteDocumentationVersion -> TestTree
requestDeleteDocumentationVersion =
  req
    "DeleteDocumentationVersion"
    "fixture/DeleteDocumentationVersion.yaml"

requestPutMethod :: PutMethod -> TestTree
requestPutMethod =
  req
    "PutMethod"
    "fixture/PutMethod.yaml"

requestDeleteAPIKey :: DeleteAPIKey -> TestTree
requestDeleteAPIKey =
  req
    "DeleteAPIKey"
    "fixture/DeleteAPIKey.yaml"

requestFlushStageAuthorizersCache :: FlushStageAuthorizersCache -> TestTree
requestFlushStageAuthorizersCache =
  req
    "FlushStageAuthorizersCache"
    "fixture/FlushStageAuthorizersCache.yaml"

requestUpdateAPIKey :: UpdateAPIKey -> TestTree
requestUpdateAPIKey =
  req
    "UpdateAPIKey"
    "fixture/UpdateAPIKey.yaml"

requestGetRestAPI :: GetRestAPI -> TestTree
requestGetRestAPI =
  req
    "GetRestAPI"
    "fixture/GetRestAPI.yaml"

requestCreateModel :: CreateModel -> TestTree
requestCreateModel =
  req
    "CreateModel"
    "fixture/CreateModel.yaml"

requestCreateAPIKey :: CreateAPIKey -> TestTree
requestCreateAPIKey =
  req
    "CreateAPIKey"
    "fixture/CreateAPIKey.yaml"

requestDeleteUsagePlanKey :: DeleteUsagePlanKey -> TestTree
requestDeleteUsagePlanKey =
  req
    "DeleteUsagePlanKey"
    "fixture/DeleteUsagePlanKey.yaml"

requestUpdateAccount :: UpdateAccount -> TestTree
requestUpdateAccount =
  req
    "UpdateAccount"
    "fixture/UpdateAccount.yaml"

requestGetVPCLinks :: GetVPCLinks -> TestTree
requestGetVPCLinks =
  req
    "GetVPCLinks"
    "fixture/GetVPCLinks.yaml"

requestUpdateAuthorizer :: UpdateAuthorizer -> TestTree
requestUpdateAuthorizer =
  req
    "UpdateAuthorizer"
    "fixture/UpdateAuthorizer.yaml"

requestCreateBasePathMapping :: CreateBasePathMapping -> TestTree
requestCreateBasePathMapping =
  req
    "CreateBasePathMapping"
    "fixture/CreateBasePathMapping.yaml"

requestGetDocumentationParts :: GetDocumentationParts -> TestTree
requestGetDocumentationParts =
  req
    "GetDocumentationParts"
    "fixture/GetDocumentationParts.yaml"

requestDeleteAuthorizer :: DeleteAuthorizer -> TestTree
requestDeleteAuthorizer =
  req
    "DeleteAuthorizer"
    "fixture/DeleteAuthorizer.yaml"

requestDeleteClientCertificate :: DeleteClientCertificate -> TestTree
requestDeleteClientCertificate =
  req
    "DeleteClientCertificate"
    "fixture/DeleteClientCertificate.yaml"

requestDeleteMethodResponse :: DeleteMethodResponse -> TestTree
requestDeleteMethodResponse =
  req
    "DeleteMethodResponse"
    "fixture/DeleteMethodResponse.yaml"

requestDeleteBasePathMapping :: DeleteBasePathMapping -> TestTree
requestDeleteBasePathMapping =
  req
    "DeleteBasePathMapping"
    "fixture/DeleteBasePathMapping.yaml"

requestGetDocumentationVersions :: GetDocumentationVersions -> TestTree
requestGetDocumentationVersions =
  req
    "GetDocumentationVersions"
    "fixture/GetDocumentationVersions.yaml"

requestUpdateBasePathMapping :: UpdateBasePathMapping -> TestTree
requestUpdateBasePathMapping =
  req
    "UpdateBasePathMapping"
    "fixture/UpdateBasePathMapping.yaml"

requestUpdateClientCertificate :: UpdateClientCertificate -> TestTree
requestUpdateClientCertificate =
  req
    "UpdateClientCertificate"
    "fixture/UpdateClientCertificate.yaml"

requestUpdateMethodResponse :: UpdateMethodResponse -> TestTree
requestUpdateMethodResponse =
  req
    "UpdateMethodResponse"
    "fixture/UpdateMethodResponse.yaml"

requestCreateDeployment :: CreateDeployment -> TestTree
requestCreateDeployment =
  req
    "CreateDeployment"
    "fixture/CreateDeployment.yaml"

requestGetAPIKeys :: GetAPIKeys -> TestTree
requestGetAPIKeys =
  req
    "GetAPIKeys"
    "fixture/GetAPIKeys.yaml"

requestCreateUsagePlan :: CreateUsagePlan -> TestTree
requestCreateUsagePlan =
  req
    "CreateUsagePlan"
    "fixture/CreateUsagePlan.yaml"

requestUpdateGatewayResponse :: UpdateGatewayResponse -> TestTree
requestUpdateGatewayResponse =
  req
    "UpdateGatewayResponse"
    "fixture/UpdateGatewayResponse.yaml"

requestGetSDK :: GetSDK -> TestTree
requestGetSDK =
  req
    "GetSDK"
    "fixture/GetSDK.yaml"

requestGetMethodResponse :: GetMethodResponse -> TestTree
requestGetMethodResponse =
  req
    "GetMethodResponse"
    "fixture/GetMethodResponse.yaml"

requestGetModels :: GetModels -> TestTree
requestGetModels =
  req
    "GetModels"
    "fixture/GetModels.yaml"

requestGetStage :: GetStage -> TestTree
requestGetStage =
  req
    "GetStage"
    "fixture/GetStage.yaml"

requestDeleteGatewayResponse :: DeleteGatewayResponse -> TestTree
requestDeleteGatewayResponse =
  req
    "DeleteGatewayResponse"
    "fixture/DeleteGatewayResponse.yaml"

-- Responses

responseGenerateClientCertificate :: ClientCertificate -> TestTree
responseGenerateClientCertificate =
  res
    "GenerateClientCertificateResponse"
    "fixture/GenerateClientCertificateResponse.proto"
    apiGateway
    (Proxy :: Proxy GenerateClientCertificate)

responseUpdateIntegration :: Integration -> TestTree
responseUpdateIntegration =
  res
    "UpdateIntegrationResponse"
    "fixture/UpdateIntegrationResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateIntegration)

responseDeleteUsagePlan :: DeleteUsagePlanResponse -> TestTree
responseDeleteUsagePlan =
  res
    "DeleteUsagePlanResponse"
    "fixture/DeleteUsagePlanResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteUsagePlan)

responseDeleteIntegration :: DeleteIntegrationResponse' -> TestTree
responseDeleteIntegration =
  res
    "DeleteIntegrationResponse"
    "fixture/DeleteIntegrationResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteIntegration)

responseGetUsagePlanKey :: UsagePlanKey -> TestTree
responseGetUsagePlanKey =
  res
    "GetUsagePlanKeyResponse"
    "fixture/GetUsagePlanKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy GetUsagePlanKey)

responseGetAuthorizer :: Authorizer -> TestTree
responseGetAuthorizer =
  res
    "GetAuthorizerResponse"
    "fixture/GetAuthorizerResponse.proto"
    apiGateway
    (Proxy :: Proxy GetAuthorizer)

responseUpdateUsagePlan :: UsagePlan -> TestTree
responseUpdateUsagePlan =
  res
    "UpdateUsagePlanResponse"
    "fixture/UpdateUsagePlanResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateUsagePlan)

responseGetDeployments :: GetDeploymentsResponse -> TestTree
responseGetDeployments =
  res
    "GetDeploymentsResponse"
    "fixture/GetDeploymentsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDeployments)

responseDeleteIntegrationResponse :: DeleteIntegrationResponseResponse -> TestTree
responseDeleteIntegrationResponse =
  res
    "DeleteIntegrationResponseResponse"
    "fixture/DeleteIntegrationResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteIntegrationResponse)

responseFlushStageCache :: FlushStageCacheResponse -> TestTree
responseFlushStageCache =
  res
    "FlushStageCacheResponse"
    "fixture/FlushStageCacheResponse.proto"
    apiGateway
    (Proxy :: Proxy FlushStageCache)

responseDeleteVPCLink :: DeleteVPCLinkResponse -> TestTree
responseDeleteVPCLink =
  res
    "DeleteVPCLinkResponse"
    "fixture/DeleteVPCLinkResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteVPCLink)

responseDeleteDocumentationPart :: DeleteDocumentationPartResponse -> TestTree
responseDeleteDocumentationPart =
  res
    "DeleteDocumentationPartResponse"
    "fixture/DeleteDocumentationPartResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteDocumentationPart)

responseUpdateVPCLink :: VPCLink -> TestTree
responseUpdateVPCLink =
  res
    "UpdateVPCLinkResponse"
    "fixture/UpdateVPCLinkResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateVPCLink)

responseCreateRestAPI :: RestAPI -> TestTree
responseCreateRestAPI =
  res
    "CreateRestAPIResponse"
    "fixture/CreateRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateRestAPI)

responseUpdateUsage :: Usage -> TestTree
responseUpdateUsage =
  res
    "UpdateUsageResponse"
    "fixture/UpdateUsageResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateUsage)

responseUpdateIntegrationResponse :: IntegrationResponse -> TestTree
responseUpdateIntegrationResponse =
  res
    "UpdateIntegrationResponseResponse"
    "fixture/UpdateIntegrationResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateIntegrationResponse)

responseUpdateDocumentationPart :: DocumentationPart -> TestTree
responseUpdateDocumentationPart =
  res
    "UpdateDocumentationPartResponse"
    "fixture/UpdateDocumentationPartResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateDocumentationPart)

responseGetSDKTypes :: GetSDKTypesResponse -> TestTree
responseGetSDKTypes =
  res
    "GetSDKTypesResponse"
    "fixture/GetSDKTypesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetSDKTypes)

responseGetBasePathMappings :: GetBasePathMappingsResponse -> TestTree
responseGetBasePathMappings =
  res
    "GetBasePathMappingsResponse"
    "fixture/GetBasePathMappingsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetBasePathMappings)

responseGetModel :: Model -> TestTree
responseGetModel =
  res
    "GetModelResponse"
    "fixture/GetModelResponse.proto"
    apiGateway
    (Proxy :: Proxy GetModel)

responseGetClientCertificates :: GetClientCertificatesResponse -> TestTree
responseGetClientCertificates =
  res
    "GetClientCertificatesResponse"
    "fixture/GetClientCertificatesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetClientCertificates)

responseTestInvokeMethod :: TestInvokeMethodResponse -> TestTree
responseTestInvokeMethod =
  res
    "TestInvokeMethodResponse"
    "fixture/TestInvokeMethodResponse.proto"
    apiGateway
    (Proxy :: Proxy TestInvokeMethod)

responsePutRestAPI :: RestAPI -> TestTree
responsePutRestAPI =
  res
    "PutRestAPIResponse"
    "fixture/PutRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy PutRestAPI)

responseGetAPIKey :: APIKey -> TestTree
responseGetAPIKey =
  res
    "GetAPIKeyResponse"
    "fixture/GetAPIKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy GetAPIKey)

responseGetGatewayResponses :: GetGatewayResponsesResponse -> TestTree
responseGetGatewayResponses =
  res
    "GetGatewayResponsesResponse"
    "fixture/GetGatewayResponsesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetGatewayResponses)

responseDeleteModel :: DeleteModelResponse -> TestTree
responseDeleteModel =
  res
    "DeleteModelResponse"
    "fixture/DeleteModelResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteModel)

responseDeleteMethod :: DeleteMethodResponse' -> TestTree
responseDeleteMethod =
  res
    "DeleteMethodResponse"
    "fixture/DeleteMethodResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteMethod)

responseGetDocumentationVersion :: DocumentationVersion -> TestTree
responseGetDocumentationVersion =
  res
    "GetDocumentationVersionResponse"
    "fixture/GetDocumentationVersionResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDocumentationVersion)

responseUpdateMethod :: Method -> TestTree
responseUpdateMethod =
  res
    "UpdateMethodResponse"
    "fixture/UpdateMethodResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateMethod)

responseUpdateModel :: Model -> TestTree
responseUpdateModel =
  res
    "UpdateModelResponse"
    "fixture/UpdateModelResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateModel)

responseUpdateDomainName :: DomainName -> TestTree
responseUpdateDomainName =
  res
    "UpdateDomainNameResponse"
    "fixture/UpdateDomainNameResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateDomainName)

responseCreateResource :: Resource -> TestTree
responseCreateResource =
  res
    "CreateResourceResponse"
    "fixture/CreateResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateResource)

responseDeleteDomainName :: DeleteDomainNameResponse -> TestTree
responseDeleteDomainName =
  res
    "DeleteDomainNameResponse"
    "fixture/DeleteDomainNameResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteDomainName)

responseUpdateRequestValidator :: RequestValidator -> TestTree
responseUpdateRequestValidator =
  res
    "UpdateRequestValidatorResponse"
    "fixture/UpdateRequestValidatorResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateRequestValidator)

responseDeleteRequestValidator :: DeleteRequestValidatorResponse -> TestTree
responseDeleteRequestValidator =
  res
    "DeleteRequestValidatorResponse"
    "fixture/DeleteRequestValidatorResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteRequestValidator)

responseGetUsagePlans :: GetUsagePlansResponse -> TestTree
responseGetUsagePlans =
  res
    "GetUsagePlansResponse"
    "fixture/GetUsagePlansResponse.proto"
    apiGateway
    (Proxy :: Proxy GetUsagePlans)

responseCreateRequestValidator :: RequestValidator -> TestTree
responseCreateRequestValidator =
  res
    "CreateRequestValidatorResponse"
    "fixture/CreateRequestValidatorResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateRequestValidator)

responseCreateDomainName :: DomainName -> TestTree
responseCreateDomainName =
  res
    "CreateDomainNameResponse"
    "fixture/CreateDomainNameResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateDomainName)

responseGetVPCLink :: VPCLink -> TestTree
responseGetVPCLink =
  res
    "GetVPCLinkResponse"
    "fixture/GetVPCLinkResponse.proto"
    apiGateway
    (Proxy :: Proxy GetVPCLink)

responseUpdateResource :: Resource -> TestTree
responseUpdateResource =
  res
    "UpdateResourceResponse"
    "fixture/UpdateResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateResource)

responseGetDocumentationPart :: DocumentationPart -> TestTree
responseGetDocumentationPart =
  res
    "GetDocumentationPartResponse"
    "fixture/GetDocumentationPartResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDocumentationPart)

responseGetUsage :: Usage -> TestTree
responseGetUsage =
  res
    "GetUsageResponse"
    "fixture/GetUsageResponse.proto"
    apiGateway
    (Proxy :: Proxy GetUsage)

responseImportDocumentationParts :: ImportDocumentationPartsResponse -> TestTree
responseImportDocumentationParts =
  res
    "ImportDocumentationPartsResponse"
    "fixture/ImportDocumentationPartsResponse.proto"
    apiGateway
    (Proxy :: Proxy ImportDocumentationParts)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy UntagResource)

responseDeleteResource :: DeleteResourceResponse -> TestTree
responseDeleteResource =
  res
    "DeleteResourceResponse"
    "fixture/DeleteResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteResource)

responseGetIntegrationResponse :: IntegrationResponse -> TestTree
responseGetIntegrationResponse =
  res
    "GetIntegrationResponseResponse"
    "fixture/GetIntegrationResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy GetIntegrationResponse)

responseDeleteDeployment :: DeleteDeploymentResponse -> TestTree
responseDeleteDeployment =
  res
    "DeleteDeploymentResponse"
    "fixture/DeleteDeploymentResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteDeployment)

responseCreateStage :: Stage -> TestTree
responseCreateStage =
  res
    "CreateStageResponse"
    "fixture/CreateStageResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateStage)

responseGetIntegration :: Integration -> TestTree
responseGetIntegration =
  res
    "GetIntegrationResponse"
    "fixture/GetIntegrationResponse.proto"
    apiGateway
    (Proxy :: Proxy GetIntegration)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy TagResource)

responseUpdateDeployment :: Deployment -> TestTree
responseUpdateDeployment =
  res
    "UpdateDeploymentResponse"
    "fixture/UpdateDeploymentResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateDeployment)

responseGetUsagePlan :: UsagePlan -> TestTree
responseGetUsagePlan =
  res
    "GetUsagePlanResponse"
    "fixture/GetUsagePlanResponse.proto"
    apiGateway
    (Proxy :: Proxy GetUsagePlan)

responseGetRestAPIs :: GetRestAPIsResponse -> TestTree
responseGetRestAPIs =
  res
    "GetRestAPIsResponse"
    "fixture/GetRestAPIsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetRestAPIs)

responseCreateAuthorizer :: Authorizer -> TestTree
responseCreateAuthorizer =
  res
    "CreateAuthorizerResponse"
    "fixture/CreateAuthorizerResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateAuthorizer)

responseDeleteStage :: DeleteStageResponse -> TestTree
responseDeleteStage =
  res
    "DeleteStageResponse"
    "fixture/DeleteStageResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteStage)

responseUpdateStage :: Stage -> TestTree
responseUpdateStage =
  res
    "UpdateStageResponse"
    "fixture/UpdateStageResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateStage)

responseCreateUsagePlanKey :: UsagePlanKey -> TestTree
responseCreateUsagePlanKey =
  res
    "CreateUsagePlanKeyResponse"
    "fixture/CreateUsagePlanKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateUsagePlanKey)

responseGetGatewayResponse :: GatewayResponse -> TestTree
responseGetGatewayResponse =
  res
    "GetGatewayResponseResponse"
    "fixture/GetGatewayResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy GetGatewayResponse)

responseImportRestAPI :: RestAPI -> TestTree
responseImportRestAPI =
  res
    "ImportRestAPIResponse"
    "fixture/ImportRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy ImportRestAPI)

responsePutMethodResponse :: MethodResponse -> TestTree
responsePutMethodResponse =
  res
    "PutMethodResponseResponse"
    "fixture/PutMethodResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy PutMethodResponse)

responseGetBasePathMapping :: BasePathMapping -> TestTree
responseGetBasePathMapping =
  res
    "GetBasePathMappingResponse"
    "fixture/GetBasePathMappingResponse.proto"
    apiGateway
    (Proxy :: Proxy GetBasePathMapping)

responseGetRequestValidators :: GetRequestValidatorsResponse -> TestTree
responseGetRequestValidators =
  res
    "GetRequestValidatorsResponse"
    "fixture/GetRequestValidatorsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetRequestValidators)

responseGetDomainNames :: GetDomainNamesResponse -> TestTree
responseGetDomainNames =
  res
    "GetDomainNamesResponse"
    "fixture/GetDomainNamesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDomainNames)

responseGetSDKType :: SDKType -> TestTree
responseGetSDKType =
  res
    "GetSDKTypeResponse"
    "fixture/GetSDKTypeResponse.proto"
    apiGateway
    (Proxy :: Proxy GetSDKType)

responsePutGatewayResponse :: GatewayResponse -> TestTree
responsePutGatewayResponse =
  res
    "PutGatewayResponseResponse"
    "fixture/PutGatewayResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy PutGatewayResponse)

responseGetExport :: GetExportResponse -> TestTree
responseGetExport =
  res
    "GetExportResponse"
    "fixture/GetExportResponse.proto"
    apiGateway
    (Proxy :: Proxy GetExport)

responseGetClientCertificate :: ClientCertificate -> TestTree
responseGetClientCertificate =
  res
    "GetClientCertificateResponse"
    "fixture/GetClientCertificateResponse.proto"
    apiGateway
    (Proxy :: Proxy GetClientCertificate)

responseTestInvokeAuthorizer :: TestInvokeAuthorizerResponse -> TestTree
responseTestInvokeAuthorizer =
  res
    "TestInvokeAuthorizerResponse"
    "fixture/TestInvokeAuthorizerResponse.proto"
    apiGateway
    (Proxy :: Proxy TestInvokeAuthorizer)

responseGetTags :: GetTagsResponse -> TestTree
responseGetTags =
  res
    "GetTagsResponse"
    "fixture/GetTagsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetTags)

responseGetDeployment :: Deployment -> TestTree
responseGetDeployment =
  res
    "GetDeploymentResponse"
    "fixture/GetDeploymentResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDeployment)

responseGetAccount :: Account -> TestTree
responseGetAccount =
  res
    "GetAccountResponse"
    "fixture/GetAccountResponse.proto"
    apiGateway
    (Proxy :: Proxy GetAccount)

responsePutIntegration :: Integration -> TestTree
responsePutIntegration =
  res
    "PutIntegrationResponse"
    "fixture/PutIntegrationResponse.proto"
    apiGateway
    (Proxy :: Proxy PutIntegration)

responseGetResources :: GetResourcesResponse -> TestTree
responseGetResources =
  res
    "GetResourcesResponse"
    "fixture/GetResourcesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetResources)

responseGetResource :: Resource -> TestTree
responseGetResource =
  res
    "GetResourceResponse"
    "fixture/GetResourceResponse.proto"
    apiGateway
    (Proxy :: Proxy GetResource)

responseCreateDocumentationVersion :: DocumentationVersion -> TestTree
responseCreateDocumentationVersion =
  res
    "CreateDocumentationVersionResponse"
    "fixture/CreateDocumentationVersionResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateDocumentationVersion)

responseGetAuthorizers :: GetAuthorizersResponse -> TestTree
responseGetAuthorizers =
  res
    "GetAuthorizersResponse"
    "fixture/GetAuthorizersResponse.proto"
    apiGateway
    (Proxy :: Proxy GetAuthorizers)

responsePutIntegrationResponse :: IntegrationResponse -> TestTree
responsePutIntegrationResponse =
  res
    "PutIntegrationResponseResponse"
    "fixture/PutIntegrationResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy PutIntegrationResponse)

responseGetUsagePlanKeys :: GetUsagePlanKeysResponse -> TestTree
responseGetUsagePlanKeys =
  res
    "GetUsagePlanKeysResponse"
    "fixture/GetUsagePlanKeysResponse.proto"
    apiGateway
    (Proxy :: Proxy GetUsagePlanKeys)

responseCreateDocumentationPart :: DocumentationPart -> TestTree
responseCreateDocumentationPart =
  res
    "CreateDocumentationPartResponse"
    "fixture/CreateDocumentationPartResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateDocumentationPart)

responseGetStages :: GetStagesResponse -> TestTree
responseGetStages =
  res
    "GetStagesResponse"
    "fixture/GetStagesResponse.proto"
    apiGateway
    (Proxy :: Proxy GetStages)

responseGetDomainName :: DomainName -> TestTree
responseGetDomainName =
  res
    "GetDomainNameResponse"
    "fixture/GetDomainNameResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDomainName)

responseGetModelTemplate :: GetModelTemplateResponse -> TestTree
responseGetModelTemplate =
  res
    "GetModelTemplateResponse"
    "fixture/GetModelTemplateResponse.proto"
    apiGateway
    (Proxy :: Proxy GetModelTemplate)

responseDeleteRestAPI :: DeleteRestAPIResponse -> TestTree
responseDeleteRestAPI =
  res
    "DeleteRestAPIResponse"
    "fixture/DeleteRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteRestAPI)

responseGetMethod :: Method -> TestTree
responseGetMethod =
  res
    "GetMethodResponse"
    "fixture/GetMethodResponse.proto"
    apiGateway
    (Proxy :: Proxy GetMethod)

responseUpdateRestAPI :: RestAPI -> TestTree
responseUpdateRestAPI =
  res
    "UpdateRestAPIResponse"
    "fixture/UpdateRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateRestAPI)

responseCreateVPCLink :: VPCLink -> TestTree
responseCreateVPCLink =
  res
    "CreateVPCLinkResponse"
    "fixture/CreateVPCLinkResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateVPCLink)

responseGetRequestValidator :: RequestValidator -> TestTree
responseGetRequestValidator =
  res
    "GetRequestValidatorResponse"
    "fixture/GetRequestValidatorResponse.proto"
    apiGateway
    (Proxy :: Proxy GetRequestValidator)

responseUpdateDocumentationVersion :: DocumentationVersion -> TestTree
responseUpdateDocumentationVersion =
  res
    "UpdateDocumentationVersionResponse"
    "fixture/UpdateDocumentationVersionResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateDocumentationVersion)

responseImportAPIKeys :: ImportAPIKeysResponse -> TestTree
responseImportAPIKeys =
  res
    "ImportAPIKeysResponse"
    "fixture/ImportAPIKeysResponse.proto"
    apiGateway
    (Proxy :: Proxy ImportAPIKeys)

responseDeleteDocumentationVersion :: DeleteDocumentationVersionResponse -> TestTree
responseDeleteDocumentationVersion =
  res
    "DeleteDocumentationVersionResponse"
    "fixture/DeleteDocumentationVersionResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteDocumentationVersion)

responsePutMethod :: Method -> TestTree
responsePutMethod =
  res
    "PutMethodResponse"
    "fixture/PutMethodResponse.proto"
    apiGateway
    (Proxy :: Proxy PutMethod)

responseDeleteAPIKey :: DeleteAPIKeyResponse -> TestTree
responseDeleteAPIKey =
  res
    "DeleteAPIKeyResponse"
    "fixture/DeleteAPIKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteAPIKey)

responseFlushStageAuthorizersCache :: FlushStageAuthorizersCacheResponse -> TestTree
responseFlushStageAuthorizersCache =
  res
    "FlushStageAuthorizersCacheResponse"
    "fixture/FlushStageAuthorizersCacheResponse.proto"
    apiGateway
    (Proxy :: Proxy FlushStageAuthorizersCache)

responseUpdateAPIKey :: APIKey -> TestTree
responseUpdateAPIKey =
  res
    "UpdateAPIKeyResponse"
    "fixture/UpdateAPIKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateAPIKey)

responseGetRestAPI :: RestAPI -> TestTree
responseGetRestAPI =
  res
    "GetRestAPIResponse"
    "fixture/GetRestAPIResponse.proto"
    apiGateway
    (Proxy :: Proxy GetRestAPI)

responseCreateModel :: Model -> TestTree
responseCreateModel =
  res
    "CreateModelResponse"
    "fixture/CreateModelResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateModel)

responseCreateAPIKey :: APIKey -> TestTree
responseCreateAPIKey =
  res
    "CreateAPIKeyResponse"
    "fixture/CreateAPIKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateAPIKey)

responseDeleteUsagePlanKey :: DeleteUsagePlanKeyResponse -> TestTree
responseDeleteUsagePlanKey =
  res
    "DeleteUsagePlanKeyResponse"
    "fixture/DeleteUsagePlanKeyResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteUsagePlanKey)

responseUpdateAccount :: Account -> TestTree
responseUpdateAccount =
  res
    "UpdateAccountResponse"
    "fixture/UpdateAccountResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateAccount)

responseGetVPCLinks :: GetVPCLinksResponse -> TestTree
responseGetVPCLinks =
  res
    "GetVPCLinksResponse"
    "fixture/GetVPCLinksResponse.proto"
    apiGateway
    (Proxy :: Proxy GetVPCLinks)

responseUpdateAuthorizer :: Authorizer -> TestTree
responseUpdateAuthorizer =
  res
    "UpdateAuthorizerResponse"
    "fixture/UpdateAuthorizerResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateAuthorizer)

responseCreateBasePathMapping :: BasePathMapping -> TestTree
responseCreateBasePathMapping =
  res
    "CreateBasePathMappingResponse"
    "fixture/CreateBasePathMappingResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateBasePathMapping)

responseGetDocumentationParts :: GetDocumentationPartsResponse -> TestTree
responseGetDocumentationParts =
  res
    "GetDocumentationPartsResponse"
    "fixture/GetDocumentationPartsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDocumentationParts)

responseDeleteAuthorizer :: DeleteAuthorizerResponse -> TestTree
responseDeleteAuthorizer =
  res
    "DeleteAuthorizerResponse"
    "fixture/DeleteAuthorizerResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteAuthorizer)

responseDeleteClientCertificate :: DeleteClientCertificateResponse -> TestTree
responseDeleteClientCertificate =
  res
    "DeleteClientCertificateResponse"
    "fixture/DeleteClientCertificateResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteClientCertificate)

responseDeleteMethodResponse :: DeleteMethodResponseResponse -> TestTree
responseDeleteMethodResponse =
  res
    "DeleteMethodResponseResponse"
    "fixture/DeleteMethodResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteMethodResponse)

responseDeleteBasePathMapping :: DeleteBasePathMappingResponse -> TestTree
responseDeleteBasePathMapping =
  res
    "DeleteBasePathMappingResponse"
    "fixture/DeleteBasePathMappingResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteBasePathMapping)

responseGetDocumentationVersions :: GetDocumentationVersionsResponse -> TestTree
responseGetDocumentationVersions =
  res
    "GetDocumentationVersionsResponse"
    "fixture/GetDocumentationVersionsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetDocumentationVersions)

responseUpdateBasePathMapping :: BasePathMapping -> TestTree
responseUpdateBasePathMapping =
  res
    "UpdateBasePathMappingResponse"
    "fixture/UpdateBasePathMappingResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateBasePathMapping)

responseUpdateClientCertificate :: ClientCertificate -> TestTree
responseUpdateClientCertificate =
  res
    "UpdateClientCertificateResponse"
    "fixture/UpdateClientCertificateResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateClientCertificate)

responseUpdateMethodResponse :: MethodResponse -> TestTree
responseUpdateMethodResponse =
  res
    "UpdateMethodResponseResponse"
    "fixture/UpdateMethodResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateMethodResponse)

responseCreateDeployment :: Deployment -> TestTree
responseCreateDeployment =
  res
    "CreateDeploymentResponse"
    "fixture/CreateDeploymentResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateDeployment)

responseGetAPIKeys :: GetAPIKeysResponse -> TestTree
responseGetAPIKeys =
  res
    "GetAPIKeysResponse"
    "fixture/GetAPIKeysResponse.proto"
    apiGateway
    (Proxy :: Proxy GetAPIKeys)

responseCreateUsagePlan :: UsagePlan -> TestTree
responseCreateUsagePlan =
  res
    "CreateUsagePlanResponse"
    "fixture/CreateUsagePlanResponse.proto"
    apiGateway
    (Proxy :: Proxy CreateUsagePlan)

responseUpdateGatewayResponse :: GatewayResponse -> TestTree
responseUpdateGatewayResponse =
  res
    "UpdateGatewayResponseResponse"
    "fixture/UpdateGatewayResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy UpdateGatewayResponse)

responseGetSDK :: GetSDKResponse -> TestTree
responseGetSDK =
  res
    "GetSDKResponse"
    "fixture/GetSDKResponse.proto"
    apiGateway
    (Proxy :: Proxy GetSDK)

responseGetMethodResponse :: MethodResponse -> TestTree
responseGetMethodResponse =
  res
    "GetMethodResponseResponse"
    "fixture/GetMethodResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy GetMethodResponse)

responseGetModels :: GetModelsResponse -> TestTree
responseGetModels =
  res
    "GetModelsResponse"
    "fixture/GetModelsResponse.proto"
    apiGateway
    (Proxy :: Proxy GetModels)

responseGetStage :: Stage -> TestTree
responseGetStage =
  res
    "GetStageResponse"
    "fixture/GetStageResponse.proto"
    apiGateway
    (Proxy :: Proxy GetStage)

responseDeleteGatewayResponse :: DeleteGatewayResponseResponse -> TestTree
responseDeleteGatewayResponse =
  res
    "DeleteGatewayResponseResponse"
    "fixture/DeleteGatewayResponseResponse.proto"
    apiGateway
    (Proxy :: Proxy DeleteGatewayResponse)
