{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudFront
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudFront where

import Data.Proxy
import Network.AWS.CloudFront
import Test.AWS.CloudFront.Internal
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
--         [ requestUpdatePublicKey $
--             updatePublicKey
--
--         , requestDeletePublicKey $
--             deletePublicKey
--
--         , requestListPublicKeys $
--             listPublicKeys
--
--         , requestGetDistribution $
--             getDistribution
--
--         , requestGetKeyGroupConfig $
--             getKeyGroupConfig
--
--         , requestCreateFieldLevelEncryptionProfile $
--             createFieldLevelEncryptionProfile
--
--         , requestGetMonitoringSubscription $
--             getMonitoringSubscription
--
--         , requestCreateOriginRequestPolicy $
--             createOriginRequestPolicy
--
--         , requestListDistributionsByCachePolicyId $
--             listDistributionsByCachePolicyId
--
--         , requestListKeyGroups $
--             listKeyGroups
--
--         , requestListOriginRequestPolicies $
--             listOriginRequestPolicies
--
--         , requestGetKeyGroup $
--             getKeyGroup
--
--         , requestGetDistributionConfig $
--             getDistributionConfig
--
--         , requestListDistributions $
--             listDistributions
--
--         , requestUntagResource $
--             untagResource
--
--         , requestListDistributionsByWebACLId $
--             listDistributionsByWebACLId
--
--         , requestGetCloudFrontOriginAccessIdentity $
--             getCloudFrontOriginAccessIdentity
--
--         , requestGetPublicKey $
--             getPublicKey
--
--         , requestListRealtimeLogConfigs $
--             listRealtimeLogConfigs
--
--         , requestUpdateFieldLevelEncryptionConfig $
--             updateFieldLevelEncryptionConfig
--
--         , requestCreateCachePolicy $
--             createCachePolicy
--
--         , requestListDistributionsByKeyGroup $
--             listDistributionsByKeyGroup
--
--         , requestTagResource $
--             tagResource
--
--         , requestListCachePolicies $
--             listCachePolicies
--
--         , requestListDistributionsByOriginRequestPolicyId $
--             listDistributionsByOriginRequestPolicyId
--
--         , requestListFieldLevelEncryptionConfigs $
--             listFieldLevelEncryptionConfigs
--
--         , requestDeleteFieldLevelEncryptionConfig $
--             deleteFieldLevelEncryptionConfig
--
--         , requestDeleteCachePolicy $
--             deleteCachePolicy
--
--         , requestGetFieldLevelEncryption $
--             getFieldLevelEncryption
--
--         , requestUpdateCachePolicy $
--             updateCachePolicy
--
--         , requestGetInvalidation $
--             getInvalidation
--
--         , requestGetPublicKeyConfig $
--             getPublicKeyConfig
--
--         , requestGetCloudFrontOriginAccessIdentityConfig $
--             getCloudFrontOriginAccessIdentityConfig
--
--         , requestCreateStreamingDistribution $
--             createStreamingDistribution
--
--         , requestDeleteCloudFrontOriginAccessIdentity $
--             deleteCloudFrontOriginAccessIdentity
--
--         , requestDeleteStreamingDistribution $
--             deleteStreamingDistribution
--
--         , requestGetFieldLevelEncryptionConfig $
--             getFieldLevelEncryptionConfig
--
--         , requestGetRealtimeLogConfig $
--             getRealtimeLogConfig
--
--         , requestUpdateCloudFrontOriginAccessIdentity $
--             updateCloudFrontOriginAccessIdentity
--
--         , requestUpdateStreamingDistribution $
--             updateStreamingDistribution
--
--         , requestListStreamingDistributions $
--             listStreamingDistributions
--
--         , requestCreateKeyGroup $
--             createKeyGroup
--
--         , requestUpdateOriginRequestPolicy $
--             updateOriginRequestPolicy
--
--         , requestGetFieldLevelEncryptionProfileConfig $
--             getFieldLevelEncryptionProfileConfig
--
--         , requestDeleteOriginRequestPolicy $
--             deleteOriginRequestPolicy
--
--         , requestListFieldLevelEncryptionProfiles $
--             listFieldLevelEncryptionProfiles
--
--         , requestDeleteFieldLevelEncryptionProfile $
--             deleteFieldLevelEncryptionProfile
--
--         , requestGetOriginRequestPolicyConfig $
--             getOriginRequestPolicyConfig
--
--         , requestUpdateKeyGroup $
--             updateKeyGroup
--
--         , requestDeleteKeyGroup $
--             deleteKeyGroup
--
--         , requestCreateStreamingDistributionWithTags $
--             createStreamingDistributionWithTags
--
--         , requestListDistributionsByRealtimeLogConfig $
--             listDistributionsByRealtimeLogConfig
--
--         , requestUpdateFieldLevelEncryptionProfile $
--             updateFieldLevelEncryptionProfile
--
--         , requestCreateDistribution $
--             createDistribution
--
--         , requestDeleteMonitoringSubscription $
--             deleteMonitoringSubscription
--
--         , requestGetFieldLevelEncryptionProfile $
--             getFieldLevelEncryptionProfile
--
--         , requestCreateMonitoringSubscription $
--             createMonitoringSubscription
--
--         , requestGetOriginRequestPolicy $
--             getOriginRequestPolicy
--
--         , requestUpdateDistribution $
--             updateDistribution
--
--         , requestDeleteDistribution $
--             deleteDistribution
--
--         , requestDeleteRealtimeLogConfig $
--             deleteRealtimeLogConfig
--
--         , requestGetStreamingDistribution $
--             getStreamingDistribution
--
--         , requestCreateInvalidation $
--             createInvalidation
--
--         , requestGetCachePolicyConfig $
--             getCachePolicyConfig
--
--         , requestUpdateRealtimeLogConfig $
--             updateRealtimeLogConfig
--
--         , requestCreateRealtimeLogConfig $
--             createRealtimeLogConfig
--
--         , requestCreateDistributionWithTags $
--             createDistributionWithTags
--
--         , requestCreateFieldLevelEncryptionConfig $
--             createFieldLevelEncryptionConfig
--
--         , requestListInvalidations $
--             listInvalidations
--
--         , requestListCloudFrontOriginAccessIdentities $
--             listCloudFrontOriginAccessIdentities
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetStreamingDistributionConfig $
--             getStreamingDistributionConfig
--
--         , requestGetCachePolicy $
--             getCachePolicy
--
--         , requestCreateCloudFrontOriginAccessIdentity $
--             createCloudFrontOriginAccessIdentity
--
--         , requestCreatePublicKey $
--             createPublicKey
--
--           ]

--     , testGroup "response"
--         [ responseUpdatePublicKey $
--             updatePublicKeyResponse
--
--         , responseDeletePublicKey $
--             deletePublicKeyResponse
--
--         , responseListPublicKeys $
--             listPublicKeysResponse
--
--         , responseGetDistribution $
--             getDistributionResponse
--
--         , responseGetKeyGroupConfig $
--             getKeyGroupConfigResponse
--
--         , responseCreateFieldLevelEncryptionProfile $
--             createFieldLevelEncryptionProfileResponse
--
--         , responseGetMonitoringSubscription $
--             getMonitoringSubscriptionResponse
--
--         , responseCreateOriginRequestPolicy $
--             createOriginRequestPolicyResponse
--
--         , responseListDistributionsByCachePolicyId $
--             listDistributionsByCachePolicyIdResponse
--
--         , responseListKeyGroups $
--             listKeyGroupsResponse
--
--         , responseListOriginRequestPolicies $
--             listOriginRequestPoliciesResponse
--
--         , responseGetKeyGroup $
--             getKeyGroupResponse
--
--         , responseGetDistributionConfig $
--             getDistributionConfigResponse
--
--         , responseListDistributions $
--             listDistributionsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseListDistributionsByWebACLId $
--             listDistributionsByWebACLIdResponse
--
--         , responseGetCloudFrontOriginAccessIdentity $
--             getCloudFrontOriginAccessIdentityResponse
--
--         , responseGetPublicKey $
--             getPublicKeyResponse
--
--         , responseListRealtimeLogConfigs $
--             listRealtimeLogConfigsResponse
--
--         , responseUpdateFieldLevelEncryptionConfig $
--             updateFieldLevelEncryptionConfigResponse
--
--         , responseCreateCachePolicy $
--             createCachePolicyResponse
--
--         , responseListDistributionsByKeyGroup $
--             listDistributionsByKeyGroupResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListCachePolicies $
--             listCachePoliciesResponse
--
--         , responseListDistributionsByOriginRequestPolicyId $
--             listDistributionsByOriginRequestPolicyIdResponse
--
--         , responseListFieldLevelEncryptionConfigs $
--             listFieldLevelEncryptionConfigsResponse
--
--         , responseDeleteFieldLevelEncryptionConfig $
--             deleteFieldLevelEncryptionConfigResponse
--
--         , responseDeleteCachePolicy $
--             deleteCachePolicyResponse
--
--         , responseGetFieldLevelEncryption $
--             getFieldLevelEncryptionResponse
--
--         , responseUpdateCachePolicy $
--             updateCachePolicyResponse
--
--         , responseGetInvalidation $
--             getInvalidationResponse
--
--         , responseGetPublicKeyConfig $
--             getPublicKeyConfigResponse
--
--         , responseGetCloudFrontOriginAccessIdentityConfig $
--             getCloudFrontOriginAccessIdentityConfigResponse
--
--         , responseCreateStreamingDistribution $
--             createStreamingDistributionResponse
--
--         , responseDeleteCloudFrontOriginAccessIdentity $
--             deleteCloudFrontOriginAccessIdentityResponse
--
--         , responseDeleteStreamingDistribution $
--             deleteStreamingDistributionResponse
--
--         , responseGetFieldLevelEncryptionConfig $
--             getFieldLevelEncryptionConfigResponse
--
--         , responseGetRealtimeLogConfig $
--             getRealtimeLogConfigResponse
--
--         , responseUpdateCloudFrontOriginAccessIdentity $
--             updateCloudFrontOriginAccessIdentityResponse
--
--         , responseUpdateStreamingDistribution $
--             updateStreamingDistributionResponse
--
--         , responseListStreamingDistributions $
--             listStreamingDistributionsResponse
--
--         , responseCreateKeyGroup $
--             createKeyGroupResponse
--
--         , responseUpdateOriginRequestPolicy $
--             updateOriginRequestPolicyResponse
--
--         , responseGetFieldLevelEncryptionProfileConfig $
--             getFieldLevelEncryptionProfileConfigResponse
--
--         , responseDeleteOriginRequestPolicy $
--             deleteOriginRequestPolicyResponse
--
--         , responseListFieldLevelEncryptionProfiles $
--             listFieldLevelEncryptionProfilesResponse
--
--         , responseDeleteFieldLevelEncryptionProfile $
--             deleteFieldLevelEncryptionProfileResponse
--
--         , responseGetOriginRequestPolicyConfig $
--             getOriginRequestPolicyConfigResponse
--
--         , responseUpdateKeyGroup $
--             updateKeyGroupResponse
--
--         , responseDeleteKeyGroup $
--             deleteKeyGroupResponse
--
--         , responseCreateStreamingDistributionWithTags $
--             createStreamingDistributionWithTagsResponse
--
--         , responseListDistributionsByRealtimeLogConfig $
--             listDistributionsByRealtimeLogConfigResponse
--
--         , responseUpdateFieldLevelEncryptionProfile $
--             updateFieldLevelEncryptionProfileResponse
--
--         , responseCreateDistribution $
--             createDistributionResponse
--
--         , responseDeleteMonitoringSubscription $
--             deleteMonitoringSubscriptionResponse
--
--         , responseGetFieldLevelEncryptionProfile $
--             getFieldLevelEncryptionProfileResponse
--
--         , responseCreateMonitoringSubscription $
--             createMonitoringSubscriptionResponse
--
--         , responseGetOriginRequestPolicy $
--             getOriginRequestPolicyResponse
--
--         , responseUpdateDistribution $
--             updateDistributionResponse
--
--         , responseDeleteDistribution $
--             deleteDistributionResponse
--
--         , responseDeleteRealtimeLogConfig $
--             deleteRealtimeLogConfigResponse
--
--         , responseGetStreamingDistribution $
--             getStreamingDistributionResponse
--
--         , responseCreateInvalidation $
--             createInvalidationResponse
--
--         , responseGetCachePolicyConfig $
--             getCachePolicyConfigResponse
--
--         , responseUpdateRealtimeLogConfig $
--             updateRealtimeLogConfigResponse
--
--         , responseCreateRealtimeLogConfig $
--             createRealtimeLogConfigResponse
--
--         , responseCreateDistributionWithTags $
--             createDistributionWithTagsResponse
--
--         , responseCreateFieldLevelEncryptionConfig $
--             createFieldLevelEncryptionConfigResponse
--
--         , responseListInvalidations $
--             listInvalidationsResponse
--
--         , responseListCloudFrontOriginAccessIdentities $
--             listCloudFrontOriginAccessIdentitiesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetStreamingDistributionConfig $
--             getStreamingDistributionConfigResponse
--
--         , responseGetCachePolicy $
--             getCachePolicyResponse
--
--         , responseCreateCloudFrontOriginAccessIdentity $
--             createCloudFrontOriginAccessIdentityResponse
--
--         , responseCreatePublicKey $
--             createPublicKeyResponse
--
--           ]
--     ]

