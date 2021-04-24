{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.S3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.S3 where

import Data.Proxy
import Network.AWS.S3
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.S3.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestPutBucketPolicy $
--             putBucketPolicy
--
--         , requestGetBucketEncryption $
--             getBucketEncryption
--
--         , requestDeleteBucket $
--             deleteBucket
--
--         , requestDeleteObjects $
--             deleteObjects
--
--         , requestPutBucketLogging $
--             putBucketLogging
--
--         , requestDeleteBucketWebsite $
--             deleteBucketWebsite
--
--         , requestCompleteMultipartUpload $
--             completeMultipartUpload
--
--         , requestSelectObjectContent $
--             selectObjectContent
--
--         , requestGetBucketPolicyStatus $
--             getBucketPolicyStatus
--
--         , requestListObjects $
--             listObjects
--
--         , requestDeleteObject $
--             deleteObject
--
--         , requestDeleteBucketAnalyticsConfiguration $
--             deleteBucketAnalyticsConfiguration
--
--         , requestDeleteObjectTagging $
--             deleteObjectTagging
--
--         , requestGetBucketACL $
--             getBucketACL
--
--         , requestGetObjectTagging $
--             getObjectTagging
--
--         , requestPutBucketReplication $
--             putBucketReplication
--
--         , requestGetBucketWebsite $
--             getBucketWebsite
--
--         , requestGetObjectLockConfiguration $
--             getObjectLockConfiguration
--
--         , requestDeleteBucketMetricsConfiguration $
--             deleteBucketMetricsConfiguration
--
--         , requestGetBucketPolicy $
--             getBucketPolicy
--
--         , requestPutBucketEncryption $
--             putBucketEncryption
--
--         , requestListBucketMetricsConfigurations $
--             listBucketMetricsConfigurations
--
--         , requestPutBucketAccelerateConfiguration $
--             putBucketAccelerateConfiguration
--
--         , requestPutBucketOwnershipControls $
--             putBucketOwnershipControls
--
--         , requestPutObjectRetention $
--             putObjectRetention
--
--         , requestPutObjectLegalHold $
--             putObjectLegalHold
--
--         , requestHeadObject $
--             headObject
--
--         , requestGetBucketTagging $
--             getBucketTagging
--
--         , requestGetBucketLocation $
--             getBucketLocation
--
--         , requestPutBucketInventoryConfiguration $
--             putBucketInventoryConfiguration
--
--         , requestListBucketInventoryConfigurations $
--             listBucketInventoryConfigurations
--
--         , requestGetObjectACL $
--             getObjectACL
--
--         , requestDeletePublicAccessBlock $
--             deletePublicAccessBlock
--
--         , requestDeleteBucketIntelligentTieringConfiguration $
--             deleteBucketIntelligentTieringConfiguration
--
--         , requestGetBucketVersioning $
--             getBucketVersioning
--
--         , requestPutBucketTagging $
--             putBucketTagging
--
--         , requestCreateBucket $
--             createBucket
--
--         , requestPutObjectACL $
--             putObjectACL
--
--         , requestPutBucketCORS $
--             putBucketCORS
--
--         , requestGetObjectRetention $
--             getObjectRetention
--
--         , requestGetObjectTorrent $
--             getObjectTorrent
--
--         , requestGetBucketOwnershipControls $
--             getBucketOwnershipControls
--
--         , requestGetBucketMetricsConfiguration $
--             getBucketMetricsConfiguration
--
--         , requestGetBucketAccelerateConfiguration $
--             getBucketAccelerateConfiguration
--
--         , requestGetObjectLegalHold $
--             getObjectLegalHold
--
--         , requestListBuckets $
--             listBuckets
--
--         , requestDeleteBucketPolicy $
--             deleteBucketPolicy
--
--         , requestPutObjectLockConfiguration $
--             putObjectLockConfiguration
--
--         , requestAbortMultipartUpload $
--             abortMultipartUpload
--
--         , requestUploadPart $
--             uploadPart
--
--         , requestPutObject $
--             putObject
--
--         , requestPutBucketRequestPayment $
--             putBucketRequestPayment
--
--         , requestListMultipartUploads $
--             listMultipartUploads
--
--         , requestGetBucketReplication $
--             getBucketReplication
--
--         , requestPutBucketWebsite $
--             putBucketWebsite
--
--         , requestPutBucketAnalyticsConfiguration $
--             putBucketAnalyticsConfiguration
--
--         , requestPutObjectTagging $
--             putObjectTagging
--
--         , requestUploadPartCopy $
--             uploadPartCopy
--
--         , requestCreateMultipartUpload $
--             createMultipartUpload
--
--         , requestPutBucketLifecycleConfiguration $
--             putBucketLifecycleConfiguration
--
--         , requestPutBucketACL $
--             putBucketACL
--
--         , requestDeleteBucketLifecycle $
--             deleteBucketLifecycle
--
--         , requestListBucketAnalyticsConfigurations $
--             listBucketAnalyticsConfigurations
--
--         , requestGetBucketAnalyticsConfiguration $
--             getBucketAnalyticsConfiguration
--
--         , requestHeadBucket $
--             headBucket
--
--         , requestListObjectVersions $
--             listObjectVersions
--
--         , requestGetBucketLifecycleConfiguration $
--             getBucketLifecycleConfiguration
--
--         , requestListParts $
--             listParts
--
--         , requestGetBucketRequestPayment $
--             getBucketRequestPayment
--
--         , requestDeleteBucketReplication $
--             deleteBucketReplication
--
--         , requestGetBucketLogging $
--             getBucketLogging
--
--         , requestGetObject $
--             getObject
--
--         , requestDeleteBucketOwnershipControls $
--             deleteBucketOwnershipControls
--
--         , requestPutBucketMetricsConfiguration $
--             putBucketMetricsConfiguration
--
--         , requestListObjectsV2 $
--             listObjectsV2
--
--         , requestCopyObject $
--             copyObject
--
--         , requestDeleteBucketEncryption $
--             deleteBucketEncryption
--
--         , requestPutBucketVersioning $
--             putBucketVersioning
--
--         , requestGetBucketNotificationConfiguration $
--             getBucketNotificationConfiguration
--
--         , requestPutPublicAccessBlock $
--             putPublicAccessBlock
--
--         , requestDeleteBucketInventoryConfiguration $
--             deleteBucketInventoryConfiguration
--
--         , requestGetBucketIntelligentTieringConfiguration $
--             getBucketIntelligentTieringConfiguration
--
--         , requestRestoreObject $
--             restoreObject
--
--         , requestGetBucketCORS $
--             getBucketCORS
--
--         , requestGetBucketInventoryConfiguration $
--             getBucketInventoryConfiguration
--
--         , requestGetPublicAccessBlock $
--             getPublicAccessBlock
--
--         , requestDeleteBucketCORS $
--             deleteBucketCORS
--
--         , requestDeleteBucketTagging $
--             deleteBucketTagging
--
--         , requestListBucketIntelligentTieringConfigurations $
--             listBucketIntelligentTieringConfigurations
--
--         , requestPutBucketNotificationConfiguration $
--             putBucketNotificationConfiguration
--
--         , requestPutBucketIntelligentTieringConfiguration $
--             putBucketIntelligentTieringConfiguration
--
--           ]

