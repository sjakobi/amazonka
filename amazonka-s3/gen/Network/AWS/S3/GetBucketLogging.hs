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
-- Module      : Network.AWS.S3.GetBucketLogging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.
--
--
-- The following operations are related to @GetBucketLogging@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html CreateBucket>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLogging.html PutBucketLogging>
module Network.AWS.S3.GetBucketLogging
  ( -- * Creating a Request
    getBucketLogging,
    GetBucketLogging,

    -- * Request Lenses
    gblbExpectedBucketOwner,
    gblbBucket,

    -- * Destructuring the Response
    getBucketLoggingResponse,
    GetBucketLoggingResponse,

    -- * Response Lenses
    getrsLoggingEnabled,
    getrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getBucketLogging' smart constructor.
data GetBucketLogging = GetBucketLogging'
  { _gblbExpectedBucketOwner ::
      !(Maybe Text),
    _gblbBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBucketLogging' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gblbExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'gblbBucket' - The bucket name for which to get the logging information.
getBucketLogging ::
  -- | 'gblbBucket'
  BucketName ->
  GetBucketLogging
getBucketLogging pBucket_ =
  GetBucketLogging'
    { _gblbExpectedBucketOwner =
        Nothing,
      _gblbBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
gblbExpectedBucketOwner :: Lens' GetBucketLogging (Maybe Text)
gblbExpectedBucketOwner = lens _gblbExpectedBucketOwner (\s a -> s {_gblbExpectedBucketOwner = a})

-- | The bucket name for which to get the logging information.
gblbBucket :: Lens' GetBucketLogging BucketName
gblbBucket = lens _gblbBucket (\s a -> s {_gblbBucket = a})

instance AWSRequest GetBucketLogging where
  type Rs GetBucketLogging = GetBucketLoggingResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          GetBucketLoggingResponse'
            <$> (x .@? "LoggingEnabled") <*> (pure (fromEnum s))
      )

instance Hashable GetBucketLogging

instance NFData GetBucketLogging

instance ToHeaders GetBucketLogging where
  toHeaders GetBucketLogging' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _gblbExpectedBucketOwner
      ]

instance ToPath GetBucketLogging where
  toPath GetBucketLogging' {..} =
    mconcat ["/", toBS _gblbBucket]

instance ToQuery GetBucketLogging where
  toQuery = const (mconcat ["logging"])

-- | /See:/ 'getBucketLoggingResponse' smart constructor.
data GetBucketLoggingResponse = GetBucketLoggingResponse'
  { _getrsLoggingEnabled ::
      !( Maybe
           LoggingEnabled
       ),
    _getrsResponseStatus ::
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

-- | Creates a value of 'GetBucketLoggingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getrsLoggingEnabled' - Undocumented member.
--
-- * 'getrsResponseStatus' - -- | The response status code.
getBucketLoggingResponse ::
  -- | 'getrsResponseStatus'
  Int ->
  GetBucketLoggingResponse
getBucketLoggingResponse pResponseStatus_ =
  GetBucketLoggingResponse'
    { _getrsLoggingEnabled =
        Nothing,
      _getrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
getrsLoggingEnabled :: Lens' GetBucketLoggingResponse (Maybe LoggingEnabled)
getrsLoggingEnabled = lens _getrsLoggingEnabled (\s a -> s {_getrsLoggingEnabled = a})

-- | -- | The response status code.
getrsResponseStatus :: Lens' GetBucketLoggingResponse Int
getrsResponseStatus = lens _getrsResponseStatus (\s a -> s {_getrsResponseStatus = a})

instance NFData GetBucketLoggingResponse