-- Requests

requestUpdatePublicKey :: UpdatePublicKey -> TestTree
requestUpdatePublicKey =
  req
    "UpdatePublicKey"
    "fixture/UpdatePublicKey.yaml"

requestDeletePublicKey :: DeletePublicKey -> TestTree
requestDeletePublicKey =
  req
    "DeletePublicKey"
    "fixture/DeletePublicKey.yaml"

requestListPublicKeys :: ListPublicKeys -> TestTree
requestListPublicKeys =
  req
    "ListPublicKeys"
    "fixture/ListPublicKeys.yaml"

requestGetDistribution :: GetDistribution -> TestTree
requestGetDistribution =
  req
    "GetDistribution"
    "fixture/GetDistribution.yaml"

requestGetKeyGroupConfig :: GetKeyGroupConfig -> TestTree
requestGetKeyGroupConfig =
  req
    "GetKeyGroupConfig"
    "fixture/GetKeyGroupConfig.yaml"

requestCreateFieldLevelEncryptionProfile :: CreateFieldLevelEncryptionProfile -> TestTree
requestCreateFieldLevelEncryptionProfile =
  req
    "CreateFieldLevelEncryptionProfile"
    "fixture/CreateFieldLevelEncryptionProfile.yaml"

requestGetMonitoringSubscription :: GetMonitoringSubscription -> TestTree
requestGetMonitoringSubscription =
  req
    "GetMonitoringSubscription"
    "fixture/GetMonitoringSubscription.yaml"

