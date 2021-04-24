{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.DeleteObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects.
--
--
-- To remove a specific version, you must be the bucket owner and you must use the version Id subresource. Using this subresource permanently deletes the version. If the object deleted is a delete marker, Amazon S3 sets the response header, @x-amz-delete-marker@ , to true.
--
-- If the object you want to delete is in a bucket where the bucket versioning configuration is MFA Delete enabled, you must include the @x-amz-mfa@ request header in the DELETE @versionId@ request. Requests that include @x-amz-mfa@ must use HTTPS.
--
-- For more information about MFA Delete, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMFADelete.html Using MFA Delete> . To see sample requests that use versioning, see <https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectDELETE.html#ExampleVersionObjectDelete Sample Request> .
--
-- You can delete objects by explicitly calling the DELETE Object API or configure its lifecycle (<https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycle.html PutBucketLifecycle> ) to enable Amazon S3 to remove them for you. If you want to block users or accounts from removing or deleting objects from your bucket, you must deny them the @s3:DeleteObject@ , @s3:DeleteObjectVersion@ , and @s3:PutLifeCycleConfiguration@ actions.
--
-- The following operation is related to @DeleteObject@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html PutObject>
module Network.AWS.S3.DeleteObject
  ( -- * Creating a Request
    deleteObject,
    DeleteObject,

    -- * Request Lenses
    delExpectedBucketOwner,
    delBypassGovernanceRetention,
    delVersionId,
    delRequestPayer,
    delMFA,
    delBucket,
    delKey,

    -- * Destructuring the Response
    deleteObjectResponse,
    DeleteObjectResponse,

    -- * Response Lenses
    dorrsRequestCharged,
    dorrsDeleteMarker,
    dorrsVersionId,
    dorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'deleteObject' smart constructor.
data DeleteObject = DeleteObject'
  { _delExpectedBucketOwner ::
      !(Maybe Text),
    _delBypassGovernanceRetention ::
      !(Maybe Bool),
    _delVersionId :: !(Maybe ObjectVersionId),
    _delRequestPayer :: !(Maybe RequestPayer),
    _delMFA :: !(Maybe Text),
    _delBucket :: !BucketName,
    _delKey :: !ObjectKey
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'delBypassGovernanceRetention' - Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process this operation.
--
-- * 'delVersionId' - VersionId used to reference a specific version of the object.
--
-- * 'delRequestPayer' - Undocumented member.
--
-- * 'delMFA' - The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
--
-- * 'delBucket' - The bucket name of the bucket containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'delKey' - Key name of the object to delete.
deleteObject ::
  -- | 'delBucket'
  BucketName ->
  -- | 'delKey'
  ObjectKey ->
  DeleteObject
deleteObject pBucket_ pKey_ =
  DeleteObject'
    { _delExpectedBucketOwner = Nothing,
      _delBypassGovernanceRetention = Nothing,
      _delVersionId = Nothing,
      _delRequestPayer = Nothing,
      _delMFA = Nothing,
      _delBucket = pBucket_,
      _delKey = pKey_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
delExpectedBucketOwner :: Lens' DeleteObject (Maybe Text)
delExpectedBucketOwner = lens _delExpectedBucketOwner (\s a -> s {_delExpectedBucketOwner = a})

-- | Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process this operation.
delBypassGovernanceRetention :: Lens' DeleteObject (Maybe Bool)
delBypassGovernanceRetention = lens _delBypassGovernanceRetention (\s a -> s {_delBypassGovernanceRetention = a})

-- | VersionId used to reference a specific version of the object.
delVersionId :: Lens' DeleteObject (Maybe ObjectVersionId)
delVersionId = lens _delVersionId (\s a -> s {_delVersionId = a})

-- | Undocumented member.
delRequestPayer :: Lens' DeleteObject (Maybe RequestPayer)
delRequestPayer = lens _delRequestPayer (\s a -> s {_delRequestPayer = a})

-- | The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
delMFA :: Lens' DeleteObject (Maybe Text)
delMFA = lens _delMFA (\s a -> s {_delMFA = a})

-- | The bucket name of the bucket containing the object.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
delBucket :: Lens' DeleteObject BucketName
delBucket = lens _delBucket (\s a -> s {_delBucket = a})

-- | Key name of the object to delete.
delKey :: Lens' DeleteObject ObjectKey
delKey = lens _delKey (\s a -> s {_delKey = a})

instance AWSRequest DeleteObject where
  type Rs DeleteObject = DeleteObjectResponse
  request = delete s3
  response =
    receiveEmpty
      ( \s h x ->
          DeleteObjectResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (h .#? "x-amz-delete-marker")
            <*> (h .#? "x-amz-version-id")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteObject

instance NFData DeleteObject

instance ToHeaders DeleteObject where
  toHeaders DeleteObject' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _delExpectedBucketOwner,
        "x-amz-bypass-governance-retention"
          =# _delBypassGovernanceRetention,
        "x-amz-request-payer" =# _delRequestPayer,
        "x-amz-mfa" =# _delMFA
      ]

instance ToPath DeleteObject where
  toPath DeleteObject' {..} =
    mconcat ["/", toBS _delBucket, "/", toBS _delKey]

instance ToQuery DeleteObject where
  toQuery DeleteObject' {..} =
    mconcat ["versionId" =: _delVersionId]

-- | /See:/ 'deleteObjectResponse' smart constructor.
data DeleteObjectResponse = DeleteObjectResponse'
  { _dorrsRequestCharged ::
      !(Maybe RequestCharged),
    _dorrsDeleteMarker ::
      !(Maybe Bool),
    _dorrsVersionId ::
      !(Maybe ObjectVersionId),
    _dorrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dorrsRequestCharged' - Undocumented member.
--
-- * 'dorrsDeleteMarker' - Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.
--
-- * 'dorrsVersionId' - Returns the version ID of the delete marker created as a result of the DELETE operation.
--
-- * 'dorrsResponseStatus' - -- | The response status code.
deleteObjectResponse ::
  -- | 'dorrsResponseStatus'
  Int ->
  DeleteObjectResponse
deleteObjectResponse pResponseStatus_ =
  DeleteObjectResponse'
    { _dorrsRequestCharged =
        Nothing,
      _dorrsDeleteMarker = Nothing,
      _dorrsVersionId = Nothing,
      _dorrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
dorrsRequestCharged :: Lens' DeleteObjectResponse (Maybe RequestCharged)
dorrsRequestCharged = lens _dorrsRequestCharged (\s a -> s {_dorrsRequestCharged = a})

-- | Specifies whether the versioned object that was permanently deleted was (true) or was not (false) a delete marker.
dorrsDeleteMarker :: Lens' DeleteObjectResponse (Maybe Bool)
dorrsDeleteMarker = lens _dorrsDeleteMarker (\s a -> s {_dorrsDeleteMarker = a})

-- | Returns the version ID of the delete marker created as a result of the DELETE operation.
dorrsVersionId :: Lens' DeleteObjectResponse (Maybe ObjectVersionId)
dorrsVersionId = lens _dorrsVersionId (\s a -> s {_dorrsVersionId = a})

-- | -- | The response status code.
dorrsResponseStatus :: Lens' DeleteObjectResponse Int
dorrsResponseStatus = lens _dorrsResponseStatus (\s a -> s {_dorrsResponseStatus = a})

instance NFData DeleteObjectResponse
