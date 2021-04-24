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
-- Module      : Network.AWS.S3.DeleteObjects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation enables you to delete multiple objects from a bucket using a single HTTP request. If you know the object keys that you want to delete, then this operation provides a suitable alternative to sending individual delete requests, reducing per-request overhead.
--
--
-- The request contains a list of up to 1000 keys that you want to delete. In the XML, you provide the object key names, and optionally, version IDs if you want to delete a specific version of the object from a versioning-enabled bucket. For each key, Amazon S3 performs a delete operation and returns the result of that delete, success, or failure, in the response. Note that if the object specified in the request is not found, Amazon S3 returns the result as deleted.
--
-- The operation supports two modes for the response: verbose and quiet. By default, the operation uses verbose mode in which the response includes the result of deletion of each key in your request. In quiet mode the response includes only keys where the delete operation encountered an error. For a successful deletion, the operation does not return any information about the delete in the response body.
--
-- When performing this operation on an MFA Delete enabled bucket, that attempts to delete any versioned objects, you must include an MFA token. If you do not provide one, the entire request will fail, even if there are non-versioned objects you are trying to delete. If you provide an invalid token, whether there are versioned keys in the request or not, the entire Multi-Object Delete request will fail. For information about MFA Delete, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete MFA Delete> .
--
-- Finally, the Content-MD5 header is required for all Multi-Object Delete requests. Amazon S3 uses the header value to ensure that your request body has not been altered in transit.
--
-- The following operations are related to @DeleteObjects@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateMultipartUpload.html CreateMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html UploadPart>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html CompleteMultipartUpload>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListParts.html ListParts>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_AbortMultipartUpload.html AbortMultipartUpload>
module Network.AWS.S3.DeleteObjects
  ( -- * Creating a Request
    deleteObjects,
    DeleteObjects,

    -- * Request Lenses
    doExpectedBucketOwner,
    doBypassGovernanceRetention,
    doRequestPayer,
    doMFA,
    doBucket,
    doDelete,

    -- * Destructuring the Response
    deleteObjectsResponse,
    DeleteObjectsResponse,

    -- * Response Lenses
    drsRequestCharged,
    drsErrors,
    drsDeleted,
    drsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'deleteObjects' smart constructor.
data DeleteObjects = DeleteObjects'
  { _doExpectedBucketOwner ::
      !(Maybe Text),
    _doBypassGovernanceRetention ::
      !(Maybe Bool),
    _doRequestPayer :: !(Maybe RequestPayer),
    _doMFA :: !(Maybe Text),
    _doBucket :: !BucketName,
    _doDelete :: !Delete
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteObjects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'doBypassGovernanceRetention' - Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. You must have sufficient permissions to perform this operation.
--
-- * 'doRequestPayer' - Undocumented member.
--
-- * 'doMFA' - The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
--
-- * 'doBucket' - The bucket name containing the objects to delete.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'doDelete' - Container for the request.
deleteObjects ::
  -- | 'doBucket'
  BucketName ->
  -- | 'doDelete'
  Delete ->
  DeleteObjects
deleteObjects pBucket_ pDelete_ =
  DeleteObjects'
    { _doExpectedBucketOwner = Nothing,
      _doBypassGovernanceRetention = Nothing,
      _doRequestPayer = Nothing,
      _doMFA = Nothing,
      _doBucket = pBucket_,
      _doDelete = pDelete_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
doExpectedBucketOwner :: Lens' DeleteObjects (Maybe Text)
doExpectedBucketOwner = lens _doExpectedBucketOwner (\s a -> s {_doExpectedBucketOwner = a})

-- | Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. You must have sufficient permissions to perform this operation.
doBypassGovernanceRetention :: Lens' DeleteObjects (Maybe Bool)
doBypassGovernanceRetention = lens _doBypassGovernanceRetention (\s a -> s {_doBypassGovernanceRetention = a})

-- | Undocumented member.
doRequestPayer :: Lens' DeleteObjects (Maybe RequestPayer)
doRequestPayer = lens _doRequestPayer (\s a -> s {_doRequestPayer = a})

-- | The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
doMFA :: Lens' DeleteObjects (Maybe Text)
doMFA = lens _doMFA (\s a -> s {_doMFA = a})

-- | The bucket name containing the objects to delete.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
doBucket :: Lens' DeleteObjects BucketName
doBucket = lens _doBucket (\s a -> s {_doBucket = a})

-- | Container for the request.
doDelete :: Lens' DeleteObjects Delete
doDelete = lens _doDelete (\s a -> s {_doDelete = a})

instance AWSRequest DeleteObjects where
  type Rs DeleteObjects = DeleteObjectsResponse
  request = contentMD5Header . postXML s3
  response =
    receiveXML
      ( \s h x ->
          DeleteObjectsResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (may (parseXMLList "Error") x)
            <*> (may (parseXMLList "Deleted") x)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteObjects

instance NFData DeleteObjects

instance ToElement DeleteObjects where
  toElement =
    mkElement
      "{http://s3.amazonaws.com/doc/2006-03-01/}Delete"
      . _doDelete

instance ToHeaders DeleteObjects where
  toHeaders DeleteObjects' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _doExpectedBucketOwner,
        "x-amz-bypass-governance-retention"
          =# _doBypassGovernanceRetention,
        "x-amz-request-payer" =# _doRequestPayer,
        "x-amz-mfa" =# _doMFA
      ]

instance ToPath DeleteObjects where
  toPath DeleteObjects' {..} =
    mconcat ["/", toBS _doBucket]

instance ToQuery DeleteObjects where
  toQuery = const (mconcat ["delete"])

-- | /See:/ 'deleteObjectsResponse' smart constructor.
data DeleteObjectsResponse = DeleteObjectsResponse'
  { _drsRequestCharged ::
      !(Maybe RequestCharged),
    _drsErrors ::
      !(Maybe [S3ServiceError]),
    _drsDeleted ::
      !(Maybe [DeletedObject]),
    _drsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteObjectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsRequestCharged' - Undocumented member.
--
-- * 'drsErrors' - Container for a failed delete operation that describes the object that Amazon S3 attempted to delete and the error it encountered.
--
-- * 'drsDeleted' - Container element for a successful delete. It identifies the object that was successfully deleted.
--
-- * 'drsResponseStatus' - -- | The response status code.
deleteObjectsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DeleteObjectsResponse
deleteObjectsResponse pResponseStatus_ =
  DeleteObjectsResponse'
    { _drsRequestCharged =
        Nothing,
      _drsErrors = Nothing,
      _drsDeleted = Nothing,
      _drsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
drsRequestCharged :: Lens' DeleteObjectsResponse (Maybe RequestCharged)
drsRequestCharged = lens _drsRequestCharged (\s a -> s {_drsRequestCharged = a})

-- | Container for a failed delete operation that describes the object that Amazon S3 attempted to delete and the error it encountered.
drsErrors :: Lens' DeleteObjectsResponse [S3ServiceError]
drsErrors = lens _drsErrors (\s a -> s {_drsErrors = a}) . _Default . _Coerce

-- | Container element for a successful delete. It identifies the object that was successfully deleted.
drsDeleted :: Lens' DeleteObjectsResponse [DeletedObject]
drsDeleted = lens _drsDeleted (\s a -> s {_drsDeleted = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteObjectsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance NFData DeleteObjectsResponse