requestCreateOriginRequestPolicy :: CreateOriginRequestPolicy -> TestTree
requestCreateOriginRequestPolicy =
  req
    "CreateOriginRequestPolicy"
    "fixture/CreateOriginRequestPolicy.yaml"

requestListDistributionsByCachePolicyId :: ListDistributionsByCachePolicyId -> TestTree
requestListDistributionsByCachePolicyId =
  req
    "ListDistributionsByCachePolicyId"
    "fixture/ListDistributionsByCachePolicyId.yaml"

requestListKeyGroups :: ListKeyGroups -> TestTree
requestListKeyGroups =
  req
    "ListKeyGroups"
    "fixture/ListKeyGroups.yaml"

requestListOriginRequestPolicies :: ListOriginRequestPolicies -> TestTree
requestListOriginRequestPolicies =
  req
    "ListOriginRequestPolicies"
    "fixture/ListOriginRequestPolicies.yaml"

requestGetKeyGroup :: GetKeyGroup -> TestTree
requestGetKeyGroup =
  req
    "GetKeyGroup"
    "fixture/GetKeyGroup.yaml"

requestGetDistributionConfig :: GetDistributionConfig -> TestTree
requestGetDistributionConfig =
  req
    "GetDistributionConfig"
    "fixture/GetDistributionConfig.yaml"

requestListDistributions :: ListDistributions -> TestTree
requestListDistributions =
  req
    "ListDistributions"
    "fixture/ListDistributions.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestListDistributionsByWebACLId :: ListDistributionsByWebACLId -> TestTree
requestListDistributionsByWebACLId =
  req
    "ListDistributionsByWebACLId"
    "fixture/ListDistributionsByWebACLId.yaml"

requestGetCloudFrontOriginAccessIdentity :: GetCloudFrontOriginAccessIdentity -> TestTree
requestGetCloudFrontOriginAccessIdentity =
  req
    "GetCloudFrontOriginAccessIdentity"
    "fixture/GetCloudFrontOriginAccessIdentity.yaml"

requestGetPublicKey :: GetPublicKey -> TestTree
requestGetPublicKey =
  req
    "GetPublicKey"
    "fixture/GetPublicKey.yaml"

requestListRealtimeLogConfigs :: ListRealtimeLogConfigs -> TestTree
requestListRealtimeLogConfigs =
  req
    "ListRealtimeLogConfigs"
    "fixture/ListRealtimeLogConfigs.yaml"

requestUpdateFieldLevelEncryptionConfig :: UpdateFieldLevelEncryptionConfig -> TestTree
requestUpdateFieldLevelEncryptionConfig =
  req
    "UpdateFieldLevelEncryptionConfig"
    "fixture/UpdateFieldLevelEncryptionConfig.yaml"

requestCreateCachePolicy :: CreateCachePolicy -> TestTree
requestCreateCachePolicy =
  req
    "CreateCachePolicy"
    "fixture/CreateCachePolicy.yaml"

requestListDistributionsByKeyGroup :: ListDistributionsByKeyGroup -> TestTree
requestListDistributionsByKeyGroup =
  req
    "ListDistributionsByKeyGroup"
    "fixture/ListDistributionsByKeyGroup.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListCachePolicies :: ListCachePolicies -> TestTree
requestListCachePolicies =
  req
    "ListCachePolicies"
    "fixture/ListCachePolicies.yaml"

requestListDistributionsByOriginRequestPolicyId :: ListDistributionsByOriginRequestPolicyId -> TestTree
requestListDistributionsByOriginRequestPolicyId =
  req
    "ListDistributionsByOriginRequestPolicyId"
    "fixture/ListDistributionsByOriginRequestPolicyId.yaml"

requestListFieldLevelEncryptionConfigs :: ListFieldLevelEncryptionConfigs -> TestTree
requestListFieldLevelEncryptionConfigs =
  req
    "ListFieldLevelEncryptionConfigs"
    "fixture/ListFieldLevelEncryptionConfigs.yaml"

requestDeleteFieldLevelEncryptionConfig :: DeleteFieldLevelEncryptionConfig -> TestTree
requestDeleteFieldLevelEncryptionConfig =
  req
    "DeleteFieldLevelEncryptionConfig"
    "fixture/DeleteFieldLevelEncryptionConfig.yaml"

requestDeleteCachePolicy :: DeleteCachePolicy -> TestTree
requestDeleteCachePolicy =
  req
    "DeleteCachePolicy"
    "fixture/DeleteCachePolicy.yaml"