--     , testGroup "response"
--         [ responsePutBucketPolicy $
--             putBucketPolicyResponse
--
--         , responseGetBucketEncryption $
--             getBucketEncryptionResponse
--
--         , responseDeleteBucket $
--             deleteBucketResponse
--
--         , responseDeleteObjects $
--             deleteObjectsResponse
--
--         , responsePutBucketLogging $
--             putBucketLoggingResponse
--
--         , responseDeleteBucketWebsite $
--             deleteBucketWebsiteResponse
--
--         , responseCompleteMultipartUpload $
--             completeMultipartUploadResponse
--
--         , responseSelectObjectContent $
--             selectObjectContentResponse
--
--         , responseGetBucketPolicyStatus $
--             getBucketPolicyStatusResponse
--
--         , responseListObjects $
--             listObjectsResponse
--
--         , responseDeleteObject $
--             deleteObjectResponse
--
--         , responseDeleteBucketAnalyticsConfiguration $
--             deleteBucketAnalyticsConfigurationResponse
--
--         , responseDeleteObjectTagging $
--             deleteObjectTaggingResponse
--
--         , responseGetBucketACL $
--             getBucketACLResponse
--
--         , responseGetObjectTagging $
--             getObjectTaggingResponse
--
--         , responsePutBucketReplication $
--             putBucketReplicationResponse
--
--         , responseGetBucketWebsite $
--             getBucketWebsiteResponse
--
--         , responseGetObjectLockConfiguration $
--             getObjectLockConfigurationResponse
--
--         , responseDeleteBucketMetricsConfiguration $
--             deleteBucketMetricsConfigurationResponse
--
--         , responseGetBucketPolicy $
--             getBucketPolicyResponse
--
--         , responsePutBucketEncryption $
--             putBucketEncryptionResponse
--
--         , responseListBucketMetricsConfigurations $
--             listBucketMetricsConfigurationsResponse
--
--         , responsePutBucketAccelerateConfiguration $
--             putBucketAccelerateConfigurationResponse
--
--         , responsePutBucketOwnershipControls $
--             putBucketOwnershipControlsResponse
--
--         , responsePutObjectRetention $
--             putObjectRetentionResponse
--
--         , responsePutObjectLegalHold $
--             putObjectLegalHoldResponse
--
--         , responseHeadObject $
--             headObjectResponse
--
--         , responseGetBucketTagging $
--             getBucketTaggingResponse
--
--         , responseGetBucketLocation $
--             getBucketLocationResponse
--
--         , responsePutBucketInventoryConfiguration $
--             putBucketInventoryConfigurationResponse
--
--         , responseListBucketInventoryConfigurations $
--             listBucketInventoryConfigurationsResponse
--
--         , responseGetObjectACL $
--             getObjectACLResponse
--
--         , responseDeletePublicAccessBlock $
--             deletePublicAccessBlockResponse
--
--         , responseDeleteBucketIntelligentTieringConfiguration $
--             deleteBucketIntelligentTieringConfigurationResponse
--
--         , responseGetBucketVersioning $
--             getBucketVersioningResponse
--
--         , responsePutBucketTagging $
--             putBucketTaggingResponse
--
--         , responseCreateBucket $
--             createBucketResponse
--
--         , responsePutObjectACL $
--             putObjectACLResponse
--
--         , responsePutBucketCORS $
--             putBucketCORSResponse
--
--         , responseGetObjectRetention $
--             getObjectRetentionResponse
--
--         , responseGetObjectTorrent $
--             getObjectTorrentResponse
--
--         , responseGetBucketOwnershipControls $
--             getBucketOwnershipControlsResponse
--
--         , responseGetBucketMetricsConfiguration $
--             getBucketMetricsConfigurationResponse
--
--         , responseGetBucketAccelerateConfiguration $
--             getBucketAccelerateConfigurationResponse
--
--         , responseGetObjectLegalHold $
--             getObjectLegalHoldResponse
--
--         , responseListBuckets $
--             listBucketsResponse
--
--         , responseDeleteBucketPolicy $
--             deleteBucketPolicyResponse
--
--         , responsePutObjectLockConfiguration $
--             putObjectLockConfigurationResponse
--
--         , responseAbortMultipartUpload $
--             abortMultipartUploadResponse
--
--         , responseUploadPart $
--             uploadPartResponse
--
--         , responsePutObject $
--             putObjectResponse
--
--         , responsePutBucketRequestPayment $
--             putBucketRequestPaymentResponse
--
--         , responseListMultipartUploads $
--             listMultipartUploadsResponse
--
--         , responseGetBucketReplication $
--             getBucketReplicationResponse
--
--         , responsePutBucketWebsite $
--             putBucketWebsiteResponse
--
--         , responsePutBucketAnalyticsConfiguration $
--             putBucketAnalyticsConfigurationResponse
--
--         , responsePutObjectTagging $
--             putObjectTaggingResponse
--
--         , responseUploadPartCopy $
--             uploadPartCopyResponse
--
--         , responseCreateMultipartUpload $
--             createMultipartUploadResponse
--
--         , responsePutBucketLifecycleConfiguration $
--             putBucketLifecycleConfigurationResponse
--
--         , responsePutBucketACL $
--             putBucketACLResponse
--
--         , responseDeleteBucketLifecycle $
--             deleteBucketLifecycleResponse
--
--         , responseListBucketAnalyticsConfigurations $
--             listBucketAnalyticsConfigurationsResponse
--
--         , responseGetBucketAnalyticsConfiguration $
--             getBucketAnalyticsConfigurationResponse
--
--         , responseHeadBucket $
--             headBucketResponse
--
--         , responseListObjectVersions $
--             listObjectVersionsResponse
--
--         , responseGetBucketLifecycleConfiguration $
--             getBucketLifecycleConfigurationResponse
--
--         , responseListParts $
--             listPartsResponse
--
--         , responseGetBucketRequestPayment $
--             getBucketRequestPaymentResponse
--
--         , responseDeleteBucketReplication $
--             deleteBucketReplicationResponse
--
--         , responseGetBucketLogging $
--             getBucketLoggingResponse
--
--         , responseGetObject $
--             getObjectResponse
--
--         , responseDeleteBucketOwnershipControls $
--             deleteBucketOwnershipControlsResponse
--
--         , responsePutBucketMetricsConfiguration $
--             putBucketMetricsConfigurationResponse
--
--         , responseListObjectsV2 $
--             listObjectsV2Response
--
--         , responseCopyObject $
--             copyObjectResponse
--
--         , responseDeleteBucketEncryption $
--             deleteBucketEncryptionResponse
--
--         , responsePutBucketVersioning $
--             putBucketVersioningResponse
--
--         , responseGetBucketNotificationConfiguration $
--             notificationConfiguration
--
--         , responsePutPublicAccessBlock $
--             putPublicAccessBlockResponse
--
--         , responseDeleteBucketInventoryConfiguration $
--             deleteBucketInventoryConfigurationResponse
--
--         , responseGetBucketIntelligentTieringConfiguration $
--             getBucketIntelligentTieringConfigurationResponse
--
--         , responseRestoreObject $
--             restoreObjectResponse
--
--         , responseGetBucketCORS $
--             getBucketCORSResponse
--
--         , responseGetBucketInventoryConfiguration $
--             getBucketInventoryConfigurationResponse
--
--         , responseGetPublicAccessBlock $
--             getPublicAccessBlockResponse
--
--         , responseDeleteBucketCORS $
--             deleteBucketCORSResponse
--
--         , responseDeleteBucketTagging $
--             deleteBucketTaggingResponse
--
--         , responseListBucketIntelligentTieringConfigurations $
--             listBucketIntelligentTieringConfigurationsResponse
--
--         , responsePutBucketNotificationConfiguration $
--             putBucketNotificationConfigurationResponse
--
--         , responsePutBucketIntelligentTieringConfiguration $
--             putBucketIntelligentTieringConfigurationResponse
--
--           ]
--     ]

