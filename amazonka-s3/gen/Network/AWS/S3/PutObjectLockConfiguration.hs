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
-- Module      : Network.AWS.S3.PutObjectLockConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Places an Object Lock configuration on the specified bucket. The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.
--
--
-- __Related Resources__
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html Locking Objects>
module Network.AWS.S3.PutObjectLockConfiguration
  ( -- * Creating a Request
    putObjectLockConfiguration,
    PutObjectLockConfiguration,

    -- * Request Lenses
    polcExpectedBucketOwner,
    polcObjectLockConfiguration,
    polcContentMD5,
    polcRequestPayer,
    polcToken,
    polcBucket,

    -- * Destructuring the Response
    putObjectLockConfigurationResponse,
    PutObjectLockConfigurationResponse,

    -- * Response Lenses
    polcrrsRequestCharged,
    polcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'putObjectLockConfiguration' smart constructor.
data PutObjectLockConfiguration = PutObjectLockConfiguration'
  { _polcExpectedBucketOwner ::
      !(Maybe Text),
    _polcObjectLockConfiguration ::
      !( Maybe
           ObjectLockConfiguration
       ),
    _polcContentMD5 ::
      !(Maybe Text),
    _polcRequestPayer ::
      !( Maybe
           RequestPayer
       ),
    _polcToken ::
      !(Maybe Text),
    _polcBucket ::
      !BucketName
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutObjectLockConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polcExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'polcObjectLockConfiguration' - The Object Lock configuration that you want to apply to the specified bucket.
--
-- * 'polcContentMD5' - The MD5 hash for the request body. For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.
--
-- * 'polcRequestPayer' - Undocumented member.
--
-- * 'polcToken' - A token to allow Object Lock to be enabled for an existing bucket.
--
-- * 'polcBucket' - The bucket whose Object Lock configuration you want to create or replace.
putObjectLockConfiguration ::
  -- | 'polcBucket'
  BucketName ->
  PutObjectLockConfiguration
putObjectLockConfiguration pBucket_ =
  PutObjectLockConfiguration'
    { _polcExpectedBucketOwner =
        Nothing,
      _polcObjectLockConfiguration = Nothing,
      _polcContentMD5 = Nothing,
      _polcRequestPayer = Nothing,
      _polcToken = Nothing,
      _polcBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
polcExpectedBucketOwner :: Lens' PutObjectLockConfiguration (Maybe Text)
polcExpectedBucketOwner = lens _polcExpectedBucketOwner (\s a -> s {_polcExpectedBucketOwner = a})

-- | The Object Lock configuration that you want to apply to the specified bucket.
polcObjectLockConfiguration :: Lens' PutObjectLockConfiguration (Maybe ObjectLockConfiguration)
polcObjectLockConfiguration = lens _polcObjectLockConfiguration (\s a -> s {_polcObjectLockConfiguration = a})

-- | The MD5 hash for the request body. For requests made using the AWS Command Line Interface (CLI) or AWS SDKs, this field is calculated automatically.
polcContentMD5 :: Lens' PutObjectLockConfiguration (Maybe Text)
polcContentMD5 = lens _polcContentMD5 (\s a -> s {_polcContentMD5 = a})

-- | Undocumented member.
polcRequestPayer :: Lens' PutObjectLockConfiguration (Maybe RequestPayer)
polcRequestPayer = lens _polcRequestPayer (\s a -> s {_polcRequestPayer = a})

-- | A token to allow Object Lock to be enabled for an existing bucket.
polcToken :: Lens' PutObjectLockConfiguration (Maybe Text)
polcToken = lens _polcToken (\s a -> s {_polcToken = a})

-- | The bucket whose Object Lock configuration you want to create or replace.
polcBucket :: Lens' PutObjectLockConfiguration BucketName
polcBucket = lens _polcBucket (\s a -> s {_polcBucket = a})

instance AWSRequest PutObjectLockConfiguration where
  type
    Rs PutObjectLockConfiguration =
      PutObjectLockConfigurationResponse
  request = putXML s3
  response =
    receiveEmpty
      ( \s h x ->
          PutObjectLockConfigurationResponse'
            <$> (h .#? "x-amz-request-charged")
            <*> (pure (fromEnum s))
      )

instance Hashable PutObjectLockConfiguration

instance NFData PutObjectLockConfiguration

instance ToElement PutObjectLockConfiguration where
  toElement =
    mkElement
      "{http://s3.amazonaws.com/doc/2006-03-01/}ObjectLockConfiguration"
      . _polcObjectLockConfiguration

instance ToHeaders PutObjectLockConfiguration where
  toHeaders PutObjectLockConfiguration' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _polcExpectedBucketOwner,
        "Content-MD5" =# _polcContentMD5,
        "x-amz-request-payer" =# _polcRequestPayer,
        "x-amz-bucket-object-lock-token" =# _polcToken
      ]

instance ToPath PutObjectLockConfiguration where
  toPath PutObjectLockConfiguration' {..} =
    mconcat ["/", toBS _polcBucket]

instance ToQuery PutObjectLockConfiguration where
  toQuery = const (mconcat ["object-lock"])

-- | /See:/ 'putObjectLockConfigurationResponse' smart constructor.
data PutObjectLockConfigurationResponse = PutObjectLockConfigurationResponse'
  { _polcrrsRequestCharged ::
      !( Maybe
           RequestCharged
       ),
    _polcrrsResponseStatus ::
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

-- | Creates a value of 'PutObjectLockConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polcrrsRequestCharged' - Undocumented member.
--
-- * 'polcrrsResponseStatus' - -- | The response status code.
putObjectLockConfigurationResponse ::
  -- | 'polcrrsResponseStatus'
  Int ->
  PutObjectLockConfigurationResponse
putObjectLockConfigurationResponse pResponseStatus_ =
  PutObjectLockConfigurationResponse'
    { _polcrrsRequestCharged =
        Nothing,
      _polcrrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
polcrrsRequestCharged :: Lens' PutObjectLockConfigurationResponse (Maybe RequestCharged)
polcrrsRequestCharged = lens _polcrrsRequestCharged (\s a -> s {_polcrrsRequestCharged = a})

-- | -- | The response status code.
polcrrsResponseStatus :: Lens' PutObjectLockConfigurationResponse Int
polcrrsResponseStatus = lens _polcrrsResponseStatus (\s a -> s {_polcrrsResponseStatus = a})

instance NFData PutObjectLockConfigurationResponse