requestGetFieldLevelEncryption :: GetFieldLevelEncryption -> TestTree
requestGetFieldLevelEncryption =
  req
    "GetFieldLevelEncryption"
    "fixture/GetFieldLevelEncryption.yaml"

requestUpdateCachePolicy :: UpdateCachePolicy -> TestTree
requestUpdateCachePolicy =
  req
    "UpdateCachePolicy"
    "fixture/UpdateCachePolicy.yaml"

requestGetInvalidation :: GetInvalidation -> TestTree
requestGetInvalidation =
  req
    "GetInvalidation"
    "fixture/GetInvalidation.yaml"

requestGetPublicKeyConfig :: GetPublicKeyConfig -> TestTree
requestGetPublicKeyConfig =
  req
    "GetPublicKeyConfig"
    "fixture/GetPublicKeyConfig.yaml"

requestGetCloudFrontOriginAccessIdentityConfig :: GetCloudFrontOriginAccessIdentityConfig -> TestTree
requestGetCloudFrontOriginAccessIdentityConfig =
  req
    "GetCloudFrontOriginAccessIdentityConfig"
    "fixture/GetCloudFrontOriginAccessIdentityConfig.yaml"

requestCreateStreamingDistribution :: CreateStreamingDistribution -> TestTree
requestCreateStreamingDistribution =
  req
    "CreateStreamingDistribution"
    "fixture/CreateStreamingDistribution.yaml"

requestDeleteCloudFrontOriginAccessIdentity :: DeleteCloudFrontOriginAccessIdentity -> TestTree
requestDeleteCloudFrontOriginAccessIdentity =
  req
    "DeleteCloudFrontOriginAccessIdentity"
    "fixture/DeleteCloudFrontOriginAccessIdentity.yaml"

requestDeleteStreamingDistribution :: DeleteStreamingDistribution -> TestTree
requestDeleteStreamingDistribution =
  req
    "DeleteStreamingDistribution"
    "fixture/DeleteStreamingDistribution.yaml"

requestGetFieldLevelEncryptionConfig :: GetFieldLevelEncryptionConfig -> TestTree
requestGetFieldLevelEncryptionConfig =
  req
    "GetFieldLevelEncryptionConfig"
    "fixture/GetFieldLevelEncryptionConfig.yaml"

requestGetRealtimeLogConfig :: GetRealtimeLogConfig -> TestTree
requestGetRealtimeLogConfig =
  req
    "GetRealtimeLogConfig"
    "fixture/GetRealtimeLogConfig.yaml"

requestUpdateCloudFrontOriginAccessIdentity :: UpdateCloudFrontOriginAccessIdentity -> TestTree
requestUpdateCloudFrontOriginAccessIdentity =
  req
    "UpdateCloudFrontOriginAccessIdentity"
    "fixture/UpdateCloudFrontOriginAccessIdentity.yaml"

requestUpdateStreamingDistribution :: UpdateStreamingDistribution -> TestTree
requestUpdateStreamingDistribution =
  req
    "UpdateStreamingDistribution"
    "fixture/UpdateStreamingDistribution.yaml"

requestListStreamingDistributions :: ListStreamingDistributions -> TestTree
requestListStreamingDistributions =
  req
    "ListStreamingDistributions"
    "fixture/ListStreamingDistributions.yaml"

requestCreateKeyGroup :: CreateKeyGroup -> TestTree
requestCreateKeyGroup =
  req
    "CreateKeyGroup"
    "fixture/CreateKeyGroup.yaml"

requestUpdateOriginRequestPolicy :: UpdateOriginRequestPolicy -> TestTree
requestUpdateOriginRequestPolicy =
  req
    "UpdateOriginRequestPolicy"
    "fixture/UpdateOriginRequestPolicy.yaml"

requestGetFieldLevelEncryptionProfileConfig :: GetFieldLevelEncryptionProfileConfig -> TestTree
requestGetFieldLevelEncryptionProfileConfig =
  req
    "GetFieldLevelEncryptionProfileConfig"
    "fixture/GetFieldLevelEncryptionProfileConfig.yaml"

requestDeleteOriginRequestPolicy :: DeleteOriginRequestPolicy -> TestTree
requestDeleteOriginRequestPolicy =
  req
    "DeleteOriginRequestPolicy"
    "fixture/DeleteOriginRequestPolicy.yaml"

requestListFieldLevelEncryptionProfiles :: ListFieldLevelEncryptionProfiles -> TestTree
requestListFieldLevelEncryptionProfiles =
  req
    "ListFieldLevelEncryptionProfiles"
    "fixture/ListFieldLevelEncryptionProfiles.yaml"

requestDeleteFieldLevelEncryptionProfile :: DeleteFieldLevelEncryptionProfile -> TestTree
requestDeleteFieldLevelEncryptionProfile =
  req
    "DeleteFieldLevelEncryptionProfile"
    "fixture/DeleteFieldLevelEncryptionProfile.yaml"

requestGetOriginRequestPolicyConfig :: GetOriginRequestPolicyConfig -> TestTree
requestGetOriginRequestPolicyConfig =
  req
    "GetOriginRequestPolicyConfig"
    "fixture/GetOriginRequestPolicyConfig.yaml"

requestUpdateKeyGroup :: UpdateKeyGroup -> TestTree
requestUpdateKeyGroup =
  req
    "UpdateKeyGroup"
    "fixture/UpdateKeyGroup.yaml"

requestDeleteKeyGroup :: DeleteKeyGroup -> TestTree
requestDeleteKeyGroup =
  req
    "DeleteKeyGroup"
    "fixture/DeleteKeyGroup.yaml"

requestCreateStreamingDistributionWithTags :: CreateStreamingDistributionWithTags -> TestTree
requestCreateStreamingDistributionWithTags =
  req
    "CreateStreamingDistributionWithTags"
    "fixture/CreateStreamingDistributionWithTags.yaml"

requestListDistributionsByRealtimeLogConfig :: ListDistributionsByRealtimeLogConfig -> TestTree
requestListDistributionsByRealtimeLogConfig =
  req
    "ListDistributionsByRealtimeLogConfig"
    "fixture/ListDistributionsByRealtimeLogConfig.yaml"

requestUpdateFieldLevelEncryptionProfile :: UpdateFieldLevelEncryptionProfile -> TestTree
requestUpdateFieldLevelEncryptionProfile =
  req
    "UpdateFieldLevelEncryptionProfile"
    "fixture/UpdateFieldLevelEncryptionProfile.yaml"

requestCreateDistribution :: CreateDistribution -> TestTree
requestCreateDistribution =
  req
    "CreateDistribution"
    "fixture/CreateDistribution.yaml"

