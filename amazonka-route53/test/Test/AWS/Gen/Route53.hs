{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Route53
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Route53 where

import Data.Proxy
import Network.AWS.Route53
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Route53.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateReusableDelegationSet $
--             createReusableDelegationSet
--
--         , requestGetHealthCheckCount $
--             getHealthCheckCount
--
--         , requestGetHostedZoneLimit $
--             getHostedZoneLimit
--
--         , requestAssociateVPCWithHostedZone $
--             associateVPCWithHostedZone
--
--         , requestListGeoLocations $
--             listGeoLocations
--
--         , requestListTrafficPolicies $
--             listTrafficPolicies
--
--         , requestCreateTrafficPolicy $
--             createTrafficPolicy
--
--         , requestDeleteHostedZone $
--             deleteHostedZone
--
--         , requestCreateHealthCheck $
--             createHealthCheck
--
--         , requestDisassociateVPCFromHostedZone $
--             disassociateVPCFromHostedZone
--
--         , requestChangeTagsForResource $
--             changeTagsForResource
--
--         , requestGetGeoLocation $
--             getGeoLocation
--
--         , requestDeleteVPCAssociationAuthorization $
--             deleteVPCAssociationAuthorization
--
--         , requestListHostedZones $
--             listHostedZones
--
--         , requestDeactivateKeySigningKey $
--             deactivateKeySigningKey
--
--         , requestTestDNSAnswer $
--             testDNSAnswer
--
--         , requestCreateHostedZone $
--             createHostedZone
--
--         , requestGetReusableDelegationSetLimit $
--             getReusableDelegationSetLimit
--
--         , requestChangeResourceRecordSets $
--             changeResourceRecordSets
--
--         , requestGetReusableDelegationSet $
--             getReusableDelegationSet
--
--         , requestGetCheckerIPRanges $
--             getCheckerIPRanges
--
--         , requestGetDNSSEC $
--             getDNSSEC
--
--         , requestDeleteKeySigningKey $
--             deleteKeySigningKey
--
--         , requestGetTrafficPolicyInstance $
--             getTrafficPolicyInstance
--
--         , requestListReusableDelegationSets $
--             listReusableDelegationSets
--
--         , requestGetAccountLimit $
--             getAccountLimit
--
--         , requestCreateQueryLoggingConfig $
--             createQueryLoggingConfig
--
--         , requestUpdateTrafficPolicyComment $
--             updateTrafficPolicyComment
--
--         , requestCreateKeySigningKey $
--             createKeySigningKey
--
--         , requestDisableHostedZoneDNSSEC $
--             disableHostedZoneDNSSEC
--
--         , requestListResourceRecordSets $
--             listResourceRecordSets
--
--         , requestDeleteTrafficPolicy $
--             deleteTrafficPolicy
--
--         , requestGetHealthCheck $
--             getHealthCheck
--
--         , requestListTrafficPolicyInstancesByHostedZone $
--             listTrafficPolicyInstancesByHostedZone
--
--         , requestListTagsForResources $
--             listTagsForResources
--
--         , requestGetTrafficPolicyInstanceCount $
--             getTrafficPolicyInstanceCount
--
--         , requestGetHostedZone $
--             getHostedZone
--
--         , requestListVPCAssociationAuthorizations $
--             listVPCAssociationAuthorizations
--
--         , requestListTrafficPolicyVersions $
--             listTrafficPolicyVersions
--
--         , requestListTrafficPolicyInstancesByPolicy $
--             listTrafficPolicyInstancesByPolicy
--
--         , requestListHealthChecks $
--             listHealthChecks
--
--         , requestDeleteHealthCheck $
--             deleteHealthCheck
--
--         , requestCreateTrafficPolicyVersion $
--             createTrafficPolicyVersion
--
--         , requestGetTrafficPolicy $
--             getTrafficPolicy
--
--         , requestCreateVPCAssociationAuthorization $
--             createVPCAssociationAuthorization
--
--         , requestUpdateHealthCheck $
--             updateHealthCheck
--
--         , requestCreateTrafficPolicyInstance $
--             createTrafficPolicyInstance
--
--         , requestListHostedZonesByVPC $
--             listHostedZonesByVPC
--
--         , requestGetHealthCheckStatus $
--             getHealthCheckStatus
--
--         , requestGetChange $
--             getChange
--
--         , requestUpdateHostedZoneComment $
--             updateHostedZoneComment
--
--         , requestListTrafficPolicyInstances $
--             listTrafficPolicyInstances
--
--         , requestDeleteTrafficPolicyInstance $
--             deleteTrafficPolicyInstance
--
--         , requestUpdateTrafficPolicyInstance $
--             updateTrafficPolicyInstance
--
--         , requestGetQueryLoggingConfig $
--             getQueryLoggingConfig
--
--         , requestDeleteReusableDelegationSet $
--             deleteReusableDelegationSet
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDeleteQueryLoggingConfig $
--             deleteQueryLoggingConfig
--
--         , requestGetHealthCheckLastFailureReason $
--             getHealthCheckLastFailureReason
--
--         , requestEnableHostedZoneDNSSEC $
--             enableHostedZoneDNSSEC
--
--         , requestListQueryLoggingConfigs $
--             listQueryLoggingConfigs
--
--         , requestListHostedZonesByName $
--             listHostedZonesByName
--
--         , requestGetHostedZoneCount $
--             getHostedZoneCount
--
--         , requestActivateKeySigningKey $
--             activateKeySigningKey
--
--           ]