-- Requests

requestPutBucketPolicy :: PutBucketPolicy -> TestTree
requestPutBucketPolicy =
  req
    "PutBucketPolicy"
    "fixture/PutBucketPolicy.yaml"

requestGetBucketEncryption :: GetBucketEncryption -> TestTree
requestGetBucketEncryption =
  req
    "GetBucketEncryption"
    "fixture/GetBucketEncryption.yaml"

requestDeleteBucket :: DeleteBucket -> TestTree
requestDeleteBucket =
  req
    "DeleteBucket"
    "fixture/DeleteBucket.yaml"

requestDeleteObjects :: DeleteObjects -> TestTree
requestDeleteObjects =
  req
    "DeleteObjects"
    "fixture/DeleteObjects.yaml"

requestPutBucketLogging :: PutBucketLogging -> TestTree
requestPutBucketLogging =
  req
    "PutBucketLogging"
    "fixture/PutBucketLogging.yaml"

requestDeleteBucketWebsite :: DeleteBucketWebsite -> TestTree
requestDeleteBucketWebsite =
  req
    "DeleteBucketWebsite"
    "fixture/DeleteBucketWebsite.yaml"

requestCompleteMultipartUpload :: CompleteMultipartUpload -> TestTree
requestCompleteMultipartUpload =
  req
    "CompleteMultipartUpload"
    "fixture/CompleteMultipartUpload.yaml"

requestSelectObjectContent :: SelectObjectContent -> TestTree
requestSelectObjectContent =
  req
    "SelectObjectContent"
    "fixture/SelectObjectContent.yaml"

requestGetBucketPolicyStatus :: GetBucketPolicyStatus -> TestTree
requestGetBucketPolicyStatus =
  req
    "GetBucketPolicyStatus"
    "fixture/GetBucketPolicyStatus.yaml"

requestListObjects :: ListObjects -> TestTree
requestListObjects =
  req
    "ListObjects"
    "fixture/ListObjects.yaml"

requestDeleteObject :: DeleteObject -> TestTree
requestDeleteObject =
  req
    "DeleteObject"
    "fixture/DeleteObject.yaml"

requestDeleteBucketAnalyticsConfiguration :: DeleteBucketAnalyticsConfiguration -> TestTree
requestDeleteBucketAnalyticsConfiguration =
  req
    "DeleteBucketAnalyticsConfiguration"
    "fixture/DeleteBucketAnalyticsConfiguration.yaml"

requestDeleteObjectTagging :: DeleteObjectTagging -> TestTree
requestDeleteObjectTagging =
  req
    "DeleteObjectTagging"
    "fixture/DeleteObjectTagging.yaml"

requestGetBucketACL :: GetBucketACL -> TestTree
requestGetBucketACL =
  req
    "GetBucketACL"
    "fixture/GetBucketACL.yaml"

requestGetObjectTagging :: GetObjectTagging -> TestTree
requestGetObjectTagging =
  req
    "GetObjectTagging"
    "fixture/GetObjectTagging.yaml"

requestPutBucketReplication :: PutBucketReplication -> TestTree
requestPutBucketReplication =
  req
    "PutBucketReplication"
    "fixture/PutBucketReplication.yaml"

requestGetBucketWebsite :: GetBucketWebsite -> TestTree
requestGetBucketWebsite =
  req
    "GetBucketWebsite"
    "fixture/GetBucketWebsite.yaml"

requestGetObjectLockConfiguration :: GetObjectLockConfiguration -> TestTree
requestGetObjectLockConfiguration =
  req
    "GetObjectLockConfiguration"
    "fixture/GetObjectLockConfiguration.yaml"

requestDeleteBucketMetricsConfiguration :: DeleteBucketMetricsConfiguration -> TestTree
requestDeleteBucketMetricsConfiguration =
  req
    "DeleteBucketMetricsConfiguration"
    "fixture/DeleteBucketMetricsConfiguration.yaml"

requestGetBucketPolicy :: GetBucketPolicy -> TestTree
requestGetBucketPolicy =
  req
    "GetBucketPolicy"
    "fixture/GetBucketPolicy.yaml"

requestPutBucketEncryption :: PutBucketEncryption -> TestTree
requestPutBucketEncryption =
  req
    "PutBucketEncryption"
    "fixture/PutBucketEncryption.yaml"

requestListBucketMetricsConfigurations :: ListBucketMetricsConfigurations -> TestTree
requestListBucketMetricsConfigurations =
  req
    "ListBucketMetricsConfigurations"
    "fixture/ListBucketMetricsConfigurations.yaml"

requestPutBucketAccelerateConfiguration :: PutBucketAccelerateConfiguration -> TestTree
requestPutBucketAccelerateConfiguration =
  req
    "PutBucketAccelerateConfiguration"
    "fixture/PutBucketAccelerateConfiguration.yaml"

requestPutBucketOwnershipControls :: PutBucketOwnershipControls -> TestTree
requestPutBucketOwnershipControls =
  req
    "PutBucketOwnershipControls"
    "fixture/PutBucketOwnershipControls.yaml"

requestPutObjectRetention :: PutObjectRetention -> TestTree
requestPutObjectRetention =
  req
    "PutObjectRetention"
    "fixture/PutObjectRetention.yaml"

requestPutObjectLegalHold :: PutObjectLegalHold -> TestTree
requestPutObjectLegalHold =
  req
    "PutObjectLegalHold"
    "fixture/PutObjectLegalHold.yaml"

requestHeadObject :: HeadObject -> TestTree
requestHeadObject =
  req
    "HeadObject"
    "fixture/HeadObject.yaml"

requestGetBucketTagging :: GetBucketTagging -> TestTree
requestGetBucketTagging =
  req
    "GetBucketTagging"
    "fixture/GetBucketTagging.yaml"

requestGetBucketLocation :: GetBucketLocation -> TestTree
requestGetBucketLocation =
  req
    "GetBucketLocation"
    "fixture/GetBucketLocation.yaml"

requestPutBucketInventoryConfiguration :: PutBucketInventoryConfiguration -> TestTree
requestPutBucketInventoryConfiguration =
  req
    "PutBucketInventoryConfiguration"
    "fixture/PutBucketInventoryConfiguration.yaml"

requestListBucketInventoryConfigurations :: ListBucketInventoryConfigurations -> TestTree
requestListBucketInventoryConfigurations =
  req
    "ListBucketInventoryConfigurations"
    "fixture/ListBucketInventoryConfigurations.yaml"

requestGetObjectACL :: GetObjectACL -> TestTree
requestGetObjectACL =
  req
    "GetObjectACL"
    "fixture/GetObjectACL.yaml"

requestDeletePublicAccessBlock :: DeletePublicAccessBlock -> TestTree
requestDeletePublicAccessBlock =
  req
    "DeletePublicAccessBlock"
    "fixture/DeletePublicAccessBlock.yaml"

requestDeleteBucketIntelligentTieringConfiguration :: DeleteBucketIntelligentTieringConfiguration -> TestTree
requestDeleteBucketIntelligentTieringConfiguration =
  req
    "DeleteBucketIntelligentTieringConfiguration"
    "fixture/DeleteBucketIntelligentTieringConfiguration.yaml"