requestDeleteMonitoringSubscription :: DeleteMonitoringSubscription -> TestTree
requestDeleteMonitoringSubscription =
  req
    "DeleteMonitoringSubscription"
    "fixture/DeleteMonitoringSubscription.yaml"

requestGetFieldLevelEncryptionProfile :: GetFieldLevelEncryptionProfile -> TestTree
requestGetFieldLevelEncryptionProfile =
  req
    "GetFieldLevelEncryptionProfile"
    "fixture/GetFieldLevelEncryptionProfile.yaml"

requestCreateMonitoringSubscription :: CreateMonitoringSubscription -> TestTree
requestCreateMonitoringSubscription =
  req
    "CreateMonitoringSubscription"
    "fixture/CreateMonitoringSubscription.yaml"

requestGetOriginRequestPolicy :: GetOriginRequestPolicy -> TestTree
requestGetOriginRequestPolicy =
  req
    "GetOriginRequestPolicy"
    "fixture/GetOriginRequestPolicy.yaml"

requestUpdateDistribution :: UpdateDistribution -> TestTree
requestUpdateDistribution =
  req
    "UpdateDistribution"
    "fixture/UpdateDistribution.yaml"

requestDeleteDistribution :: DeleteDistribution -> TestTree
requestDeleteDistribution =
  req
    "DeleteDistribution"
    "fixture/DeleteDistribution.yaml"

requestDeleteRealtimeLogConfig :: DeleteRealtimeLogConfig -> TestTree
requestDeleteRealtimeLogConfig =
  req
    "DeleteRealtimeLogConfig"
    "fixture/DeleteRealtimeLogConfig.yaml"

requestGetStreamingDistribution :: GetStreamingDistribution -> TestTree
requestGetStreamingDistribution =
  req
    "GetStreamingDistribution"
    "fixture/GetStreamingDistribution.yaml"

requestCreateInvalidation :: CreateInvalidation -> TestTree
requestCreateInvalidation =
  req
    "CreateInvalidation"
    "fixture/CreateInvalidation.yaml"

requestGetCachePolicyConfig :: GetCachePolicyConfig -> TestTree
requestGetCachePolicyConfig =
  req
    "GetCachePolicyConfig"
    "fixture/GetCachePolicyConfig.yaml"

requestUpdateRealtimeLogConfig :: UpdateRealtimeLogConfig -> TestTree
requestUpdateRealtimeLogConfig =
  req
    "UpdateRealtimeLogConfig"
    "fixture/UpdateRealtimeLogConfig.yaml"

requestCreateRealtimeLogConfig :: CreateRealtimeLogConfig -> TestTree
requestCreateRealtimeLogConfig =
  req
    "CreateRealtimeLogConfig"
    "fixture/CreateRealtimeLogConfig.yaml"

requestCreateDistributionWithTags :: CreateDistributionWithTags -> TestTree
requestCreateDistributionWithTags =
  req
    "CreateDistributionWithTags"
    "fixture/CreateDistributionWithTags.yaml"

requestCreateFieldLevelEncryptionConfig :: CreateFieldLevelEncryptionConfig -> TestTree
requestCreateFieldLevelEncryptionConfig =
  req
    "CreateFieldLevelEncryptionConfig"
    "fixture/CreateFieldLevelEncryptionConfig.yaml"

requestListInvalidations :: ListInvalidations -> TestTree
requestListInvalidations =
  req
    "ListInvalidations"
    "fixture/ListInvalidations.yaml"

requestListCloudFrontOriginAccessIdentities :: ListCloudFrontOriginAccessIdentities -> TestTree
requestListCloudFrontOriginAccessIdentities =
  req
    "ListCloudFrontOriginAccessIdentities"
    "fixture/ListCloudFrontOriginAccessIdentities.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetStreamingDistributionConfig :: GetStreamingDistributionConfig -> TestTree
requestGetStreamingDistributionConfig =
  req
    "GetStreamingDistributionConfig"
    "fixture/GetStreamingDistributionConfig.yaml"

requestGetCachePolicy :: GetCachePolicy -> TestTree
requestGetCachePolicy =
  req
    "GetCachePolicy"
    "fixture/GetCachePolicy.yaml"

requestCreateCloudFrontOriginAccessIdentity :: CreateCloudFrontOriginAccessIdentity -> TestTree
requestCreateCloudFrontOriginAccessIdentity =
  req
    "CreateCloudFrontOriginAccessIdentity"
    "fixture/CreateCloudFrontOriginAccessIdentity.yaml"

requestCreatePublicKey :: CreatePublicKey -> TestTree
requestCreatePublicKey =
  req
    "CreatePublicKey"
    "fixture/CreatePublicKey.yaml"

-- Responses

responseUpdatePublicKey :: UpdatePublicKeyResponse -> TestTree
responseUpdatePublicKey =
  res
    "UpdatePublicKeyResponse"
    "fixture/UpdatePublicKeyResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdatePublicKey)

responseDeletePublicKey :: DeletePublicKeyResponse -> TestTree
responseDeletePublicKey =
  res
    "DeletePublicKeyResponse"
    "fixture/DeletePublicKeyResponse.proto"
    cloudFront
    (Proxy :: Proxy DeletePublicKey)

responseListPublicKeys :: ListPublicKeysResponse -> TestTree
responseListPublicKeys =
  res
    "ListPublicKeysResponse"
    "fixture/ListPublicKeysResponse.proto"
    cloudFront
    (Proxy :: Proxy ListPublicKeys)

responseGetDistribution :: GetDistributionResponse -> TestTree
responseGetDistribution =
  res
    "GetDistributionResponse"
    "fixture/GetDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy GetDistribution)

responseGetKeyGroupConfig :: GetKeyGroupConfigResponse -> TestTree
responseGetKeyGroupConfig =
  res
    "GetKeyGroupConfigResponse"
    "fixture/GetKeyGroupConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetKeyGroupConfig)

responseCreateFieldLevelEncryptionProfile :: CreateFieldLevelEncryptionProfileResponse -> TestTree
responseCreateFieldLevelEncryptionProfile =
  res
    "CreateFieldLevelEncryptionProfileResponse"
    "fixture/CreateFieldLevelEncryptionProfileResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateFieldLevelEncryptionProfile)

responseGetMonitoringSubscription :: GetMonitoringSubscriptionResponse -> TestTree
responseGetMonitoringSubscription =
  res
    "GetMonitoringSubscriptionResponse"
    "fixture/GetMonitoringSubscriptionResponse.proto"
    cloudFront
    (Proxy :: Proxy GetMonitoringSubscription)

