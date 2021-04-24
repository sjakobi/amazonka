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
-- Module      : Network.AWS.S3.GetObjectLegalHold
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an object's current Legal Hold status. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Locking Objects> .
--
--
-- This action is not supported by Amazon S3 on Outposts.
module Network.AWS.S3.GetObjectLegalHold
  ( -- * Creating a Request
    getObjectLegalHold,
    GetObjectLegalHold,

    -- * Request Lenses
    golhExpectedBucketOwner,
    golhVersionId,
    golhRequestPayer,
    golhBucket,
    golhKey,

    -- * Destructuring the Response
    getObjectLegalHoldResponse,
    GetObjectLegalHoldResponse,

    -- * Response Lenses
    golhrrsLegalHold,
    golhrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getObjectLegalHold' smart constructor.
data GetObjectLegalHold = GetObjectLegalHold'
  { _golhExpectedBucketOwner ::
      !(Maybe Text),
    _golhVersionId ::
      !(Maybe ObjectVersionId),
    _golhRequestPayer ::
      !(Maybe RequestPayer),
    _golhBucket :: !BucketName,
    _golhKey :: !ObjectKey
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObjectLegalHold' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'golhExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'golhVersionId' - The version ID of the object whose Legal Hold status you want to retrieve.
--
-- * 'golhRequestPayer' - Undocumented member.
--
-- * 'golhBucket' - The bucket name containing the object whose Legal Hold status you want to retrieve.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'golhKey' - The key name for the object whose Legal Hold status you want to retrieve.
getObjectLegalHold ::
  -- | 'golhBucket'
  BucketName ->
  -- | 'golhKey'
  ObjectKey ->
  GetObjectLegalHold
getObjectLegalHold pBucket_ pKey_ =
  GetObjectLegalHold'
    { _golhExpectedBucketOwner =
        Nothing,
      _golhVersionId = Nothing,
      _golhRequestPayer = Nothing,
      _golhBucket = pBucket_,
      _golhKey = pKey_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
golhExpectedBucketOwner :: Lens' GetObjectLegalHold (Maybe Text)
golhExpectedBucketOwner = lens _golhExpectedBucketOwner (\s a -> s {_golhExpectedBucketOwner = a})

-- | The version ID of the object whose Legal Hold status you want to retrieve.
golhVersionId :: Lens' GetObjectLegalHold (Maybe ObjectVersionId)
golhVersionId = lens _golhVersionId (\s a -> s {_golhVersionId = a})

-- | Undocumented member.
golhRequestPayer :: Lens' GetObjectLegalHold (Maybe RequestPayer)
golhRequestPayer = lens _golhRequestPayer (\s a -> s {_golhRequestPayer = a})

-- | The bucket name containing the object whose Legal Hold status you want to retrieve.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ .
golhBucket :: Lens' GetObjectLegalHold BucketName
golhBucket = lens _golhBucket (\s a -> s {_golhBucket = a})

-- | The key name for the object whose Legal Hold status you want to retrieve.
golhKey :: Lens' GetObjectLegalHold ObjectKey
golhKey = lens _golhKey (\s a -> s {_golhKey = a})

instance AWSRequest GetObjectLegalHold where
  type
    Rs GetObjectLegalHold =
      GetObjectLegalHoldResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          GetObjectLegalHoldResponse'
            <$> (parseXML x) <*> (pure (fromEnum s))
      )

instance Hashable GetObjectLegalHold

instance NFData GetObjectLegalHold

instance ToHeaders GetObjectLegalHold where
  toHeaders GetObjectLegalHold' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _golhExpectedBucketOwner,
        "x-amz-request-payer" =# _golhRequestPayer
      ]

instance ToPath GetObjectLegalHold where
  toPath GetObjectLegalHold' {..} =
    mconcat ["/", toBS _golhBucket, "/", toBS _golhKey]

instance ToQuery GetObjectLegalHold where
  toQuery GetObjectLegalHold' {..} =
    mconcat
      ["versionId" =: _golhVersionId, "legal-hold"]

-- | /See:/ 'getObjectLegalHoldResponse' smart constructor.
data GetObjectLegalHoldResponse = GetObjectLegalHoldResponse'
  { _golhrrsLegalHold ::
      !( Maybe
           ObjectLockLegalHold
       ),
    _golhrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetObjectLegalHoldResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'golhrrsLegalHold' - The current Legal Hold status for the specified object.
--
-- * 'golhrrsResponseStatus' - -- | The response status code.
getObjectLegalHoldResponse ::
  -- | 'golhrrsResponseStatus'
  Int ->
  GetObjectLegalHoldResponse
getObjectLegalHoldResponse pResponseStatus_ =
  GetObjectLegalHoldResponse'
    { _golhrrsLegalHold =
        Nothing,
      _golhrrsResponseStatus = pResponseStatus_
    }

-- | The current Legal Hold status for the specified object.
golhrrsLegalHold :: Lens' GetObjectLegalHoldResponse (Maybe ObjectLockLegalHold)
golhrrsLegalHold = lens _golhrrsLegalHold (\s a -> s {_golhrrsLegalHold = a})

-- | -- | The response status code.
golhrrsResponseStatus :: Lens' GetObjectLegalHoldResponse Int
golhrrsResponseStatus = lens _golhrrsResponseStatus (\s a -> s {_golhrrsResponseStatus = a})

instance NFData GetObjectLegalHoldResponse