--     , testGroup "response"
--         [ responseCreateReusableDelegationSet $
--             createReusableDelegationSetResponse
--
--         , responseGetHealthCheckCount $
--             getHealthCheckCountResponse
--
--         , responseGetHostedZoneLimit $
--             getHostedZoneLimitResponse
--
--         , responseAssociateVPCWithHostedZone $
--             associateVPCWithHostedZoneResponse
--
--         , responseListGeoLocations $
--             listGeoLocationsResponse
--
--         , responseListTrafficPolicies $
--             listTrafficPoliciesResponse
--
--         , responseCreateTrafficPolicy $
--             createTrafficPolicyResponse
--
--         , responseDeleteHostedZone $
--             deleteHostedZoneResponse
--
--         , responseCreateHealthCheck $
--             createHealthCheckResponse
--
--         , responseDisassociateVPCFromHostedZone $
--             disassociateVPCFromHostedZoneResponse
--
--         , responseChangeTagsForResource $
--             changeTagsForResourceResponse
--
--         , responseGetGeoLocation $
--             getGeoLocationResponse
--
--         , responseDeleteVPCAssociationAuthorization $
--             deleteVPCAssociationAuthorizationResponse
--
--         , responseListHostedZones $
--             listHostedZonesResponse
--
--         , responseDeactivateKeySigningKey $
--             deactivateKeySigningKeyResponse
--
--         , responseTestDNSAnswer $
--             testDNSAnswerResponse
--
--         , responseCreateHostedZone $
--             createHostedZoneResponse
--
--         , responseGetReusableDelegationSetLimit $
--             getReusableDelegationSetLimitResponse
--
--         , responseChangeResourceRecordSets $
--             changeResourceRecordSetsResponse
--
--         , responseGetReusableDelegationSet $
--             getReusableDelegationSetResponse
--
--         , responseGetCheckerIPRanges $
--             getCheckerIPRangesResponse
--
--         , responseGetDNSSEC $
--             getDNSSECResponse
--
--         , responseDeleteKeySigningKey $
--             deleteKeySigningKeyResponse
--
--         , responseGetTrafficPolicyInstance $
--             getTrafficPolicyInstanceResponse
--
--         , responseListReusableDelegationSets $
--             listReusableDelegationSetsResponse
--
--         , responseGetAccountLimit $
--             getAccountLimitResponse
--
--         , responseCreateQueryLoggingConfig $
--             createQueryLoggingConfigResponse
--
--         , responseUpdateTrafficPolicyComment $
--             updateTrafficPolicyCommentResponse
--
--         , responseCreateKeySigningKey $
--             createKeySigningKeyResponse
--
--         , responseDisableHostedZoneDNSSEC $
--             disableHostedZoneDNSSECResponse
--
--         , responseListResourceRecordSets $
--             listResourceRecordSetsResponse
--
--         , responseDeleteTrafficPolicy $
--             deleteTrafficPolicyResponse
--
--         , responseGetHealthCheck $
--             getHealthCheckResponse
--
--         , responseListTrafficPolicyInstancesByHostedZone $
--             listTrafficPolicyInstancesByHostedZoneResponse
--
--         , responseListTagsForResources $
--             listTagsForResourcesResponse
--
--         , responseGetTrafficPolicyInstanceCount $
--             getTrafficPolicyInstanceCountResponse
--
--         , responseGetHostedZone $
--             getHostedZoneResponse
--
--         , responseListVPCAssociationAuthorizations $
--             listVPCAssociationAuthorizationsResponse
--
--         , responseListTrafficPolicyVersions $
--             listTrafficPolicyVersionsResponse
--
--         , responseListTrafficPolicyInstancesByPolicy $
--             listTrafficPolicyInstancesByPolicyResponse
--
--         , responseListHealthChecks $
--             listHealthChecksResponse
--
--         , responseDeleteHealthCheck $
--             deleteHealthCheckResponse
--
--         , responseCreateTrafficPolicyVersion $
--             createTrafficPolicyVersionResponse
--
--         , responseGetTrafficPolicy $
--             getTrafficPolicyResponse
--
--         , responseCreateVPCAssociationAuthorization $
--             createVPCAssociationAuthorizationResponse
--
--         , responseUpdateHealthCheck $
--             updateHealthCheckResponse
--
--         , responseCreateTrafficPolicyInstance $
--             createTrafficPolicyInstanceResponse
--
--         , responseListHostedZonesByVPC $
--             listHostedZonesByVPCResponse
--
--         , responseGetHealthCheckStatus $
--             getHealthCheckStatusResponse
--
--         , responseGetChange $
--             getChangeResponse
--
--         , responseUpdateHostedZoneComment $
--             updateHostedZoneCommentResponse
--
--         , responseListTrafficPolicyInstances $
--             listTrafficPolicyInstancesResponse
--
--         , responseDeleteTrafficPolicyInstance $
--             deleteTrafficPolicyInstanceResponse
--
--         , responseUpdateTrafficPolicyInstance $
--             updateTrafficPolicyInstanceResponse
--
--         , responseGetQueryLoggingConfig $
--             getQueryLoggingConfigResponse
--
--         , responseDeleteReusableDelegationSet $
--             deleteReusableDelegationSetResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDeleteQueryLoggingConfig $
--             deleteQueryLoggingConfigResponse
--
--         , responseGetHealthCheckLastFailureReason $
--             getHealthCheckLastFailureReasonResponse
--
--         , responseEnableHostedZoneDNSSEC $
--             enableHostedZoneDNSSECResponse
--
--         , responseListQueryLoggingConfigs $
--             listQueryLoggingConfigsResponse
--
--         , responseListHostedZonesByName $
--             listHostedZonesByNameResponse
--
--         , responseGetHostedZoneCount $
--             getHostedZoneCountResponse
--
--         , responseActivateKeySigningKey $
--             activateKeySigningKeyResponse
--
--           ]
--     ]

-- Requests

requestCreateReusableDelegationSet :: CreateReusableDelegationSet -> TestTree
requestCreateReusableDelegationSet =
  req
    "CreateReusableDelegationSet"
    "fixture/CreateReusableDelegationSet.yaml"

