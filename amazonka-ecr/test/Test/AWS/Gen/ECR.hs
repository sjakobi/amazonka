{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.ECR
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.ECR where

import Data.Proxy
import Network.AWS.ECR
import Test.AWS.ECR.Internal
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
--         [ requestUploadLayerPart $
--             uploadLayerPart
--
--         , requestPutLifecyclePolicy $
--             putLifecyclePolicy
--
--         , requestPutRegistryPolicy $
--             putRegistryPolicy
--
--         , requestStartLifecyclePolicyPreview $
--             startLifecyclePolicyPreview
--
--         , requestDescribeRepositories $
--             describeRepositories
--
--         , requestListImages $
--             listImages
--
--         , requestPutImage $
--             putImage
--
--         , requestInitiateLayerUpload $
--             initiateLayerUpload
--
--         , requestGetRegistryPolicy $
--             getRegistryPolicy
--
--         , requestDeleteRepositoryPolicy $
--             deleteRepositoryPolicy
--
--         , requestDescribeImageScanFindings $
--             describeImageScanFindings
--
--         , requestUntagResource $
--             untagResource
--
--         , requestSetRepositoryPolicy $
--             setRepositoryPolicy
--
--         , requestDescribeRegistry $
--             describeRegistry
--
--         , requestTagResource $
--             tagResource
--
--         , requestBatchDeleteImage $
--             batchDeleteImage
--
--         , requestPutImageScanningConfiguration $
--             putImageScanningConfiguration
--
--         , requestDeleteLifecyclePolicy $
--             deleteLifecyclePolicy
--
--         , requestDeleteRegistryPolicy $
--             deleteRegistryPolicy
--
--         , requestGetRepositoryPolicy $
--             getRepositoryPolicy
--
--         , requestDescribeImages $
--             describeImages
--
--         , requestGetDownloadURLForLayer $
--             getDownloadURLForLayer
--
--         , requestCompleteLayerUpload $
--             completeLayerUpload
--
--         , requestGetAuthorizationToken $
--             getAuthorizationToken
--
--         , requestCreateRepository $
--             createRepository
--
--         , requestDeleteRepository $
--             deleteRepository
--
--         , requestBatchCheckLayerAvailability $
--             batchCheckLayerAvailability
--
--         , requestGetLifecyclePolicy $
--             getLifecyclePolicy
--
--         , requestStartImageScan $
--             startImageScan
--
--         , requestPutReplicationConfiguration $
--             putReplicationConfiguration
--
--         , requestBatchGetImage $
--             batchGetImage
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestPutImageTagMutability $
--             putImageTagMutability
--
--         , requestGetLifecyclePolicyPreview $
--             getLifecyclePolicyPreview
--
--           ]

--     , testGroup "response"
--         [ responseUploadLayerPart $
--             uploadLayerPartResponse
--
--         , responsePutLifecyclePolicy $
--             putLifecyclePolicyResponse
--
--         , responsePutRegistryPolicy $
--             putRegistryPolicyResponse
--
--         , responseStartLifecyclePolicyPreview $
--             startLifecyclePolicyPreviewResponse
--
--         , responseDescribeRepositories $
--             describeRepositoriesResponse
--
--         , responseListImages $
--             listImagesResponse
--
--         , responsePutImage $
--             putImageResponse
--
--         , responseInitiateLayerUpload $
--             initiateLayerUploadResponse
--
--         , responseGetRegistryPolicy $
--             getRegistryPolicyResponse
--
--         , responseDeleteRepositoryPolicy $
--             deleteRepositoryPolicyResponse
--
--         , responseDescribeImageScanFindings $
--             describeImageScanFindingsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseSetRepositoryPolicy $
--             setRepositoryPolicyResponse
--
--         , responseDescribeRegistry $
--             describeRegistryResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseBatchDeleteImage $
--             batchDeleteImageResponse
--
--         , responsePutImageScanningConfiguration $
--             putImageScanningConfigurationResponse
--
--         , responseDeleteLifecyclePolicy $
--             deleteLifecyclePolicyResponse
--
--         , responseDeleteRegistryPolicy $
--             deleteRegistryPolicyResponse
--
--         , responseGetRepositoryPolicy $
--             getRepositoryPolicyResponse
--
--         , responseDescribeImages $
--             describeImagesResponse
--
--         , responseGetDownloadURLForLayer $
--             getDownloadURLForLayerResponse
--
--         , responseCompleteLayerUpload $
--             completeLayerUploadResponse
--
--         , responseGetAuthorizationToken $
--             getAuthorizationTokenResponse
--
--         , responseCreateRepository $
--             createRepositoryResponse
--
--         , responseDeleteRepository $
--             deleteRepositoryResponse
--
--         , responseBatchCheckLayerAvailability $
--             batchCheckLayerAvailabilityResponse
--
--         , responseGetLifecyclePolicy $
--             getLifecyclePolicyResponse
--
--         , responseStartImageScan $
--             startImageScanResponse
--
--         , responsePutReplicationConfiguration $
--             putReplicationConfigurationResponse
--
--         , responseBatchGetImage $
--             batchGetImageResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responsePutImageTagMutability $
--             putImageTagMutabilityResponse
--
--         , responseGetLifecyclePolicyPreview $
--             getLifecyclePolicyPreviewResponse
--
--           ]
--     ]

