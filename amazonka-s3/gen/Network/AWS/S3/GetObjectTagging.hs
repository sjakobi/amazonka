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
-- Module      : Network.AWS.S3.GetObjectTagging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the tag-set of an object. You send the GET request against the tagging subresource associated with the object.
--
--
-- To use this operation, you must have permission to perform the @s3:GetObjectTagging@ action. By default, the GET operation returns information about current version of an object. For a versioned bucket, you can have multiple versions of an object in your bucket. To retrieve tags of any other version, use the versionId query parameter. You also need permission for the @s3:GetObjectVersionTagging@ action.
--
-- By default, the bucket owner has this permission and can grant this permission to others.
--
-- For information about the Amazon S3 object tagging feature, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html Object Tagging> .
--
-- The following operation is related to @GetObjectTagging@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html PutObjectTagging>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObjectTagging.html DeleteObjectTagging>
module Network.AWS.S3.GetObjectTagging
  ( -- * Creating a Request
    getObjectTagging,
    GetObjectTagging,

    -- * Request Lenses
    gotExpectedBucketOwner,
    gotVersionId,
    gotRequestPayer,
    gotBucket,
    gotKey,

    -- * Destructuring the Response
    getObjectTaggingResponse,
    GetObjectTaggingResponse,

    -- * Response Lenses
    gotrorsVersionId,
    gotrorsResponseStatus,
    gotrorsTagSet,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getObjectTagging' smart constructor.
data GetObjectTagging = GetObjectTagging'
  { _gotExpectedBucketOwner ::
      !(Maybe Text),
    _gotVersionId ::
      !(Maybe ObjectVersionId),
    _gotRequestPayer ::
      !(Maybe RequestPayer),
    _gotBucket :: !BucketName,
    _gotKey :: !ObjectKey
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObjectTagging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'gotVersionId' - The versionId of the object for which to get the tagging information.
--
-- * 'gotRequestPayer' - Undocumented member.
--
-- * 'gotBucket' - The bucket name containing the object for which to get the tagging information.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'gotKey' - Object key for which to get the tagging information.
getObjectTagging ::
  -- | 'gotBucket'
  BucketName ->
  -- | 'gotKey'
  ObjectKey ->
  GetObjectTagging
getObjectTagging pBucket_ pKey_ =
  GetObjectTagging'
    { _gotExpectedBucketOwner =
        Nothing,
      _gotVersionId = Nothing,
      _gotRequestPayer = Nothing,
      _gotBucket = pBucket_,
      _gotKey = pKey_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
gotExpectedBucketOwner :: Lens' GetObjectTagging (Maybe Text)
gotExpectedBucketOwner = lens _gotExpectedBucketOwner (\s a -> s {_gotExpectedBucketOwner = a})

-- | The versionId of the object for which to get the tagging information.
gotVersionId :: Lens' GetObjectTagging (Maybe ObjectVersionId)
gotVersionId = lens _gotVersionId (\s a -> s {_gotVersionId = a})

-- | Undocumented member.
gotRequestPayer :: Lens' GetObjectTagging (Maybe RequestPayer)
gotRequestPayer = lens _gotRequestPayer (\s a -> s {_gotRequestPayer = a})

-- | The bucket name containing the object for which to get the tagging information.  When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ . When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
gotBucket :: Lens' GetObjectTagging BucketName
gotBucket = lens _gotBucket (\s a -> s {_gotBucket = a})

-- | Object key for which to get the tagging information.
gotKey :: Lens' GetObjectTagging ObjectKey
gotKey = lens _gotKey (\s a -> s {_gotKey = a})

instance AWSRequest GetObjectTagging where
  type Rs GetObjectTagging = GetObjectTaggingResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          GetObjectTaggingResponse'
            <$> (h .#? "x-amz-version-id")
            <*> (pure (fromEnum s))
            <*> (x .@? "TagSet" .!@ mempty >>= parseXMLList "Tag")
      )

instance Hashable GetObjectTagging

instance NFData GetObjectTagging

instance ToHeaders GetObjectTagging where
  toHeaders GetObjectTagging' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _gotExpectedBucketOwner,
        "x-amz-request-payer" =# _gotRequestPayer
      ]

instance ToPath GetObjectTagging where
  toPath GetObjectTagging' {..} =
    mconcat ["/", toBS _gotBucket, "/", toBS _gotKey]

instance ToQuery GetObjectTagging where
  toQuery GetObjectTagging' {..} =
    mconcat ["versionId" =: _gotVersionId, "tagging"]

-- | /See:/ 'getObjectTaggingResponse' smart constructor.
data GetObjectTaggingResponse = GetObjectTaggingResponse'
  { _gotrorsVersionId ::
      !( Maybe
           ObjectVersionId
       ),
    _gotrorsResponseStatus ::
      !Int,
    _gotrorsTagSet ::
      ![Tag]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetObjectTaggingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gotrorsVersionId' - The versionId of the object for which you got the tagging information.
--
-- * 'gotrorsResponseStatus' - -- | The response status code.
--
-- * 'gotrorsTagSet' - Contains the tag set.
getObjectTaggingResponse ::
  -- | 'gotrorsResponseStatus'
  Int ->
  GetObjectTaggingResponse
getObjectTaggingResponse pResponseStatus_ =
  GetObjectTaggingResponse'
    { _gotrorsVersionId =
        Nothing,
      _gotrorsResponseStatus = pResponseStatus_,
      _gotrorsTagSet = mempty
    }

-- | The versionId of the object for which you got the tagging information.
gotrorsVersionId :: Lens' GetObjectTaggingResponse (Maybe ObjectVersionId)
gotrorsVersionId = lens _gotrorsVersionId (\s a -> s {_gotrorsVersionId = a})

-- | -- | The response status code.
gotrorsResponseStatus :: Lens' GetObjectTaggingResponse Int
gotrorsResponseStatus = lens _gotrorsResponseStatus (\s a -> s {_gotrorsResponseStatus = a})

-- | Contains the tag set.
gotrorsTagSet :: Lens' GetObjectTaggingResponse [Tag]
gotrorsTagSet = lens _gotrorsTagSet (\s a -> s {_gotrorsTagSet = a}) . _Coerce

instance NFData GetObjectTaggingResponse