requestGetBucketVersioning :: GetBucketVersioning -> TestTree
requestGetBucketVersioning =
  req
    "GetBucketVersioning"
    "fixture/GetBucketVersioning.yaml"

requestPutBucketTagging :: PutBucketTagging -> TestTree
requestPutBucketTagging =
  req
    "PutBucketTagging"
    "fixture/PutBucketTagging.yaml"

requestCreateBucket :: CreateBucket -> TestTree
requestCreateBucket =
  req
    "CreateBucket"
    "fixture/CreateBucket.yaml"

requestPutObjectACL :: PutObjectACL -> TestTree
requestPutObjectACL =
  req
    "PutObjectACL"
    "fixture/PutObjectACL.yaml"

requestPutBucketCORS :: PutBucketCORS -> TestTree
requestPutBucketCORS =
  req
    "PutBucketCORS"
    "fixture/PutBucketCORS.yaml"

requestGetObjectRetention :: GetObjectRetention -> TestTree
requestGetObjectRetention =
  req
    "GetObjectRetention"
    "fixture/GetObjectRetention.yaml"

requestGetObjectTorrent :: GetObjectTorrent -> TestTree
requestGetObjectTorrent =
  req
    "GetObjectTorrent"
    "fixture/GetObjectTorrent.yaml"

requestGetBucketOwnershipControls :: GetBucketOwnershipControls -> TestTree
requestGetBucketOwnershipControls =
  req
    "GetBucketOwnershipControls"
    "fixture/GetBucketOwnershipControls.yaml"

requestGetBucketMetricsConfiguration :: GetBucketMetricsConfiguration -> TestTree
requestGetBucketMetricsConfiguration =
  req
    "GetBucketMetricsConfiguration"
    "fixture/GetBucketMetricsConfiguration.yaml"

requestGetBucketAccelerateConfiguration :: GetBucketAccelerateConfiguration -> TestTree
requestGetBucketAccelerateConfiguration =
  req
    "GetBucketAccelerateConfiguration"
    "fixture/GetBucketAccelerateConfiguration.yaml"

requestGetObjectLegalHold :: GetObjectLegalHold -> TestTree
requestGetObjectLegalHold =
  req
    "GetObjectLegalHold"
    "fixture/GetObjectLegalHold.yaml"

requestListBuckets :: ListBuckets -> TestTree
requestListBuckets =
  req
    "ListBuckets"
    "fixture/ListBuckets.yaml"

requestDeleteBucketPolicy :: DeleteBucketPolicy -> TestTree
requestDeleteBucketPolicy =
  req
    "DeleteBucketPolicy"
    "fixture/DeleteBucketPolicy.yaml"

requestPutObjectLockConfiguration :: PutObjectLockConfiguration -> TestTree
requestPutObjectLockConfiguration =
  req
    "PutObjectLockConfiguration"
    "fixture/PutObjectLockConfiguration.yaml"

requestAbortMultipartUpload :: AbortMultipartUpload -> TestTree
requestAbortMultipartUpload =
  req
    "AbortMultipartUpload"
    "fixture/AbortMultipartUpload.yaml"

requestPutBucketRequestPayment :: PutBucketRequestPayment -> TestTree
requestPutBucketRequestPayment =
  req
    "PutBucketRequestPayment"
    "fixture/PutBucketRequestPayment.yaml"

requestListMultipartUploads :: ListMultipartUploads -> TestTree
requestListMultipartUploads =
  req
    "ListMultipartUploads"
    "fixture/ListMultipartUploads.yaml"

requestGetBucketReplication :: GetBucketReplication -> TestTree
requestGetBucketReplication =
  req
    "GetBucketReplication"
    "fixture/GetBucketReplication.yaml"

requestPutBucketWebsite :: PutBucketWebsite -> TestTree
requestPutBucketWebsite =
  req
    "PutBucketWebsite"
    "fixture/PutBucketWebsite.yaml"

requestPutBucketAnalyticsConfiguration :: PutBucketAnalyticsConfiguration -> TestTree
requestPutBucketAnalyticsConfiguration =
  req
    "PutBucketAnalyticsConfiguration"
    "fixture/PutBucketAnalyticsConfiguration.yaml"

requestPutObjectTagging :: PutObjectTagging -> TestTree
requestPutObjectTagging =
  req
    "PutObjectTagging"
    "fixture/PutObjectTagging.yaml"

requestUploadPartCopy :: UploadPartCopy -> TestTree
requestUploadPartCopy =
  req
    "UploadPartCopy"
    "fixture/UploadPartCopy.yaml"

requestCreateMultipartUpload :: CreateMultipartUpload -> TestTree
requestCreateMultipartUpload =
  req
    "CreateMultipartUpload"
    "fixture/CreateMultipartUpload.yaml"

requestPutBucketLifecycleConfiguration :: PutBucketLifecycleConfiguration -> TestTree
requestPutBucketLifecycleConfiguration =
  req
    "PutBucketLifecycleConfiguration"
    "fixture/PutBucketLifecycleConfiguration.yaml"

requestPutBucketACL :: PutBucketACL -> TestTree
requestPutBucketACL =
  req
    "PutBucketACL"
    "fixture/PutBucketACL.yaml"

requestDeleteBucketLifecycle :: DeleteBucketLifecycle -> TestTree
requestDeleteBucketLifecycle =
  req
    "DeleteBucketLifecycle"
    "fixture/DeleteBucketLifecycle.yaml"

requestListBucketAnalyticsConfigurations :: ListBucketAnalyticsConfigurations -> TestTree
requestListBucketAnalyticsConfigurations =
  req
    "ListBucketAnalyticsConfigurations"
    "fixture/ListBucketAnalyticsConfigurations.yaml"

requestGetBucketAnalyticsConfiguration :: GetBucketAnalyticsConfiguration -> TestTree
requestGetBucketAnalyticsConfiguration =
  req
    "GetBucketAnalyticsConfiguration"
    "fixture/GetBucketAnalyticsConfiguration.yaml"

requestHeadBucket :: HeadBucket -> TestTree
requestHeadBucket =
  req
    "HeadBucket"
    "fixture/HeadBucket.yaml"

requestListObjectVersions :: ListObjectVersions -> TestTree
requestListObjectVersions =
  req
    "ListObjectVersions"
    "fixture/ListObjectVersions.yaml"

requestGetBucketLifecycleConfiguration :: GetBucketLifecycleConfiguration -> TestTree
requestGetBucketLifecycleConfiguration =
  req
    "GetBucketLifecycleConfiguration"
    "fixture/GetBucketLifecycleConfiguration.yaml"

requestListParts :: ListParts -> TestTree
requestListParts =
  req
    "ListParts"
    "fixture/ListParts.yaml"

requestGetBucketRequestPayment :: GetBucketRequestPayment -> TestTree
requestGetBucketRequestPayment =
  req
    "GetBucketRequestPayment"
    "fixture/GetBucketRequestPayment.yaml"

requestDeleteBucketReplication :: DeleteBucketReplication -> TestTree
requestDeleteBucketReplication =
  req
    "DeleteBucketReplication"
    "fixture/DeleteBucketReplication.yaml"

requestGetBucketLogging :: GetBucketLogging -> TestTree
requestGetBucketLogging =
  req
    "GetBucketLogging"
    "fixture/GetBucketLogging.yaml"

requestGetObject :: GetObject -> TestTree
requestGetObject =
  req
    "GetObject"
    "fixture/GetObject.yaml"