requestGetHealthCheckCount :: GetHealthCheckCount -> TestTree
requestGetHealthCheckCount =
  req
    "GetHealthCheckCount"
    "fixture/GetHealthCheckCount.yaml"

requestGetHostedZoneLimit :: GetHostedZoneLimit -> TestTree
requestGetHostedZoneLimit =
  req
    "GetHostedZoneLimit"
    "fixture/GetHostedZoneLimit.yaml"

requestAssociateVPCWithHostedZone :: AssociateVPCWithHostedZone -> TestTree
requestAssociateVPCWithHostedZone =
  req
    "AssociateVPCWithHostedZone"
    "fixture/AssociateVPCWithHostedZone.yaml"

requestListGeoLocations :: ListGeoLocations -> TestTree
requestListGeoLocations =
  req
    "ListGeoLocations"
    "fixture/ListGeoLocations.yaml"

requestListTrafficPolicies :: ListTrafficPolicies -> TestTree
requestListTrafficPolicies =
  req
    "ListTrafficPolicies"
    "fixture/ListTrafficPolicies.yaml"

requestCreateTrafficPolicy :: CreateTrafficPolicy -> TestTree
requestCreateTrafficPolicy =
  req
    "CreateTrafficPolicy"
    "fixture/CreateTrafficPolicy.yaml"

requestDeleteHostedZone :: DeleteHostedZone -> TestTree
requestDeleteHostedZone =
  req
    "DeleteHostedZone"
    "fixture/DeleteHostedZone.yaml"

requestCreateHealthCheck :: CreateHealthCheck -> TestTree
requestCreateHealthCheck =
  req
    "CreateHealthCheck"
    "fixture/CreateHealthCheck.yaml"

requestDisassociateVPCFromHostedZone :: DisassociateVPCFromHostedZone -> TestTree
requestDisassociateVPCFromHostedZone =
  req
    "DisassociateVPCFromHostedZone"
    "fixture/DisassociateVPCFromHostedZone.yaml"

requestChangeTagsForResource :: ChangeTagsForResource -> TestTree
requestChangeTagsForResource =
  req
    "ChangeTagsForResource"
    "fixture/ChangeTagsForResource.yaml"

requestGetGeoLocation :: GetGeoLocation -> TestTree
requestGetGeoLocation =
  req
    "GetGeoLocation"
    "fixture/GetGeoLocation.yaml"

requestDeleteVPCAssociationAuthorization :: DeleteVPCAssociationAuthorization -> TestTree
requestDeleteVPCAssociationAuthorization =
  req
    "DeleteVPCAssociationAuthorization"
    "fixture/DeleteVPCAssociationAuthorization.yaml"

requestListHostedZones :: ListHostedZones -> TestTree
requestListHostedZones =
  req
    "ListHostedZones"
    "fixture/ListHostedZones.yaml"

requestDeactivateKeySigningKey :: DeactivateKeySigningKey -> TestTree
requestDeactivateKeySigningKey =
  req
    "DeactivateKeySigningKey"
    "fixture/DeactivateKeySigningKey.yaml"

requestTestDNSAnswer :: TestDNSAnswer -> TestTree
requestTestDNSAnswer =
  req
    "TestDNSAnswer"
    "fixture/TestDNSAnswer.yaml"

requestCreateHostedZone :: CreateHostedZone -> TestTree
requestCreateHostedZone =
  req
    "CreateHostedZone"
    "fixture/CreateHostedZone.yaml"

requestGetReusableDelegationSetLimit :: GetReusableDelegationSetLimit -> TestTree
requestGetReusableDelegationSetLimit =
  req
    "GetReusableDelegationSetLimit"
    "fixture/GetReusableDelegationSetLimit.yaml"

requestChangeResourceRecordSets :: ChangeResourceRecordSets -> TestTree
requestChangeResourceRecordSets =
  req
    "ChangeResourceRecordSets"
    "fixture/ChangeResourceRecordSets.yaml"

requestGetReusableDelegationSet :: GetReusableDelegationSet -> TestTree
requestGetReusableDelegationSet =
  req
    "GetReusableDelegationSet"
    "fixture/GetReusableDelegationSet.yaml"

requestGetCheckerIPRanges :: GetCheckerIPRanges -> TestTree
requestGetCheckerIPRanges =
  req
    "GetCheckerIPRanges"
    "fixture/GetCheckerIPRanges.yaml"

requestGetDNSSEC :: GetDNSSEC -> TestTree
requestGetDNSSEC =
  req
    "GetDNSSEC"
    "fixture/GetDNSSEC.yaml"

requestDeleteKeySigningKey :: DeleteKeySigningKey -> TestTree
requestDeleteKeySigningKey =
  req
    "DeleteKeySigningKey"
    "fixture/DeleteKeySigningKey.yaml"

requestGetTrafficPolicyInstance :: GetTrafficPolicyInstance -> TestTree
requestGetTrafficPolicyInstance =
  req
    "GetTrafficPolicyInstance"
    "fixture/GetTrafficPolicyInstance.yaml"

requestListReusableDelegationSets :: ListReusableDelegationSets -> TestTree
requestListReusableDelegationSets =
  req
    "ListReusableDelegationSets"
    "fixture/ListReusableDelegationSets.yaml"

requestGetAccountLimit :: GetAccountLimit -> TestTree
requestGetAccountLimit =
  req
    "GetAccountLimit"
    "fixture/GetAccountLimit.yaml"

requestCreateQueryLoggingConfig :: CreateQueryLoggingConfig -> TestTree
requestCreateQueryLoggingConfig =
  req
    "CreateQueryLoggingConfig"
    "fixture/CreateQueryLoggingConfig.yaml"