responseCreateOriginRequestPolicy :: CreateOriginRequestPolicyResponse -> TestTree
responseCreateOriginRequestPolicy =
  res
    "CreateOriginRequestPolicyResponse"
    "fixture/CreateOriginRequestPolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateOriginRequestPolicy)

responseListDistributionsByCachePolicyId :: ListDistributionsByCachePolicyIdResponse -> TestTree
responseListDistributionsByCachePolicyId =
  res
    "ListDistributionsByCachePolicyIdResponse"
    "fixture/ListDistributionsByCachePolicyIdResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributionsByCachePolicyId)

responseListKeyGroups :: ListKeyGroupsResponse -> TestTree
responseListKeyGroups =
  res
    "ListKeyGroupsResponse"
    "fixture/ListKeyGroupsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListKeyGroups)

responseListOriginRequestPolicies :: ListOriginRequestPoliciesResponse -> TestTree
responseListOriginRequestPolicies =
  res
    "ListOriginRequestPoliciesResponse"
    "fixture/ListOriginRequestPoliciesResponse.proto"
    cloudFront
    (Proxy :: Proxy ListOriginRequestPolicies)

responseGetKeyGroup :: GetKeyGroupResponse -> TestTree
responseGetKeyGroup =
  res
    "GetKeyGroupResponse"
    "fixture/GetKeyGroupResponse.proto"
    cloudFront
    (Proxy :: Proxy GetKeyGroup)

responseGetDistributionConfig :: GetDistributionConfigResponse -> TestTree
responseGetDistributionConfig =
  res
    "GetDistributionConfigResponse"
    "fixture/GetDistributionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetDistributionConfig)

responseListDistributions :: ListDistributionsResponse -> TestTree
responseListDistributions =
  res
    "ListDistributionsResponse"
    "fixture/ListDistributionsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributions)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cloudFront
    (Proxy :: Proxy UntagResource)

responseListDistributionsByWebACLId :: ListDistributionsByWebACLIdResponse -> TestTree
responseListDistributionsByWebACLId =
  res
    "ListDistributionsByWebACLIdResponse"
    "fixture/ListDistributionsByWebACLIdResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributionsByWebACLId)

responseGetCloudFrontOriginAccessIdentity :: GetCloudFrontOriginAccessIdentityResponse -> TestTree
responseGetCloudFrontOriginAccessIdentity =
  res
    "GetCloudFrontOriginAccessIdentityResponse"
    "fixture/GetCloudFrontOriginAccessIdentityResponse.proto"
    cloudFront
    (Proxy :: Proxy GetCloudFrontOriginAccessIdentity)

responseGetPublicKey :: GetPublicKeyResponse -> TestTree
responseGetPublicKey =
  res
    "GetPublicKeyResponse"
    "fixture/GetPublicKeyResponse.proto"
    cloudFront
    (Proxy :: Proxy GetPublicKey)

responseListRealtimeLogConfigs :: ListRealtimeLogConfigsResponse -> TestTree
responseListRealtimeLogConfigs =
  res
    "ListRealtimeLogConfigsResponse"
    "fixture/ListRealtimeLogConfigsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListRealtimeLogConfigs)

responseUpdateFieldLevelEncryptionConfig :: UpdateFieldLevelEncryptionConfigResponse -> TestTree
responseUpdateFieldLevelEncryptionConfig =
  res
    "UpdateFieldLevelEncryptionConfigResponse"
    "fixture/UpdateFieldLevelEncryptionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateFieldLevelEncryptionConfig)

responseCreateCachePolicy :: CreateCachePolicyResponse -> TestTree
responseCreateCachePolicy =
  res
    "CreateCachePolicyResponse"
    "fixture/CreateCachePolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateCachePolicy)

responseListDistributionsByKeyGroup :: ListDistributionsByKeyGroupResponse -> TestTree
responseListDistributionsByKeyGroup =
  res
    "ListDistributionsByKeyGroupResponse"
    "fixture/ListDistributionsByKeyGroupResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributionsByKeyGroup)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cloudFront
    (Proxy :: Proxy TagResource)

responseListCachePolicies :: ListCachePoliciesResponse -> TestTree
responseListCachePolicies =
  res
    "ListCachePoliciesResponse"
    "fixture/ListCachePoliciesResponse.proto"
    cloudFront
    (Proxy :: Proxy ListCachePolicies)

responseListDistributionsByOriginRequestPolicyId :: ListDistributionsByOriginRequestPolicyIdResponse -> TestTree
responseListDistributionsByOriginRequestPolicyId =
  res
    "ListDistributionsByOriginRequestPolicyIdResponse"
    "fixture/ListDistributionsByOriginRequestPolicyIdResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributionsByOriginRequestPolicyId)

responseListFieldLevelEncryptionConfigs :: ListFieldLevelEncryptionConfigsResponse -> TestTree
responseListFieldLevelEncryptionConfigs =
  res
    "ListFieldLevelEncryptionConfigsResponse"
    "fixture/ListFieldLevelEncryptionConfigsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListFieldLevelEncryptionConfigs)

responseDeleteFieldLevelEncryptionConfig :: DeleteFieldLevelEncryptionConfigResponse -> TestTree
responseDeleteFieldLevelEncryptionConfig =
  res
    "DeleteFieldLevelEncryptionConfigResponse"
    "fixture/DeleteFieldLevelEncryptionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteFieldLevelEncryptionConfig)

responseDeleteCachePolicy :: DeleteCachePolicyResponse -> TestTree
responseDeleteCachePolicy =
  res
    "DeleteCachePolicyResponse"
    "fixture/DeleteCachePolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteCachePolicy)

responseGetFieldLevelEncryption :: GetFieldLevelEncryptionResponse -> TestTree
responseGetFieldLevelEncryption =
  res
    "GetFieldLevelEncryptionResponse"
    "fixture/GetFieldLevelEncryptionResponse.proto"
    cloudFront
    (Proxy :: Proxy GetFieldLevelEncryption)

responseUpdateCachePolicy :: UpdateCachePolicyResponse -> TestTree
responseUpdateCachePolicy =
  res
    "UpdateCachePolicyResponse"
    "fixture/UpdateCachePolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateCachePolicy)

responseGetInvalidation :: GetInvalidationResponse -> TestTree
responseGetInvalidation =
  res
    "GetInvalidationResponse"
    "fixture/GetInvalidationResponse.proto"
    cloudFront
    (Proxy :: Proxy GetInvalidation)