requestDeleteBucketOwnershipControls :: DeleteBucketOwnershipControls -> TestTree
requestDeleteBucketOwnershipControls =
  req
    "DeleteBucketOwnershipControls"
    "fixture/DeleteBucketOwnershipControls.yaml"

requestPutBucketMetricsConfiguration :: PutBucketMetricsConfiguration -> TestTree
requestPutBucketMetricsConfiguration =
  req
    "PutBucketMetricsConfiguration"
    "fixture/PutBucketMetricsConfiguration.yaml"

requestListObjectsV2 :: ListObjectsV2 -> TestTree
requestListObjectsV2 =
  req
    "ListObjectsV2"
    "fixture/ListObjectsV2.yaml"

requestCopyObject :: CopyObject -> TestTree
requestCopyObject =
  req
    "CopyObject"
    "fixture/CopyObject.yaml"

requestDeleteBucketEncryption :: DeleteBucketEncryption -> TestTree
requestDeleteBucketEncryption =
  req
    "DeleteBucketEncryption"
    "fixture/DeleteBucketEncryption.yaml"

requestPutBucketVersioning :: PutBucketVersioning -> TestTree
requestPutBucketVersioning =
  req
    "PutBucketVersioning"
    "fixture/PutBucketVersioning.yaml"

requestGetBucketNotificationConfiguration :: GetBucketNotificationConfiguration -> TestTree
requestGetBucketNotificationConfiguration =
  req
    "GetBucketNotificationConfiguration"
    "fixture/GetBucketNotificationConfiguration.yaml"

requestPutPublicAccessBlock :: PutPublicAccessBlock -> TestTree
requestPutPublicAccessBlock =
  req
    "PutPublicAccessBlock"
    "fixture/PutPublicAccessBlock.yaml"

requestDeleteBucketInventoryConfiguration :: DeleteBucketInventoryConfiguration -> TestTree
requestDeleteBucketInventoryConfiguration =
  req
    "DeleteBucketInventoryConfiguration"
    "fixture/DeleteBucketInventoryConfiguration.yaml"

requestGetBucketIntelligentTieringConfiguration :: GetBucketIntelligentTieringConfiguration -> TestTree
requestGetBucketIntelligentTieringConfiguration =
  req
    "GetBucketIntelligentTieringConfiguration"
    "fixture/GetBucketIntelligentTieringConfiguration.yaml"

requestRestoreObject :: RestoreObject -> TestTree
requestRestoreObject =
  req
    "RestoreObject"
    "fixture/RestoreObject.yaml"

requestGetBucketCORS :: GetBucketCORS -> TestTree
requestGetBucketCORS =
  req
    "GetBucketCORS"
    "fixture/GetBucketCORS.yaml"

requestGetBucketInventoryConfiguration :: GetBucketInventoryConfiguration -> TestTree
requestGetBucketInventoryConfiguration =
  req
    "GetBucketInventoryConfiguration"
    "fixture/GetBucketInventoryConfiguration.yaml"

requestGetPublicAccessBlock :: GetPublicAccessBlock -> TestTree
requestGetPublicAccessBlock =
  req
    "GetPublicAccessBlock"
    "fixture/GetPublicAccessBlock.yaml"

requestDeleteBucketCORS :: DeleteBucketCORS -> TestTree
requestDeleteBucketCORS =
  req
    "DeleteBucketCORS"
    "fixture/DeleteBucketCORS.yaml"

requestDeleteBucketTagging :: DeleteBucketTagging -> TestTree
requestDeleteBucketTagging =
  req
    "DeleteBucketTagging"
    "fixture/DeleteBucketTagging.yaml"

requestListBucketIntelligentTieringConfigurations :: ListBucketIntelligentTieringConfigurations -> TestTree
requestListBucketIntelligentTieringConfigurations =
  req
    "ListBucketIntelligentTieringConfigurations"
    "fixture/ListBucketIntelligentTieringConfigurations.yaml"

requestPutBucketNotificationConfiguration :: PutBucketNotificationConfiguration -> TestTree
requestPutBucketNotificationConfiguration =
  req
    "PutBucketNotificationConfiguration"
    "fixture/PutBucketNotificationConfiguration.yaml"

requestPutBucketIntelligentTieringConfiguration :: PutBucketIntelligentTieringConfiguration -> TestTree
requestPutBucketIntelligentTieringConfiguration =
  req
    "PutBucketIntelligentTieringConfiguration"
    "fixture/PutBucketIntelligentTieringConfiguration.yaml"

-- Responses

responsePutBucketPolicy :: PutBucketPolicyResponse -> TestTree
responsePutBucketPolicy =
  res
    "PutBucketPolicyResponse"
    "fixture/PutBucketPolicyResponse.proto"
    s3
    (Proxy :: Proxy PutBucketPolicy)

responseGetBucketEncryption :: GetBucketEncryptionResponse -> TestTree
responseGetBucketEncryption =
  res
    "GetBucketEncryptionResponse"
    "fixture/GetBucketEncryptionResponse.proto"
    s3
    (Proxy :: Proxy GetBucketEncryption)

responseDeleteBucket :: DeleteBucketResponse -> TestTree
responseDeleteBucket =
  res
    "DeleteBucketResponse"
    "fixture/DeleteBucketResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucket)

responseDeleteObjects :: DeleteObjectsResponse -> TestTree
responseDeleteObjects =
  res
    "DeleteObjectsResponse"
    "fixture/DeleteObjectsResponse.proto"
    s3
    (Proxy :: Proxy DeleteObjects)

responsePutBucketLogging :: PutBucketLoggingResponse -> TestTree
responsePutBucketLogging =
  res
    "PutBucketLoggingResponse"
    "fixture/PutBucketLoggingResponse.proto"
    s3
    (Proxy :: Proxy PutBucketLogging)

responseDeleteBucketWebsite :: DeleteBucketWebsiteResponse -> TestTree
responseDeleteBucketWebsite =
  res
    "DeleteBucketWebsiteResponse"
    "fixture/DeleteBucketWebsiteResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketWebsite)

responseCompleteMultipartUpload :: CompleteMultipartUploadResponse -> TestTree
responseCompleteMultipartUpload =
  res
    "CompleteMultipartUploadResponse"
    "fixture/CompleteMultipartUploadResponse.proto"
    s3
    (Proxy :: Proxy CompleteMultipartUpload)

responseSelectObjectContent :: SelectObjectContentResponse -> TestTree
responseSelectObjectContent =
  res
    "SelectObjectContentResponse"
    "fixture/SelectObjectContentResponse.proto"
    s3
    (Proxy :: Proxy SelectObjectContent)

responseGetBucketPolicyStatus :: GetBucketPolicyStatusResponse -> TestTree
responseGetBucketPolicyStatus =
  res
    "GetBucketPolicyStatusResponse"
    "fixture/GetBucketPolicyStatusResponse.proto"
    s3
    (Proxy :: Proxy GetBucketPolicyStatus)

responseListObjects :: ListObjectsResponse -> TestTree
responseListObjects =
  res
    "ListObjectsResponse"
    "fixture/ListObjectsResponse.proto"
    s3
    (Proxy :: Proxy ListObjects)

responseDeleteObject :: DeleteObjectResponse -> TestTree
responseDeleteObject =
  res
    "DeleteObjectResponse"
    "fixture/DeleteObjectResponse.proto"
    s3
    (Proxy :: Proxy DeleteObject)