requestUpdateTrafficPolicyComment :: UpdateTrafficPolicyComment -> TestTree
requestUpdateTrafficPolicyComment =
  req
    "UpdateTrafficPolicyComment"
    "fixture/UpdateTrafficPolicyComment.yaml"

requestCreateKeySigningKey :: CreateKeySigningKey -> TestTree
requestCreateKeySigningKey =
  req
    "CreateKeySigningKey"
    "fixture/CreateKeySigningKey.yaml"

requestDisableHostedZoneDNSSEC :: DisableHostedZoneDNSSEC -> TestTree
requestDisableHostedZoneDNSSEC =
  req
    "DisableHostedZoneDNSSEC"
    "fixture/DisableHostedZoneDNSSEC.yaml"

requestListResourceRecordSets :: ListResourceRecordSets -> TestTree
requestListResourceRecordSets =
  req
    "ListResourceRecordSets"
    "fixture/ListResourceRecordSets.yaml"

requestDeleteTrafficPolicy :: DeleteTrafficPolicy -> TestTree
requestDeleteTrafficPolicy =
  req
    "DeleteTrafficPolicy"
    "fixture/DeleteTrafficPolicy.yaml"

requestGetHealthCheck :: GetHealthCheck -> TestTree
requestGetHealthCheck =
  req
    "GetHealthCheck"
    "fixture/GetHealthCheck.yaml"

requestListTrafficPolicyInstancesByHostedZone :: ListTrafficPolicyInstancesByHostedZone -> TestTree
requestListTrafficPolicyInstancesByHostedZone =
  req
    "ListTrafficPolicyInstancesByHostedZone"
    "fixture/ListTrafficPolicyInstancesByHostedZone.yaml"

requestListTagsForResources :: ListTagsForResources -> TestTree
requestListTagsForResources =
  req
    "ListTagsForResources"
    "fixture/ListTagsForResources.yaml"

requestGetTrafficPolicyInstanceCount :: GetTrafficPolicyInstanceCount -> TestTree
requestGetTrafficPolicyInstanceCount =
  req
    "GetTrafficPolicyInstanceCount"
    "fixture/GetTrafficPolicyInstanceCount.yaml"

requestGetHostedZone :: GetHostedZone -> TestTree
requestGetHostedZone =
  req
    "GetHostedZone"
    "fixture/GetHostedZone.yaml"

requestListVPCAssociationAuthorizations :: ListVPCAssociationAuthorizations -> TestTree
requestListVPCAssociationAuthorizations =
  req
    "ListVPCAssociationAuthorizations"
    "fixture/ListVPCAssociationAuthorizations.yaml"

requestListTrafficPolicyVersions :: ListTrafficPolicyVersions -> TestTree
requestListTrafficPolicyVersions =
  req
    "ListTrafficPolicyVersions"
    "fixture/ListTrafficPolicyVersions.yaml"

requestListTrafficPolicyInstancesByPolicy :: ListTrafficPolicyInstancesByPolicy -> TestTree
requestListTrafficPolicyInstancesByPolicy =
  req
    "ListTrafficPolicyInstancesByPolicy"
    "fixture/ListTrafficPolicyInstancesByPolicy.yaml"

requestListHealthChecks :: ListHealthChecks -> TestTree
requestListHealthChecks =
  req
    "ListHealthChecks"
    "fixture/ListHealthChecks.yaml"

requestDeleteHealthCheck :: DeleteHealthCheck -> TestTree
requestDeleteHealthCheck =
  req
    "DeleteHealthCheck"
    "fixture/DeleteHealthCheck.yaml"

requestCreateTrafficPolicyVersion :: CreateTrafficPolicyVersion -> TestTree
requestCreateTrafficPolicyVersion =
  req
    "CreateTrafficPolicyVersion"
    "fixture/CreateTrafficPolicyVersion.yaml"

requestGetTrafficPolicy :: GetTrafficPolicy -> TestTree
requestGetTrafficPolicy =
  req
    "GetTrafficPolicy"
    "fixture/GetTrafficPolicy.yaml"

requestCreateVPCAssociationAuthorization :: CreateVPCAssociationAuthorization -> TestTree
requestCreateVPCAssociationAuthorization =
  req
    "CreateVPCAssociationAuthorization"
    "fixture/CreateVPCAssociationAuthorization.yaml"

requestUpdateHealthCheck :: UpdateHealthCheck -> TestTree
requestUpdateHealthCheck =
  req
    "UpdateHealthCheck"
    "fixture/UpdateHealthCheck.yaml"

requestCreateTrafficPolicyInstance :: CreateTrafficPolicyInstance -> TestTree
requestCreateTrafficPolicyInstance =
  req
    "CreateTrafficPolicyInstance"
    "fixture/CreateTrafficPolicyInstance.yaml"

requestListHostedZonesByVPC :: ListHostedZonesByVPC -> TestTree
requestListHostedZonesByVPC =
  req
    "ListHostedZonesByVPC"
    "fixture/ListHostedZonesByVPC.yaml"

requestGetHealthCheckStatus :: GetHealthCheckStatus -> TestTree
requestGetHealthCheckStatus =
  req
    "GetHealthCheckStatus"
    "fixture/GetHealthCheckStatus.yaml"

requestGetChange :: GetChange -> TestTree
requestGetChange =
  req
    "GetChange"
    "fixture/GetChange.yaml"

requestUpdateHostedZoneComment :: UpdateHostedZoneComment -> TestTree
requestUpdateHostedZoneComment =
  req
    "UpdateHostedZoneComment"
    "fixture/UpdateHostedZoneComment.yaml"

requestListTrafficPolicyInstances :: ListTrafficPolicyInstances -> TestTree
requestListTrafficPolicyInstances =
  req
    "ListTrafficPolicyInstances"
    "fixture/ListTrafficPolicyInstances.yaml"