responseGetPublicKeyConfig :: GetPublicKeyConfigResponse -> TestTree
responseGetPublicKeyConfig =
  res
    "GetPublicKeyConfigResponse"
    "fixture/GetPublicKeyConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetPublicKeyConfig)

responseGetCloudFrontOriginAccessIdentityConfig :: GetCloudFrontOriginAccessIdentityConfigResponse -> TestTree
responseGetCloudFrontOriginAccessIdentityConfig =
  res
    "GetCloudFrontOriginAccessIdentityConfigResponse"
    "fixture/GetCloudFrontOriginAccessIdentityConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetCloudFrontOriginAccessIdentityConfig)

responseCreateStreamingDistribution :: CreateStreamingDistributionResponse -> TestTree
responseCreateStreamingDistribution =
  res
    "CreateStreamingDistributionResponse"
    "fixture/CreateStreamingDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateStreamingDistribution)

responseDeleteCloudFrontOriginAccessIdentity :: DeleteCloudFrontOriginAccessIdentityResponse -> TestTree
responseDeleteCloudFrontOriginAccessIdentity =
  res
    "DeleteCloudFrontOriginAccessIdentityResponse"
    "fixture/DeleteCloudFrontOriginAccessIdentityResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteCloudFrontOriginAccessIdentity)

responseDeleteStreamingDistribution :: DeleteStreamingDistributionResponse -> TestTree
responseDeleteStreamingDistribution =
  res
    "DeleteStreamingDistributionResponse"
    "fixture/DeleteStreamingDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteStreamingDistribution)

responseGetFieldLevelEncryptionConfig :: GetFieldLevelEncryptionConfigResponse -> TestTree
responseGetFieldLevelEncryptionConfig =
  res
    "GetFieldLevelEncryptionConfigResponse"
    "fixture/GetFieldLevelEncryptionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetFieldLevelEncryptionConfig)

responseGetRealtimeLogConfig :: GetRealtimeLogConfigResponse -> TestTree
responseGetRealtimeLogConfig =
  res
    "GetRealtimeLogConfigResponse"
    "fixture/GetRealtimeLogConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetRealtimeLogConfig)

responseUpdateCloudFrontOriginAccessIdentity :: UpdateCloudFrontOriginAccessIdentityResponse -> TestTree
responseUpdateCloudFrontOriginAccessIdentity =
  res
    "UpdateCloudFrontOriginAccessIdentityResponse"
    "fixture/UpdateCloudFrontOriginAccessIdentityResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateCloudFrontOriginAccessIdentity)

responseUpdateStreamingDistribution :: UpdateStreamingDistributionResponse -> TestTree
responseUpdateStreamingDistribution =
  res
    "UpdateStreamingDistributionResponse"
    "fixture/UpdateStreamingDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateStreamingDistribution)

responseListStreamingDistributions :: ListStreamingDistributionsResponse -> TestTree
responseListStreamingDistributions =
  res
    "ListStreamingDistributionsResponse"
    "fixture/ListStreamingDistributionsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListStreamingDistributions)

responseCreateKeyGroup :: CreateKeyGroupResponse -> TestTree
responseCreateKeyGroup =
  res
    "CreateKeyGroupResponse"
    "fixture/CreateKeyGroupResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateKeyGroup)

responseUpdateOriginRequestPolicy :: UpdateOriginRequestPolicyResponse -> TestTree
responseUpdateOriginRequestPolicy =
  res
    "UpdateOriginRequestPolicyResponse"
    "fixture/UpdateOriginRequestPolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateOriginRequestPolicy)

responseGetFieldLevelEncryptionProfileConfig :: GetFieldLevelEncryptionProfileConfigResponse -> TestTree
responseGetFieldLevelEncryptionProfileConfig =
  res
    "GetFieldLevelEncryptionProfileConfigResponse"
    "fixture/GetFieldLevelEncryptionProfileConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetFieldLevelEncryptionProfileConfig)

responseDeleteOriginRequestPolicy :: DeleteOriginRequestPolicyResponse -> TestTree
responseDeleteOriginRequestPolicy =
  res
    "DeleteOriginRequestPolicyResponse"
    "fixture/DeleteOriginRequestPolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteOriginRequestPolicy)

responseListFieldLevelEncryptionProfiles :: ListFieldLevelEncryptionProfilesResponse -> TestTree
responseListFieldLevelEncryptionProfiles =
  res
    "ListFieldLevelEncryptionProfilesResponse"
    "fixture/ListFieldLevelEncryptionProfilesResponse.proto"
    cloudFront
    (Proxy :: Proxy ListFieldLevelEncryptionProfiles)

responseDeleteFieldLevelEncryptionProfile :: DeleteFieldLevelEncryptionProfileResponse -> TestTree
responseDeleteFieldLevelEncryptionProfile =
  res
    "DeleteFieldLevelEncryptionProfileResponse"
    "fixture/DeleteFieldLevelEncryptionProfileResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteFieldLevelEncryptionProfile)

responseGetOriginRequestPolicyConfig :: GetOriginRequestPolicyConfigResponse -> TestTree
responseGetOriginRequestPolicyConfig =
  res
    "GetOriginRequestPolicyConfigResponse"
    "fixture/GetOriginRequestPolicyConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetOriginRequestPolicyConfig)

responseUpdateKeyGroup :: UpdateKeyGroupResponse -> TestTree
responseUpdateKeyGroup =
  res
    "UpdateKeyGroupResponse"
    "fixture/UpdateKeyGroupResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateKeyGroup)

responseDeleteKeyGroup :: DeleteKeyGroupResponse -> TestTree
responseDeleteKeyGroup =
  res
    "DeleteKeyGroupResponse"
    "fixture/DeleteKeyGroupResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteKeyGroup)

responseCreateStreamingDistributionWithTags :: CreateStreamingDistributionWithTagsResponse -> TestTree
responseCreateStreamingDistributionWithTags =
  res
    "CreateStreamingDistributionWithTagsResponse"
    "fixture/CreateStreamingDistributionWithTagsResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateStreamingDistributionWithTags)

responseListDistributionsByRealtimeLogConfig :: ListDistributionsByRealtimeLogConfigResponse -> TestTree
responseListDistributionsByRealtimeLogConfig =
  res
    "ListDistributionsByRealtimeLogConfigResponse"
    "fixture/ListDistributionsByRealtimeLogConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy ListDistributionsByRealtimeLogConfig)