responseDeleteBucketAnalyticsConfiguration :: DeleteBucketAnalyticsConfigurationResponse -> TestTree
responseDeleteBucketAnalyticsConfiguration =
  res
    "DeleteBucketAnalyticsConfigurationResponse"
    "fixture/DeleteBucketAnalyticsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketAnalyticsConfiguration)

responseDeleteObjectTagging :: DeleteObjectTaggingResponse -> TestTree
responseDeleteObjectTagging =
  res
    "DeleteObjectTaggingResponse"
    "fixture/DeleteObjectTaggingResponse.proto"
    s3
    (Proxy :: Proxy DeleteObjectTagging)

responseGetBucketACL :: GetBucketACLResponse -> TestTree
responseGetBucketACL =
  res
    "GetBucketACLResponse"
    "fixture/GetBucketACLResponse.proto"
    s3
    (Proxy :: Proxy GetBucketACL)

responseGetObjectTagging :: GetObjectTaggingResponse -> TestTree
responseGetObjectTagging =
  res
    "GetObjectTaggingResponse"
    "fixture/GetObjectTaggingResponse.proto"
    s3
    (Proxy :: Proxy GetObjectTagging)

responsePutBucketReplication :: PutBucketReplicationResponse -> TestTree
responsePutBucketReplication =
  res
    "PutBucketReplicationResponse"
    "fixture/PutBucketReplicationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketReplication)

responseGetBucketWebsite :: GetBucketWebsiteResponse -> TestTree
responseGetBucketWebsite =
  res
    "GetBucketWebsiteResponse"
    "fixture/GetBucketWebsiteResponse.proto"
    s3
    (Proxy :: Proxy GetBucketWebsite)

responseGetObjectLockConfiguration :: GetObjectLockConfigurationResponse -> TestTree
responseGetObjectLockConfiguration =
  res
    "GetObjectLockConfigurationResponse"
    "fixture/GetObjectLockConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetObjectLockConfiguration)

responseDeleteBucketMetricsConfiguration :: DeleteBucketMetricsConfigurationResponse -> TestTree
responseDeleteBucketMetricsConfiguration =
  res
    "DeleteBucketMetricsConfigurationResponse"
    "fixture/DeleteBucketMetricsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketMetricsConfiguration)

responseGetBucketPolicy :: GetBucketPolicyResponse -> TestTree
responseGetBucketPolicy =
  res
    "GetBucketPolicyResponse"
    "fixture/GetBucketPolicyResponse.proto"
    s3
    (Proxy :: Proxy GetBucketPolicy)

responsePutBucketEncryption :: PutBucketEncryptionResponse -> TestTree
responsePutBucketEncryption =
  res
    "PutBucketEncryptionResponse"
    "fixture/PutBucketEncryptionResponse.proto"
    s3
    (Proxy :: Proxy PutBucketEncryption)

responseListBucketMetricsConfigurations :: ListBucketMetricsConfigurationsResponse -> TestTree
responseListBucketMetricsConfigurations =
  res
    "ListBucketMetricsConfigurationsResponse"
    "fixture/ListBucketMetricsConfigurationsResponse.proto"
    s3
    (Proxy :: Proxy ListBucketMetricsConfigurations)

responsePutBucketAccelerateConfiguration :: PutBucketAccelerateConfigurationResponse -> TestTree
responsePutBucketAccelerateConfiguration =
  res
    "PutBucketAccelerateConfigurationResponse"
    "fixture/PutBucketAccelerateConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketAccelerateConfiguration)

responsePutBucketOwnershipControls :: PutBucketOwnershipControlsResponse -> TestTree
responsePutBucketOwnershipControls =
  res
    "PutBucketOwnershipControlsResponse"
    "fixture/PutBucketOwnershipControlsResponse.proto"
    s3
    (Proxy :: Proxy PutBucketOwnershipControls)

responsePutObjectRetention :: PutObjectRetentionResponse -> TestTree
responsePutObjectRetention =
  res
    "PutObjectRetentionResponse"
    "fixture/PutObjectRetentionResponse.proto"
    s3
    (Proxy :: Proxy PutObjectRetention)

responsePutObjectLegalHold :: PutObjectLegalHoldResponse -> TestTree
responsePutObjectLegalHold =
  res
    "PutObjectLegalHoldResponse"
    "fixture/PutObjectLegalHoldResponse.proto"
    s3
    (Proxy :: Proxy PutObjectLegalHold)

responseHeadObject :: HeadObjectResponse -> TestTree
responseHeadObject =
  res
    "HeadObjectResponse"
    "fixture/HeadObjectResponse.proto"
    s3
    (Proxy :: Proxy HeadObject)

responseGetBucketTagging :: GetBucketTaggingResponse -> TestTree
responseGetBucketTagging =
  res
    "GetBucketTaggingResponse"
    "fixture/GetBucketTaggingResponse.proto"
    s3
    (Proxy :: Proxy GetBucketTagging)

responseGetBucketLocation :: GetBucketLocationResponse -> TestTree
responseGetBucketLocation =
  res
    "GetBucketLocationResponse"
    "fixture/GetBucketLocationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketLocation)

responsePutBucketInventoryConfiguration :: PutBucketInventoryConfigurationResponse -> TestTree
responsePutBucketInventoryConfiguration =
  res
    "PutBucketInventoryConfigurationResponse"
    "fixture/PutBucketInventoryConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketInventoryConfiguration)

responseListBucketInventoryConfigurations :: ListBucketInventoryConfigurationsResponse -> TestTree
responseListBucketInventoryConfigurations =
  res
    "ListBucketInventoryConfigurationsResponse"
    "fixture/ListBucketInventoryConfigurationsResponse.proto"
    s3
    (Proxy :: Proxy ListBucketInventoryConfigurations)

responseGetObjectACL :: GetObjectACLResponse -> TestTree
responseGetObjectACL =
  res
    "GetObjectACLResponse"
    "fixture/GetObjectACLResponse.proto"
    s3
    (Proxy :: Proxy GetObjectACL)

responseDeletePublicAccessBlock :: DeletePublicAccessBlockResponse -> TestTree
responseDeletePublicAccessBlock =
  res
    "DeletePublicAccessBlockResponse"
    "fixture/DeletePublicAccessBlockResponse.proto"
    s3
    (Proxy :: Proxy DeletePublicAccessBlock)

responseDeleteBucketIntelligentTieringConfiguration :: DeleteBucketIntelligentTieringConfigurationResponse -> TestTree
responseDeleteBucketIntelligentTieringConfiguration =
  res
    "DeleteBucketIntelligentTieringConfigurationResponse"
    "fixture/DeleteBucketIntelligentTieringConfigurationResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketIntelligentTieringConfiguration)

responseGetBucketVersioning :: GetBucketVersioningResponse -> TestTree
responseGetBucketVersioning =
  res
    "GetBucketVersioningResponse"
    "fixture/GetBucketVersioningResponse.proto"
    s3
    (Proxy :: Proxy GetBucketVersioning)

responsePutBucketTagging :: PutBucketTaggingResponse -> TestTree
responsePutBucketTagging =
  res
    "PutBucketTaggingResponse"
    "fixture/PutBucketTaggingResponse.proto"
    s3
    (Proxy :: Proxy PutBucketTagging)

responseCreateBucket :: CreateBucketResponse -> TestTree
responseCreateBucket =
  res
    "CreateBucketResponse"
    "fixture/CreateBucketResponse.proto"
    s3
    (Proxy :: Proxy CreateBucket)