requestDeleteTrafficPolicyInstance :: DeleteTrafficPolicyInstance -> TestTree
requestDeleteTrafficPolicyInstance =
  req
    "DeleteTrafficPolicyInstance"
    "fixture/DeleteTrafficPolicyInstance.yaml"

requestUpdateTrafficPolicyInstance :: UpdateTrafficPolicyInstance -> TestTree
requestUpdateTrafficPolicyInstance =
  req
    "UpdateTrafficPolicyInstance"
    "fixture/UpdateTrafficPolicyInstance.yaml"

requestGetQueryLoggingConfig :: GetQueryLoggingConfig -> TestTree
requestGetQueryLoggingConfig =
  req
    "GetQueryLoggingConfig"
    "fixture/GetQueryLoggingConfig.yaml"

requestDeleteReusableDelegationSet :: DeleteReusableDelegationSet -> TestTree
requestDeleteReusableDelegationSet =
  req
    "DeleteReusableDelegationSet"
    "fixture/DeleteReusableDelegationSet.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDeleteQueryLoggingConfig :: DeleteQueryLoggingConfig -> TestTree
requestDeleteQueryLoggingConfig =
  req
    "DeleteQueryLoggingConfig"
    "fixture/DeleteQueryLoggingConfig.yaml"

requestGetHealthCheckLastFailureReason :: GetHealthCheckLastFailureReason -> TestTree
requestGetHealthCheckLastFailureReason =
  req
    "GetHealthCheckLastFailureReason"
    "fixture/GetHealthCheckLastFailureReason.yaml"

requestEnableHostedZoneDNSSEC :: EnableHostedZoneDNSSEC -> TestTree
requestEnableHostedZoneDNSSEC =
  req
    "EnableHostedZoneDNSSEC"
    "fixture/EnableHostedZoneDNSSEC.yaml"

requestListQueryLoggingConfigs :: ListQueryLoggingConfigs -> TestTree
requestListQueryLoggingConfigs =
  req
    "ListQueryLoggingConfigs"
    "fixture/ListQueryLoggingConfigs.yaml"

requestListHostedZonesByName :: ListHostedZonesByName -> TestTree
requestListHostedZonesByName =
  req
    "ListHostedZonesByName"
    "fixture/ListHostedZonesByName.yaml"

requestGetHostedZoneCount :: GetHostedZoneCount -> TestTree
requestGetHostedZoneCount =
  req
    "GetHostedZoneCount"
    "fixture/GetHostedZoneCount.yaml"

requestActivateKeySigningKey :: ActivateKeySigningKey -> TestTree
requestActivateKeySigningKey =
  req
    "ActivateKeySigningKey"
    "fixture/ActivateKeySigningKey.yaml"

-- Responses

responseCreateReusableDelegationSet :: CreateReusableDelegationSetResponse -> TestTree
responseCreateReusableDelegationSet =
  res
    "CreateReusableDelegationSetResponse"
    "fixture/CreateReusableDelegationSetResponse.proto"
    route53
    (Proxy :: Proxy CreateReusableDelegationSet)

responseGetHealthCheckCount :: GetHealthCheckCountResponse -> TestTree
responseGetHealthCheckCount =
  res
    "GetHealthCheckCountResponse"
    "fixture/GetHealthCheckCountResponse.proto"
    route53
    (Proxy :: Proxy GetHealthCheckCount)

responseGetHostedZoneLimit :: GetHostedZoneLimitResponse -> TestTree
responseGetHostedZoneLimit =
  res
    "GetHostedZoneLimitResponse"
    "fixture/GetHostedZoneLimitResponse.proto"
    route53
    (Proxy :: Proxy GetHostedZoneLimit)

responseAssociateVPCWithHostedZone :: AssociateVPCWithHostedZoneResponse -> TestTree
responseAssociateVPCWithHostedZone =
  res
    "AssociateVPCWithHostedZoneResponse"
    "fixture/AssociateVPCWithHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy AssociateVPCWithHostedZone)

responseListGeoLocations :: ListGeoLocationsResponse -> TestTree
responseListGeoLocations =
  res
    "ListGeoLocationsResponse"
    "fixture/ListGeoLocationsResponse.proto"
    route53
    (Proxy :: Proxy ListGeoLocations)

responseListTrafficPolicies :: ListTrafficPoliciesResponse -> TestTree
responseListTrafficPolicies =
  res
    "ListTrafficPoliciesResponse"
    "fixture/ListTrafficPoliciesResponse.proto"
    route53
    (Proxy :: Proxy ListTrafficPolicies)

responseCreateTrafficPolicy :: CreateTrafficPolicyResponse -> TestTree
responseCreateTrafficPolicy =
  res
    "CreateTrafficPolicyResponse"
    "fixture/CreateTrafficPolicyResponse.proto"
    route53
    (Proxy :: Proxy CreateTrafficPolicy)

responseDeleteHostedZone :: DeleteHostedZoneResponse -> TestTree
responseDeleteHostedZone =
  res
    "DeleteHostedZoneResponse"
    "fixture/DeleteHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy DeleteHostedZone)

responseCreateHealthCheck :: CreateHealthCheckResponse -> TestTree
responseCreateHealthCheck =
  res
    "CreateHealthCheckResponse"
    "fixture/CreateHealthCheckResponse.proto"
    route53
    (Proxy :: Proxy CreateHealthCheck)

responseDisassociateVPCFromHostedZone :: DisassociateVPCFromHostedZoneResponse -> TestTree
responseDisassociateVPCFromHostedZone =
  res
    "DisassociateVPCFromHostedZoneResponse"
    "fixture/DisassociateVPCFromHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy DisassociateVPCFromHostedZone)