-- Requests

requestUploadLayerPart :: UploadLayerPart -> TestTree
requestUploadLayerPart =
  req
    "UploadLayerPart"
    "fixture/UploadLayerPart.yaml"

requestPutLifecyclePolicy :: PutLifecyclePolicy -> TestTree
requestPutLifecyclePolicy =
  req
    "PutLifecyclePolicy"
    "fixture/PutLifecyclePolicy.yaml"

requestPutRegistryPolicy :: PutRegistryPolicy -> TestTree
requestPutRegistryPolicy =
  req
    "PutRegistryPolicy"
    "fixture/PutRegistryPolicy.yaml"

requestStartLifecyclePolicyPreview :: StartLifecyclePolicyPreview -> TestTree
requestStartLifecyclePolicyPreview =
  req
    "StartLifecyclePolicyPreview"
    "fixture/StartLifecyclePolicyPreview.yaml"

requestDescribeRepositories :: DescribeRepositories -> TestTree
requestDescribeRepositories =
  req
    "DescribeRepositories"
    "fixture/DescribeRepositories.yaml"

requestListImages :: ListImages -> TestTree
requestListImages =
  req
    "ListImages"
    "fixture/ListImages.yaml"

requestPutImage :: PutImage -> TestTree
requestPutImage =
  req
    "PutImage"
    "fixture/PutImage.yaml"

requestInitiateLayerUpload :: InitiateLayerUpload -> TestTree
requestInitiateLayerUpload =
  req
    "InitiateLayerUpload"
    "fixture/InitiateLayerUpload.yaml"

requestGetRegistryPolicy :: GetRegistryPolicy -> TestTree
requestGetRegistryPolicy =
  req
    "GetRegistryPolicy"
    "fixture/GetRegistryPolicy.yaml"

requestDeleteRepositoryPolicy :: DeleteRepositoryPolicy -> TestTree
requestDeleteRepositoryPolicy =
  req
    "DeleteRepositoryPolicy"
    "fixture/DeleteRepositoryPolicy.yaml"

requestDescribeImageScanFindings :: DescribeImageScanFindings -> TestTree
requestDescribeImageScanFindings =
  req
    "DescribeImageScanFindings"
    "fixture/DescribeImageScanFindings.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestSetRepositoryPolicy :: SetRepositoryPolicy -> TestTree
requestSetRepositoryPolicy =
  req
    "SetRepositoryPolicy"
    "fixture/SetRepositoryPolicy.yaml"

requestDescribeRegistry :: DescribeRegistry -> TestTree
requestDescribeRegistry =
  req
    "DescribeRegistry"
    "fixture/DescribeRegistry.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestBatchDeleteImage :: BatchDeleteImage -> TestTree
requestBatchDeleteImage =
  req
    "BatchDeleteImage"
    "fixture/BatchDeleteImage.yaml"

requestPutImageScanningConfiguration :: PutImageScanningConfiguration -> TestTree
requestPutImageScanningConfiguration =
  req
    "PutImageScanningConfiguration"
    "fixture/PutImageScanningConfiguration.yaml"