responseUpdateFieldLevelEncryptionProfile :: UpdateFieldLevelEncryptionProfileResponse -> TestTree
responseUpdateFieldLevelEncryptionProfile =
  res
    "UpdateFieldLevelEncryptionProfileResponse"
    "fixture/UpdateFieldLevelEncryptionProfileResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateFieldLevelEncryptionProfile)

responseCreateDistribution :: CreateDistributionResponse -> TestTree
responseCreateDistribution =
  res
    "CreateDistributionResponse"
    "fixture/CreateDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateDistribution)

responseDeleteMonitoringSubscription :: DeleteMonitoringSubscriptionResponse -> TestTree
responseDeleteMonitoringSubscription =
  res
    "DeleteMonitoringSubscriptionResponse"
    "fixture/DeleteMonitoringSubscriptionResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteMonitoringSubscription)

responseGetFieldLevelEncryptionProfile :: GetFieldLevelEncryptionProfileResponse -> TestTree
responseGetFieldLevelEncryptionProfile =
  res
    "GetFieldLevelEncryptionProfileResponse"
    "fixture/GetFieldLevelEncryptionProfileResponse.proto"
    cloudFront
    (Proxy :: Proxy GetFieldLevelEncryptionProfile)

responseCreateMonitoringSubscription :: CreateMonitoringSubscriptionResponse -> TestTree
responseCreateMonitoringSubscription =
  res
    "CreateMonitoringSubscriptionResponse"
    "fixture/CreateMonitoringSubscriptionResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateMonitoringSubscription)

responseGetOriginRequestPolicy :: GetOriginRequestPolicyResponse -> TestTree
responseGetOriginRequestPolicy =
  res
    "GetOriginRequestPolicyResponse"
    "fixture/GetOriginRequestPolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy GetOriginRequestPolicy)

responseUpdateDistribution :: UpdateDistributionResponse -> TestTree
responseUpdateDistribution =
  res
    "UpdateDistributionResponse"
    "fixture/UpdateDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateDistribution)

responseDeleteDistribution :: DeleteDistributionResponse -> TestTree
responseDeleteDistribution =
  res
    "DeleteDistributionResponse"
    "fixture/DeleteDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteDistribution)

responseDeleteRealtimeLogConfig :: DeleteRealtimeLogConfigResponse -> TestTree
responseDeleteRealtimeLogConfig =
  res
    "DeleteRealtimeLogConfigResponse"
    "fixture/DeleteRealtimeLogConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy DeleteRealtimeLogConfig)

responseGetStreamingDistribution :: GetStreamingDistributionResponse -> TestTree
responseGetStreamingDistribution =
  res
    "GetStreamingDistributionResponse"
    "fixture/GetStreamingDistributionResponse.proto"
    cloudFront
    (Proxy :: Proxy GetStreamingDistribution)

responseCreateInvalidation :: CreateInvalidationResponse -> TestTree
responseCreateInvalidation =
  res
    "CreateInvalidationResponse"
    "fixture/CreateInvalidationResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateInvalidation)

responseGetCachePolicyConfig :: GetCachePolicyConfigResponse -> TestTree
responseGetCachePolicyConfig =
  res
    "GetCachePolicyConfigResponse"
    "fixture/GetCachePolicyConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetCachePolicyConfig)

responseUpdateRealtimeLogConfig :: UpdateRealtimeLogConfigResponse -> TestTree
responseUpdateRealtimeLogConfig =
  res
    "UpdateRealtimeLogConfigResponse"
    "fixture/UpdateRealtimeLogConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy UpdateRealtimeLogConfig)

responseCreateRealtimeLogConfig :: CreateRealtimeLogConfigResponse -> TestTree
responseCreateRealtimeLogConfig =
  res
    "CreateRealtimeLogConfigResponse"
    "fixture/CreateRealtimeLogConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateRealtimeLogConfig)

responseCreateDistributionWithTags :: CreateDistributionWithTagsResponse -> TestTree
responseCreateDistributionWithTags =
  res
    "CreateDistributionWithTagsResponse"
    "fixture/CreateDistributionWithTagsResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateDistributionWithTags)

responseCreateFieldLevelEncryptionConfig :: CreateFieldLevelEncryptionConfigResponse -> TestTree
responseCreateFieldLevelEncryptionConfig =
  res
    "CreateFieldLevelEncryptionConfigResponse"
    "fixture/CreateFieldLevelEncryptionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateFieldLevelEncryptionConfig)

responseListInvalidations :: ListInvalidationsResponse -> TestTree
responseListInvalidations =
  res
    "ListInvalidationsResponse"
    "fixture/ListInvalidationsResponse.proto"
    cloudFront
    (Proxy :: Proxy ListInvalidations)

responseListCloudFrontOriginAccessIdentities :: ListCloudFrontOriginAccessIdentitiesResponse -> TestTree
responseListCloudFrontOriginAccessIdentities =
  res
    "ListCloudFrontOriginAccessIdentitiesResponse"
    "fixture/ListCloudFrontOriginAccessIdentitiesResponse.proto"
    cloudFront
    (Proxy :: Proxy ListCloudFrontOriginAccessIdentities)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cloudFront
    (Proxy :: Proxy ListTagsForResource)

responseGetStreamingDistributionConfig :: GetStreamingDistributionConfigResponse -> TestTree
responseGetStreamingDistributionConfig =
  res
    "GetStreamingDistributionConfigResponse"
    "fixture/GetStreamingDistributionConfigResponse.proto"
    cloudFront
    (Proxy :: Proxy GetStreamingDistributionConfig)

responseGetCachePolicy :: GetCachePolicyResponse -> TestTree
responseGetCachePolicy =
  res
    "GetCachePolicyResponse"
    "fixture/GetCachePolicyResponse.proto"
    cloudFront
    (Proxy :: Proxy GetCachePolicy)

responseCreateCloudFrontOriginAccessIdentity :: CreateCloudFrontOriginAccessIdentityResponse -> TestTree
responseCreateCloudFrontOriginAccessIdentity =
  res
    "CreateCloudFrontOriginAccessIdentityResponse"
    "fixture/CreateCloudFrontOriginAccessIdentityResponse.proto"
    cloudFront
    (Proxy :: Proxy CreateCloudFrontOriginAccessIdentity)

responseCreatePublicKey :: CreatePublicKeyResponse -> TestTree
responseCreatePublicKey =
  res
    "CreatePublicKeyResponse"
    "fixture/CreatePublicKeyResponse.proto"
    cloudFront
    (Proxy :: Proxy CreatePublicKey)