responseChangeTagsForResource :: ChangeTagsForResourceResponse -> TestTree
responseChangeTagsForResource =
  res
    "ChangeTagsForResourceResponse"
    "fixture/ChangeTagsForResourceResponse.proto"
    route53
    (Proxy :: Proxy ChangeTagsForResource)

responseGetGeoLocation :: GetGeoLocationResponse -> TestTree
responseGetGeoLocation =
  res
    "GetGeoLocationResponse"
    "fixture/GetGeoLocationResponse.proto"
    route53
    (Proxy :: Proxy GetGeoLocation)

responseDeleteVPCAssociationAuthorization :: DeleteVPCAssociationAuthorizationResponse -> TestTree
responseDeleteVPCAssociationAuthorization =
  res
    "DeleteVPCAssociationAuthorizationResponse"
    "fixture/DeleteVPCAssociationAuthorizationResponse.proto"
    route53
    (Proxy :: Proxy DeleteVPCAssociationAuthorization)

responseListHostedZones :: ListHostedZonesResponse -> TestTree
responseListHostedZones =
  res
    "ListHostedZonesResponse"
    "fixture/ListHostedZonesResponse.proto"
    route53
    (Proxy :: Proxy ListHostedZones)

responseDeactivateKeySigningKey :: DeactivateKeySigningKeyResponse -> TestTree
responseDeactivateKeySigningKey =
  res
    "DeactivateKeySigningKeyResponse"
    "fixture/DeactivateKeySigningKeyResponse.proto"
    route53
    (Proxy :: Proxy DeactivateKeySigningKey)

responseTestDNSAnswer :: TestDNSAnswerResponse -> TestTree
responseTestDNSAnswer =
  res
    "TestDNSAnswerResponse"
    "fixture/TestDNSAnswerResponse.proto"
    route53
    (Proxy :: Proxy TestDNSAnswer)

responseCreateHostedZone :: CreateHostedZoneResponse -> TestTree
responseCreateHostedZone =
  res
    "CreateHostedZoneResponse"
    "fixture/CreateHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy CreateHostedZone)

responseGetReusableDelegationSetLimit :: GetReusableDelegationSetLimitResponse -> TestTree
responseGetReusableDelegationSetLimit =
  res
    "GetReusableDelegationSetLimitResponse"
    "fixture/GetReusableDelegationSetLimitResponse.proto"
    route53
    (Proxy :: Proxy GetReusableDelegationSetLimit)

responseChangeResourceRecordSets :: ChangeResourceRecordSetsResponse -> TestTree
responseChangeResourceRecordSets =
  res
    "ChangeResourceRecordSetsResponse"
    "fixture/ChangeResourceRecordSetsResponse.proto"
    route53
    (Proxy :: Proxy ChangeResourceRecordSets)

responseGetReusableDelegationSet :: GetReusableDelegationSetResponse -> TestTree
responseGetReusableDelegationSet =
  res
    "GetReusableDelegationSetResponse"
    "fixture/GetReusableDelegationSetResponse.proto"
    route53
    (Proxy :: Proxy GetReusableDelegationSet)

responseGetCheckerIPRanges :: GetCheckerIPRangesResponse -> TestTree
responseGetCheckerIPRanges =
  res
    "GetCheckerIPRangesResponse"
    "fixture/GetCheckerIPRangesResponse.proto"
    route53
    (Proxy :: Proxy GetCheckerIPRanges)

responseGetDNSSEC :: GetDNSSECResponse -> TestTree
responseGetDNSSEC =
  res
    "GetDNSSECResponse"
    "fixture/GetDNSSECResponse.proto"
    route53
    (Proxy :: Proxy GetDNSSEC)

responseDeleteKeySigningKey :: DeleteKeySigningKeyResponse -> TestTree
responseDeleteKeySigningKey =
  res
    "DeleteKeySigningKeyResponse"
    "fixture/DeleteKeySigningKeyResponse.proto"
    route53
    (Proxy :: Proxy DeleteKeySigningKey)

responseGetTrafficPolicyInstance :: GetTrafficPolicyInstanceResponse -> TestTree
responseGetTrafficPolicyInstance =
  res
    "GetTrafficPolicyInstanceResponse"
    "fixture/GetTrafficPolicyInstanceResponse.proto"
    route53
    (Proxy :: Proxy GetTrafficPolicyInstance)

responseListReusableDelegationSets :: ListReusableDelegationSetsResponse -> TestTree
responseListReusableDelegationSets =
  res
    "ListReusableDelegationSetsResponse"
    "fixture/ListReusableDelegationSetsResponse.proto"
    route53
    (Proxy :: Proxy ListReusableDelegationSets)

responseGetAccountLimit :: GetAccountLimitResponse -> TestTree
responseGetAccountLimit =
  res
    "GetAccountLimitResponse"
    "fixture/GetAccountLimitResponse.proto"
    route53
    (Proxy :: Proxy GetAccountLimit)

responseCreateQueryLoggingConfig :: CreateQueryLoggingConfigResponse -> TestTree
responseCreateQueryLoggingConfig =
  res
    "CreateQueryLoggingConfigResponse"
    "fixture/CreateQueryLoggingConfigResponse.proto"
    route53
    (Proxy :: Proxy CreateQueryLoggingConfig)

responseUpdateTrafficPolicyComment :: UpdateTrafficPolicyCommentResponse -> TestTree
responseUpdateTrafficPolicyComment =
  res
    "UpdateTrafficPolicyCommentResponse"
    "fixture/UpdateTrafficPolicyCommentResponse.proto"
    route53
    (Proxy :: Proxy UpdateTrafficPolicyComment)

responseCreateKeySigningKey :: CreateKeySigningKeyResponse -> TestTree
responseCreateKeySigningKey =
  res
    "CreateKeySigningKeyResponse"
    "fixture/CreateKeySigningKeyResponse.proto"
    route53
    (Proxy :: Proxy CreateKeySigningKey)