requestDeleteLifecyclePolicy :: DeleteLifecyclePolicy -> TestTree
requestDeleteLifecyclePolicy =
  req
    "DeleteLifecyclePolicy"
    "fixture/DeleteLifecyclePolicy.yaml"

requestDeleteRegistryPolicy :: DeleteRegistryPolicy -> TestTree
requestDeleteRegistryPolicy =
  req
    "DeleteRegistryPolicy"
    "fixture/DeleteRegistryPolicy.yaml"

requestGetRepositoryPolicy :: GetRepositoryPolicy -> TestTree
requestGetRepositoryPolicy =
  req
    "GetRepositoryPolicy"
    "fixture/GetRepositoryPolicy.yaml"

requestDescribeImages :: DescribeImages -> TestTree
requestDescribeImages =
  req
    "DescribeImages"
    "fixture/DescribeImages.yaml"

requestGetDownloadURLForLayer :: GetDownloadURLForLayer -> TestTree
requestGetDownloadURLForLayer =
  req
    "GetDownloadURLForLayer"
    "fixture/GetDownloadURLForLayer.yaml"

requestCompleteLayerUpload :: CompleteLayerUpload -> TestTree
requestCompleteLayerUpload =
  req
    "CompleteLayerUpload"
    "fixture/CompleteLayerUpload.yaml"

requestGetAuthorizationToken :: GetAuthorizationToken -> TestTree
requestGetAuthorizationToken =
  req
    "GetAuthorizationToken"
    "fixture/GetAuthorizationToken.yaml"

requestCreateRepository :: CreateRepository -> TestTree
requestCreateRepository =
  req
    "CreateRepository"
    "fixture/CreateRepository.yaml"

requestDeleteRepository :: DeleteRepository -> TestTree
requestDeleteRepository =
  req
    "DeleteRepository"
    "fixture/DeleteRepository.yaml"

requestBatchCheckLayerAvailability :: BatchCheckLayerAvailability -> TestTree
requestBatchCheckLayerAvailability =
  req
    "BatchCheckLayerAvailability"
    "fixture/BatchCheckLayerAvailability.yaml"

requestGetLifecyclePolicy :: GetLifecyclePolicy -> TestTree
requestGetLifecyclePolicy =
  req
    "GetLifecyclePolicy"
    "fixture/GetLifecyclePolicy.yaml"

requestStartImageScan :: StartImageScan -> TestTree
requestStartImageScan =
  req
    "StartImageScan"
    "fixture/StartImageScan.yaml"

requestPutReplicationConfiguration :: PutReplicationConfiguration -> TestTree
requestPutReplicationConfiguration =
  req
    "PutReplicationConfiguration"
    "fixture/PutReplicationConfiguration.yaml"

requestBatchGetImage :: BatchGetImage -> TestTree
requestBatchGetImage =
  req
    "BatchGetImage"
    "fixture/BatchGetImage.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestPutImageTagMutability :: PutImageTagMutability -> TestTree
requestPutImageTagMutability =
  req
    "PutImageTagMutability"
    "fixture/PutImageTagMutability.yaml"

requestGetLifecyclePolicyPreview :: GetLifecyclePolicyPreview -> TestTree
requestGetLifecyclePolicyPreview =
  req
    "GetLifecyclePolicyPreview"
    "fixture/GetLifecyclePolicyPreview.yaml"

-- Responses

responseUploadLayerPart :: UploadLayerPartResponse -> TestTree
responseUploadLayerPart =
  res
    "UploadLayerPartResponse"
    "fixture/UploadLayerPartResponse.proto"
    ecr
    (Proxy :: Proxy UploadLayerPart)

responsePutLifecyclePolicy :: PutLifecyclePolicyResponse -> TestTree
responsePutLifecyclePolicy =
  res
    "PutLifecyclePolicyResponse"
    "fixture/PutLifecyclePolicyResponse.proto"
    ecr
    (Proxy :: Proxy PutLifecyclePolicy)

responsePutRegistryPolicy :: PutRegistryPolicyResponse -> TestTree
responsePutRegistryPolicy =
  res
    "PutRegistryPolicyResponse"
    "fixture/PutRegistryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy PutRegistryPolicy)