responsePutObjectACL :: PutObjectACLResponse -> TestTree
responsePutObjectACL =
  res
    "PutObjectACLResponse"
    "fixture/PutObjectACLResponse.proto"
    s3
    (Proxy :: Proxy PutObjectACL)

responsePutBucketCORS :: PutBucketCORSResponse -> TestTree
responsePutBucketCORS =
  res
    "PutBucketCORSResponse"
    "fixture/PutBucketCORSResponse.proto"
    s3
    (Proxy :: Proxy PutBucketCORS)

responseGetObjectRetention :: GetObjectRetentionResponse -> TestTree
responseGetObjectRetention =
  res
    "GetObjectRetentionResponse"
    "fixture/GetObjectRetentionResponse.proto"
    s3
    (Proxy :: Proxy GetObjectRetention)

responseGetBucketOwnershipControls :: GetBucketOwnershipControlsResponse -> TestTree
responseGetBucketOwnershipControls =
  res
    "GetBucketOwnershipControlsResponse"
    "fixture/GetBucketOwnershipControlsResponse.proto"
    s3
    (Proxy :: Proxy GetBucketOwnershipControls)

responseGetBucketMetricsConfiguration :: GetBucketMetricsConfigurationResponse -> TestTree
responseGetBucketMetricsConfiguration =
  res
    "GetBucketMetricsConfigurationResponse"
    "fixture/GetBucketMetricsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketMetricsConfiguration)

responseGetBucketAccelerateConfiguration :: GetBucketAccelerateConfigurationResponse -> TestTree
responseGetBucketAccelerateConfiguration =
  res
    "GetBucketAccelerateConfigurationResponse"
    "fixture/GetBucketAccelerateConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketAccelerateConfiguration)

responseGetObjectLegalHold :: GetObjectLegalHoldResponse -> TestTree
responseGetObjectLegalHold =
  res
    "GetObjectLegalHoldResponse"
    "fixture/GetObjectLegalHoldResponse.proto"
    s3
    (Proxy :: Proxy GetObjectLegalHold)

responseListBuckets :: ListBucketsResponse -> TestTree
responseListBuckets =
  res
    "ListBucketsResponse"
    "fixture/ListBucketsResponse.proto"
    s3
    (Proxy :: Proxy ListBuckets)

responseDeleteBucketPolicy :: DeleteBucketPolicyResponse -> TestTree
responseDeleteBucketPolicy =
  res
    "DeleteBucketPolicyResponse"
    "fixture/DeleteBucketPolicyResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketPolicy)

responsePutObjectLockConfiguration :: PutObjectLockConfigurationResponse -> TestTree
responsePutObjectLockConfiguration =
  res
    "PutObjectLockConfigurationResponse"
    "fixture/PutObjectLockConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutObjectLockConfiguration)

responseAbortMultipartUpload :: AbortMultipartUploadResponse -> TestTree
responseAbortMultipartUpload =
  res
    "AbortMultipartUploadResponse"
    "fixture/AbortMultipartUploadResponse.proto"
    s3
    (Proxy :: Proxy AbortMultipartUpload)

responseUploadPart :: UploadPartResponse -> TestTree
responseUploadPart =
  res
    "UploadPartResponse"
    "fixture/UploadPartResponse.proto"
    s3
    (Proxy :: Proxy UploadPart)

responsePutObject :: PutObjectResponse -> TestTree
responsePutObject =
  res
    "PutObjectResponse"
    "fixture/PutObjectResponse.proto"
    s3
    (Proxy :: Proxy PutObject)

responsePutBucketRequestPayment :: PutBucketRequestPaymentResponse -> TestTree
responsePutBucketRequestPayment =
  res
    "PutBucketRequestPaymentResponse"
    "fixture/PutBucketRequestPaymentResponse.proto"
    s3
    (Proxy :: Proxy PutBucketRequestPayment)

responseListMultipartUploads :: ListMultipartUploadsResponse -> TestTree
responseListMultipartUploads =
  res
    "ListMultipartUploadsResponse"
    "fixture/ListMultipartUploadsResponse.proto"
    s3
    (Proxy :: Proxy ListMultipartUploads)

responseGetBucketReplication :: GetBucketReplicationResponse -> TestTree
responseGetBucketReplication =
  res
    "GetBucketReplicationResponse"
    "fixture/GetBucketReplicationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketReplication)

responsePutBucketWebsite :: PutBucketWebsiteResponse -> TestTree
responsePutBucketWebsite =
  res
    "PutBucketWebsiteResponse"
    "fixture/PutBucketWebsiteResponse.proto"
    s3
    (Proxy :: Proxy PutBucketWebsite)

responsePutBucketAnalyticsConfiguration :: PutBucketAnalyticsConfigurationResponse -> TestTree
responsePutBucketAnalyticsConfiguration =
  res
    "PutBucketAnalyticsConfigurationResponse"
    "fixture/PutBucketAnalyticsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketAnalyticsConfiguration)

responsePutObjectTagging :: PutObjectTaggingResponse -> TestTree
responsePutObjectTagging =
  res
    "PutObjectTaggingResponse"
    "fixture/PutObjectTaggingResponse.proto"
    s3
    (Proxy :: Proxy PutObjectTagging)

responseUploadPartCopy :: UploadPartCopyResponse -> TestTree
responseUploadPartCopy =
  res
    "UploadPartCopyResponse"
    "fixture/UploadPartCopyResponse.proto"
    s3
    (Proxy :: Proxy UploadPartCopy)

responseCreateMultipartUpload :: CreateMultipartUploadResponse -> TestTree
responseCreateMultipartUpload =
  res
    "CreateMultipartUploadResponse"
    "fixture/CreateMultipartUploadResponse.proto"
    s3
    (Proxy :: Proxy CreateMultipartUpload)

responsePutBucketLifecycleConfiguration :: PutBucketLifecycleConfigurationResponse -> TestTree
responsePutBucketLifecycleConfiguration =
  res
    "PutBucketLifecycleConfigurationResponse"
    "fixture/PutBucketLifecycleConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketLifecycleConfiguration)

responsePutBucketACL :: PutBucketACLResponse -> TestTree
responsePutBucketACL =
  res
    "PutBucketACLResponse"
    "fixture/PutBucketACLResponse.proto"
    s3
    (Proxy :: Proxy PutBucketACL)

responseDeleteBucketLifecycle :: DeleteBucketLifecycleResponse -> TestTree
responseDeleteBucketLifecycle =
  res
    "DeleteBucketLifecycleResponse"
    "fixture/DeleteBucketLifecycleResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketLifecycle)

responseListBucketAnalyticsConfigurations :: ListBucketAnalyticsConfigurationsResponse -> TestTree
responseListBucketAnalyticsConfigurations =
  res
    "ListBucketAnalyticsConfigurationsResponse"
    "fixture/ListBucketAnalyticsConfigurationsResponse.proto"
    s3
    (Proxy :: Proxy ListBucketAnalyticsConfigurations)

responseGetBucketAnalyticsConfiguration :: GetBucketAnalyticsConfigurationResponse -> TestTree
responseGetBucketAnalyticsConfiguration =
  res
    "GetBucketAnalyticsConfigurationResponse"
    "fixture/GetBucketAnalyticsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketAnalyticsConfiguration)

responseHeadBucket :: HeadBucketResponse -> TestTree
responseHeadBucket =
  res
    "HeadBucketResponse"
    "fixture/HeadBucketResponse.proto"
    s3
    (Proxy :: Proxy HeadBucket)