responseDisableHostedZoneDNSSEC :: DisableHostedZoneDNSSECResponse -> TestTree
responseDisableHostedZoneDNSSEC =
  res
    "DisableHostedZoneDNSSECResponse"
    "fixture/DisableHostedZoneDNSSECResponse.proto"
    route53
    (Proxy :: Proxy DisableHostedZoneDNSSEC)

responseListResourceRecordSets :: ListResourceRecordSetsResponse -> TestTree
responseListResourceRecordSets =
  res
    "ListResourceRecordSetsResponse"
    "fixture/ListResourceRecordSetsResponse.proto"
    route53
    (Proxy :: Proxy ListResourceRecordSets)

responseDeleteTrafficPolicy :: DeleteTrafficPolicyResponse -> TestTree
responseDeleteTrafficPolicy =
  res
    "DeleteTrafficPolicyResponse"
    "fixture/DeleteTrafficPolicyResponse.proto"
    route53
    (Proxy :: Proxy DeleteTrafficPolicy)

responseGetHealthCheck :: GetHealthCheckResponse -> TestTree
responseGetHealthCheck =
  res
    "GetHealthCheckResponse"
    "fixture/GetHealthCheckResponse.proto"
    route53
    (Proxy :: Proxy GetHealthCheck)

responseListTrafficPolicyInstancesByHostedZone :: ListTrafficPolicyInstancesByHostedZoneResponse -> TestTree
responseListTrafficPolicyInstancesByHostedZone =
  res
    "ListTrafficPolicyInstancesByHostedZoneResponse"
    "fixture/ListTrafficPolicyInstancesByHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy ListTrafficPolicyInstancesByHostedZone)

responseListTagsForResources :: ListTagsForResourcesResponse -> TestTree
responseListTagsForResources =
  res
    "ListTagsForResourcesResponse"
    "fixture/ListTagsForResourcesResponse.proto"
    route53
    (Proxy :: Proxy ListTagsForResources)

responseGetTrafficPolicyInstanceCount :: GetTrafficPolicyInstanceCountResponse -> TestTree
responseGetTrafficPolicyInstanceCount =
  res
    "GetTrafficPolicyInstanceCountResponse"
    "fixture/GetTrafficPolicyInstanceCountResponse.proto"
    route53
    (Proxy :: Proxy GetTrafficPolicyInstanceCount)

responseGetHostedZone :: GetHostedZoneResponse -> TestTree
responseGetHostedZone =
  res
    "GetHostedZoneResponse"
    "fixture/GetHostedZoneResponse.proto"
    route53
    (Proxy :: Proxy GetHostedZone)

responseListVPCAssociationAuthorizations :: ListVPCAssociationAuthorizationsResponse -> TestTree
responseListVPCAssociationAuthorizations =
  res
    "ListVPCAssociationAuthorizationsResponse"
    "fixture/ListVPCAssociationAuthorizationsResponse.proto"
    route53
    (Proxy :: Proxy ListVPCAssociationAuthorizations)

responseListTrafficPolicyVersions :: ListTrafficPolicyVersionsResponse -> TestTree
responseListTrafficPolicyVersions =
  res
    "ListTrafficPolicyVersionsResponse"
    "fixture/ListTrafficPolicyVersionsResponse.proto"
    route53
    (Proxy :: Proxy ListTrafficPolicyVersions)

responseListTrafficPolicyInstancesByPolicy :: ListTrafficPolicyInstancesByPolicyResponse -> TestTree
responseListTrafficPolicyInstancesByPolicy =
  res
    "ListTrafficPolicyInstancesByPolicyResponse"
    "fixture/ListTrafficPolicyInstancesByPolicyResponse.proto"
    route53
    (Proxy :: Proxy ListTrafficPolicyInstancesByPolicy)

responseListHealthChecks :: ListHealthChecksResponse -> TestTree
responseListHealthChecks =
  res
    "ListHealthChecksResponse"
    "fixture/ListHealthChecksResponse.proto"
    route53
    (Proxy :: Proxy ListHealthChecks)

responseDeleteHealthCheck :: DeleteHealthCheckResponse -> TestTree
responseDeleteHealthCheck =
  res
    "DeleteHealthCheckResponse"
    "fixture/DeleteHealthCheckResponse.proto"
    route53
    (Proxy :: Proxy DeleteHealthCheck)

responseCreateTrafficPolicyVersion :: CreateTrafficPolicyVersionResponse -> TestTree
responseCreateTrafficPolicyVersion =
  res
    "CreateTrafficPolicyVersionResponse"
    "fixture/CreateTrafficPolicyVersionResponse.proto"
    route53
    (Proxy :: Proxy CreateTrafficPolicyVersion)

responseGetTrafficPolicy :: GetTrafficPolicyResponse -> TestTree
responseGetTrafficPolicy =
  res
    "GetTrafficPolicyResponse"
    "fixture/GetTrafficPolicyResponse.proto"
    route53
    (Proxy :: Proxy GetTrafficPolicy)

responseCreateVPCAssociationAuthorization :: CreateVPCAssociationAuthorizationResponse -> TestTree
responseCreateVPCAssociationAuthorization =
  res
    "CreateVPCAssociationAuthorizationResponse"
    "fixture/CreateVPCAssociationAuthorizationResponse.proto"
    route53
    (Proxy :: Proxy CreateVPCAssociationAuthorization)

responseUpdateHealthCheck :: UpdateHealthCheckResponse -> TestTree
responseUpdateHealthCheck =
  res
    "UpdateHealthCheckResponse"
    "fixture/UpdateHealthCheckResponse.proto"
    route53
    (Proxy :: Proxy UpdateHealthCheck)