responseStartLifecyclePolicyPreview :: StartLifecyclePolicyPreviewResponse -> TestTree
responseStartLifecyclePolicyPreview =
  res
    "StartLifecyclePolicyPreviewResponse"
    "fixture/StartLifecyclePolicyPreviewResponse.proto"
    ecr
    (Proxy :: Proxy StartLifecyclePolicyPreview)

responseDescribeRepositories :: DescribeRepositoriesResponse -> TestTree
responseDescribeRepositories =
  res
    "DescribeRepositoriesResponse"
    "fixture/DescribeRepositoriesResponse.proto"
    ecr
    (Proxy :: Proxy DescribeRepositories)

responseListImages :: ListImagesResponse -> TestTree
responseListImages =
  res
    "ListImagesResponse"
    "fixture/ListImagesResponse.proto"
    ecr
    (Proxy :: Proxy ListImages)

responsePutImage :: PutImageResponse -> TestTree
responsePutImage =
  res
    "PutImageResponse"
    "fixture/PutImageResponse.proto"
    ecr
    (Proxy :: Proxy PutImage)

responseInitiateLayerUpload :: InitiateLayerUploadResponse -> TestTree
responseInitiateLayerUpload =
  res
    "InitiateLayerUploadResponse"
    "fixture/InitiateLayerUploadResponse.proto"
    ecr
    (Proxy :: Proxy InitiateLayerUpload)

responseGetRegistryPolicy :: GetRegistryPolicyResponse -> TestTree
responseGetRegistryPolicy =
  res
    "GetRegistryPolicyResponse"
    "fixture/GetRegistryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy GetRegistryPolicy)

responseDeleteRepositoryPolicy :: DeleteRepositoryPolicyResponse -> TestTree
responseDeleteRepositoryPolicy =
  res
    "DeleteRepositoryPolicyResponse"
    "fixture/DeleteRepositoryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy DeleteRepositoryPolicy)

responseDescribeImageScanFindings :: DescribeImageScanFindingsResponse -> TestTree
responseDescribeImageScanFindings =
  res
    "DescribeImageScanFindingsResponse"
    "fixture/DescribeImageScanFindingsResponse.proto"
    ecr
    (Proxy :: Proxy DescribeImageScanFindings)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    ecr
    (Proxy :: Proxy UntagResource)

responseSetRepositoryPolicy :: SetRepositoryPolicyResponse -> TestTree
responseSetRepositoryPolicy =
  res
    "SetRepositoryPolicyResponse"
    "fixture/SetRepositoryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy SetRepositoryPolicy)

responseDescribeRegistry :: DescribeRegistryResponse -> TestTree
responseDescribeRegistry =
  res
    "DescribeRegistryResponse"
    "fixture/DescribeRegistryResponse.proto"
    ecr
    (Proxy :: Proxy DescribeRegistry)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    ecr
    (Proxy :: Proxy TagResource)

responseBatchDeleteImage :: BatchDeleteImageResponse -> TestTree
responseBatchDeleteImage =
  res
    "BatchDeleteImageResponse"
    "fixture/BatchDeleteImageResponse.proto"
    ecr
    (Proxy :: Proxy BatchDeleteImage)

responsePutImageScanningConfiguration :: PutImageScanningConfigurationResponse -> TestTree
responsePutImageScanningConfiguration =
  res
    "PutImageScanningConfigurationResponse"
    "fixture/PutImageScanningConfigurationResponse.proto"
    ecr
    (Proxy :: Proxy PutImageScanningConfiguration)

responseDeleteLifecyclePolicy :: DeleteLifecyclePolicyResponse -> TestTree
responseDeleteLifecyclePolicy =
  res
    "DeleteLifecyclePolicyResponse"
    "fixture/DeleteLifecyclePolicyResponse.proto"
    ecr
    (Proxy :: Proxy DeleteLifecyclePolicy)

responseDeleteRegistryPolicy :: DeleteRegistryPolicyResponse -> TestTree
responseDeleteRegistryPolicy =
  res
    "DeleteRegistryPolicyResponse"
    "fixture/DeleteRegistryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy DeleteRegistryPolicy)