responseListObjectVersions :: ListObjectVersionsResponse -> TestTree
responseListObjectVersions =
  res
    "ListObjectVersionsResponse"
    "fixture/ListObjectVersionsResponse.proto"
    s3
    (Proxy :: Proxy ListObjectVersions)

responseGetBucketLifecycleConfiguration :: GetBucketLifecycleConfigurationResponse -> TestTree
responseGetBucketLifecycleConfiguration =
  res
    "GetBucketLifecycleConfigurationResponse"
    "fixture/GetBucketLifecycleConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketLifecycleConfiguration)

responseListParts :: ListPartsResponse -> TestTree
responseListParts =
  res
    "ListPartsResponse"
    "fixture/ListPartsResponse.proto"
    s3
    (Proxy :: Proxy ListParts)

responseGetBucketRequestPayment :: GetBucketRequestPaymentResponse -> TestTree
responseGetBucketRequestPayment =
  res
    "GetBucketRequestPaymentResponse"
    "fixture/GetBucketRequestPaymentResponse.proto"
    s3
    (Proxy :: Proxy GetBucketRequestPayment)

responseDeleteBucketReplication :: DeleteBucketReplicationResponse -> TestTree
responseDeleteBucketReplication =
  res
    "DeleteBucketReplicationResponse"
    "fixture/DeleteBucketReplicationResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketReplication)

responseGetBucketLogging :: GetBucketLoggingResponse -> TestTree
responseGetBucketLogging =
  res
    "GetBucketLoggingResponse"
    "fixture/GetBucketLoggingResponse.proto"
    s3
    (Proxy :: Proxy GetBucketLogging)

responseDeleteBucketOwnershipControls :: DeleteBucketOwnershipControlsResponse -> TestTree
responseDeleteBucketOwnershipControls =
  res
    "DeleteBucketOwnershipControlsResponse"
    "fixture/DeleteBucketOwnershipControlsResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketOwnershipControls)

responsePutBucketMetricsConfiguration :: PutBucketMetricsConfigurationResponse -> TestTree
responsePutBucketMetricsConfiguration =
  res
    "PutBucketMetricsConfigurationResponse"
    "fixture/PutBucketMetricsConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketMetricsConfiguration)

responseListObjectsV2 :: ListObjectsV2Response -> TestTree
responseListObjectsV2 =
  res
    "ListObjectsV2Response"
    "fixture/ListObjectsV2Response.proto"
    s3
    (Proxy :: Proxy ListObjectsV2)

responseCopyObject :: CopyObjectResponse -> TestTree
responseCopyObject =
  res
    "CopyObjectResponse"
    "fixture/CopyObjectResponse.proto"
    s3
    (Proxy :: Proxy CopyObject)

responseDeleteBucketEncryption :: DeleteBucketEncryptionResponse -> TestTree
responseDeleteBucketEncryption =
  res
    "DeleteBucketEncryptionResponse"
    "fixture/DeleteBucketEncryptionResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketEncryption)

responsePutBucketVersioning :: PutBucketVersioningResponse -> TestTree
responsePutBucketVersioning =
  res
    "PutBucketVersioningResponse"
    "fixture/PutBucketVersioningResponse.proto"
    s3
    (Proxy :: Proxy PutBucketVersioning)

responseGetBucketNotificationConfiguration :: NotificationConfiguration -> TestTree
responseGetBucketNotificationConfiguration =
  res
    "GetBucketNotificationConfigurationResponse"
    "fixture/GetBucketNotificationConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketNotificationConfiguration)

responsePutPublicAccessBlock :: PutPublicAccessBlockResponse -> TestTree
responsePutPublicAccessBlock =
  res
    "PutPublicAccessBlockResponse"
    "fixture/PutPublicAccessBlockResponse.proto"
    s3
    (Proxy :: Proxy PutPublicAccessBlock)

responseDeleteBucketInventoryConfiguration :: DeleteBucketInventoryConfigurationResponse -> TestTree
responseDeleteBucketInventoryConfiguration =
  res
    "DeleteBucketInventoryConfigurationResponse"
    "fixture/DeleteBucketInventoryConfigurationResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketInventoryConfiguration)

responseGetBucketIntelligentTieringConfiguration :: GetBucketIntelligentTieringConfigurationResponse -> TestTree
responseGetBucketIntelligentTieringConfiguration =
  res
    "GetBucketIntelligentTieringConfigurationResponse"
    "fixture/GetBucketIntelligentTieringConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketIntelligentTieringConfiguration)

responseRestoreObject :: RestoreObjectResponse -> TestTree
responseRestoreObject =
  res
    "RestoreObjectResponse"
    "fixture/RestoreObjectResponse.proto"
    s3
    (Proxy :: Proxy RestoreObject)

responseGetBucketCORS :: GetBucketCORSResponse -> TestTree
responseGetBucketCORS =
  res
    "GetBucketCORSResponse"
    "fixture/GetBucketCORSResponse.proto"
    s3
    (Proxy :: Proxy GetBucketCORS)

responseGetBucketInventoryConfiguration :: GetBucketInventoryConfigurationResponse -> TestTree
responseGetBucketInventoryConfiguration =
  res
    "GetBucketInventoryConfigurationResponse"
    "fixture/GetBucketInventoryConfigurationResponse.proto"
    s3
    (Proxy :: Proxy GetBucketInventoryConfiguration)

responseGetPublicAccessBlock :: GetPublicAccessBlockResponse -> TestTree
responseGetPublicAccessBlock =
  res
    "GetPublicAccessBlockResponse"
    "fixture/GetPublicAccessBlockResponse.proto"
    s3
    (Proxy :: Proxy GetPublicAccessBlock)

responseDeleteBucketCORS :: DeleteBucketCORSResponse -> TestTree
responseDeleteBucketCORS =
  res
    "DeleteBucketCORSResponse"
    "fixture/DeleteBucketCORSResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketCORS)

responseDeleteBucketTagging :: DeleteBucketTaggingResponse -> TestTree
responseDeleteBucketTagging =
  res
    "DeleteBucketTaggingResponse"
    "fixture/DeleteBucketTaggingResponse.proto"
    s3
    (Proxy :: Proxy DeleteBucketTagging)

responseListBucketIntelligentTieringConfigurations :: ListBucketIntelligentTieringConfigurationsResponse -> TestTree
responseListBucketIntelligentTieringConfigurations =
  res
    "ListBucketIntelligentTieringConfigurationsResponse"
    "fixture/ListBucketIntelligentTieringConfigurationsResponse.proto"
    s3
    (Proxy :: Proxy ListBucketIntelligentTieringConfigurations)

responsePutBucketNotificationConfiguration :: PutBucketNotificationConfigurationResponse -> TestTree
responsePutBucketNotificationConfiguration =
  res
    "PutBucketNotificationConfigurationResponse"
    "fixture/PutBucketNotificationConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketNotificationConfiguration)

responsePutBucketIntelligentTieringConfiguration :: PutBucketIntelligentTieringConfigurationResponse -> TestTree
responsePutBucketIntelligentTieringConfiguration =
  res
    "PutBucketIntelligentTieringConfigurationResponse"
    "fixture/PutBucketIntelligentTieringConfigurationResponse.proto"
    s3
    (Proxy :: Proxy PutBucketIntelligentTieringConfiguration)