responseCreateTrafficPolicyInstance :: CreateTrafficPolicyInstanceResponse -> TestTree
responseCreateTrafficPolicyInstance =
  res
    "CreateTrafficPolicyInstanceResponse"
    "fixture/CreateTrafficPolicyInstanceResponse.proto"
    route53
    (Proxy :: Proxy CreateTrafficPolicyInstance)

responseListHostedZonesByVPC :: ListHostedZonesByVPCResponse -> TestTree
responseListHostedZonesByVPC =
  res
    "ListHostedZonesByVPCResponse"
    "fixture/ListHostedZonesByVPCResponse.proto"
    route53
    (Proxy :: Proxy ListHostedZonesByVPC)

responseGetHealthCheckStatus :: GetHealthCheckStatusResponse -> TestTree
responseGetHealthCheckStatus =
  res
    "GetHealthCheckStatusResponse"
    "fixture/GetHealthCheckStatusResponse.proto"
    route53
    (Proxy :: Proxy GetHealthCheckStatus)

responseGetChange :: GetChangeResponse -> TestTree
responseGetChange =
  res
    "GetChangeResponse"
    "fixture/GetChangeResponse.proto"
    route53
    (Proxy :: Proxy GetChange)

responseUpdateHostedZoneComment :: UpdateHostedZoneCommentResponse -> TestTree
responseUpdateHostedZoneComment =
  res
    "UpdateHostedZoneCommentResponse"
    "fixture/UpdateHostedZoneCommentResponse.proto"
    route53
    (Proxy :: Proxy UpdateHostedZoneComment)

responseListTrafficPolicyInstances :: ListTrafficPolicyInstancesResponse -> TestTree
responseListTrafficPolicyInstances =
  res
    "ListTrafficPolicyInstancesResponse"
    "fixture/ListTrafficPolicyInstancesResponse.proto"
    route53
    (Proxy :: Proxy ListTrafficPolicyInstances)

responseDeleteTrafficPolicyInstance :: DeleteTrafficPolicyInstanceResponse -> TestTree
responseDeleteTrafficPolicyInstance =
  res
    "DeleteTrafficPolicyInstanceResponse"
    "fixture/DeleteTrafficPolicyInstanceResponse.proto"
    route53
    (Proxy :: Proxy DeleteTrafficPolicyInstance)

responseUpdateTrafficPolicyInstance :: UpdateTrafficPolicyInstanceResponse -> TestTree
responseUpdateTrafficPolicyInstance =
  res
    "UpdateTrafficPolicyInstanceResponse"
    "fixture/UpdateTrafficPolicyInstanceResponse.proto"
    route53
    (Proxy :: Proxy UpdateTrafficPolicyInstance)

responseGetQueryLoggingConfig :: GetQueryLoggingConfigResponse -> TestTree
responseGetQueryLoggingConfig =
  res
    "GetQueryLoggingConfigResponse"
    "fixture/GetQueryLoggingConfigResponse.proto"
    route53
    (Proxy :: Proxy GetQueryLoggingConfig)

responseDeleteReusableDelegationSet :: DeleteReusableDelegationSetResponse -> TestTree
responseDeleteReusableDelegationSet =
  res
    "DeleteReusableDelegationSetResponse"
    "fixture/DeleteReusableDelegationSetResponse.proto"
    route53
    (Proxy :: Proxy DeleteReusableDelegationSet)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    route53
    (Proxy :: Proxy ListTagsForResource)

responseDeleteQueryLoggingConfig :: DeleteQueryLoggingConfigResponse -> TestTree
responseDeleteQueryLoggingConfig =
  res
    "DeleteQueryLoggingConfigResponse"
    "fixture/DeleteQueryLoggingConfigResponse.proto"
    route53
    (Proxy :: Proxy DeleteQueryLoggingConfig)

responseGetHealthCheckLastFailureReason :: GetHealthCheckLastFailureReasonResponse -> TestTree
responseGetHealthCheckLastFailureReason =
  res
    "GetHealthCheckLastFailureReasonResponse"
    "fixture/GetHealthCheckLastFailureReasonResponse.proto"
    route53
    (Proxy :: Proxy GetHealthCheckLastFailureReason)

responseEnableHostedZoneDNSSEC :: EnableHostedZoneDNSSECResponse -> TestTree
responseEnableHostedZoneDNSSEC =
  res
    "EnableHostedZoneDNSSECResponse"
    "fixture/EnableHostedZoneDNSSECResponse.proto"
    route53
    (Proxy :: Proxy EnableHostedZoneDNSSEC)

responseListQueryLoggingConfigs :: ListQueryLoggingConfigsResponse -> TestTree
responseListQueryLoggingConfigs =
  res
    "ListQueryLoggingConfigsResponse"
    "fixture/ListQueryLoggingConfigsResponse.proto"
    route53
    (Proxy :: Proxy ListQueryLoggingConfigs)

responseListHostedZonesByName :: ListHostedZonesByNameResponse -> TestTree
responseListHostedZonesByName =
  res
    "ListHostedZonesByNameResponse"
    "fixture/ListHostedZonesByNameResponse.proto"
    route53
    (Proxy :: Proxy ListHostedZonesByName)

responseGetHostedZoneCount :: GetHostedZoneCountResponse -> TestTree
responseGetHostedZoneCount =
  res
    "GetHostedZoneCountResponse"
    "fixture/GetHostedZoneCountResponse.proto"
    route53
    (Proxy :: Proxy GetHostedZoneCount)

responseActivateKeySigningKey :: ActivateKeySigningKeyResponse -> TestTree
responseActivateKeySigningKey =
  res
    "ActivateKeySigningKeyResponse"
    "fixture/ActivateKeySigningKeyResponse.proto"
    route53
    (Proxy :: Proxy ActivateKeySigningKey)