responseGetRepositoryPolicy :: GetRepositoryPolicyResponse -> TestTree
responseGetRepositoryPolicy =
  res
    "GetRepositoryPolicyResponse"
    "fixture/GetRepositoryPolicyResponse.proto"
    ecr
    (Proxy :: Proxy GetRepositoryPolicy)

responseDescribeImages :: DescribeImagesResponse -> TestTree
responseDescribeImages =
  res
    "DescribeImagesResponse"
    "fixture/DescribeImagesResponse.proto"
    ecr
    (Proxy :: Proxy DescribeImages)

responseGetDownloadURLForLayer :: GetDownloadURLForLayerResponse -> TestTree
responseGetDownloadURLForLayer =
  res
    "GetDownloadURLForLayerResponse"
    "fixture/GetDownloadURLForLayerResponse.proto"
    ecr
    (Proxy :: Proxy GetDownloadURLForLayer)

responseCompleteLayerUpload :: CompleteLayerUploadResponse -> TestTree
responseCompleteLayerUpload =
  res
    "CompleteLayerUploadResponse"
    "fixture/CompleteLayerUploadResponse.proto"
    ecr
    (Proxy :: Proxy CompleteLayerUpload)

responseGetAuthorizationToken :: GetAuthorizationTokenResponse -> TestTree
responseGetAuthorizationToken =
  res
    "GetAuthorizationTokenResponse"
    "fixture/GetAuthorizationTokenResponse.proto"
    ecr
    (Proxy :: Proxy GetAuthorizationToken)

responseCreateRepository :: CreateRepositoryResponse -> TestTree
responseCreateRepository =
  res
    "CreateRepositoryResponse"
    "fixture/CreateRepositoryResponse.proto"
    ecr
    (Proxy :: Proxy CreateRepository)

responseDeleteRepository :: DeleteRepositoryResponse -> TestTree
responseDeleteRepository =
  res
    "DeleteRepositoryResponse"
    "fixture/DeleteRepositoryResponse.proto"
    ecr
    (Proxy :: Proxy DeleteRepository)

responseBatchCheckLayerAvailability :: BatchCheckLayerAvailabilityResponse -> TestTree
responseBatchCheckLayerAvailability =
  res
    "BatchCheckLayerAvailabilityResponse"
    "fixture/BatchCheckLayerAvailabilityResponse.proto"
    ecr
    (Proxy :: Proxy BatchCheckLayerAvailability)

responseGetLifecyclePolicy :: GetLifecyclePolicyResponse -> TestTree
responseGetLifecyclePolicy =
  res
    "GetLifecyclePolicyResponse"
    "fixture/GetLifecyclePolicyResponse.proto"
    ecr
    (Proxy :: Proxy GetLifecyclePolicy)

responseStartImageScan :: StartImageScanResponse -> TestTree
responseStartImageScan =
  res
    "StartImageScanResponse"
    "fixture/StartImageScanResponse.proto"
    ecr
    (Proxy :: Proxy StartImageScan)

responsePutReplicationConfiguration :: PutReplicationConfigurationResponse -> TestTree
responsePutReplicationConfiguration =
  res
    "PutReplicationConfigurationResponse"
    "fixture/PutReplicationConfigurationResponse.proto"
    ecr
    (Proxy :: Proxy PutReplicationConfiguration)

responseBatchGetImage :: BatchGetImageResponse -> TestTree
responseBatchGetImage =
  res
    "BatchGetImageResponse"
    "fixture/BatchGetImageResponse.proto"
    ecr
    (Proxy :: Proxy BatchGetImage)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    ecr
    (Proxy :: Proxy ListTagsForResource)

responsePutImageTagMutability :: PutImageTagMutabilityResponse -> TestTree
responsePutImageTagMutability =
  res
    "PutImageTagMutabilityResponse"
    "fixture/PutImageTagMutabilityResponse.proto"
    ecr
    (Proxy :: Proxy PutImageTagMutability)

responseGetLifecyclePolicyPreview :: GetLifecyclePolicyPreviewResponse -> TestTree
responseGetLifecyclePolicyPreview =
  res
    "GetLifecyclePolicyPreviewResponse"
    "fixture/GetLifecyclePolicyPreviewResponse.proto"
    ecr
    (Proxy :: Proxy GetLifecyclePolicyPreview)
