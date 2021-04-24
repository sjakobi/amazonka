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
-- Module      : Network.AWS.S3.GetBucketWebsite
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the website configuration for a bucket. To host website on Amazon S3, you can configure a bucket as website by adding a website configuration. For more information about hosting websites, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html Hosting Websites on Amazon S3> .
--
--
-- This GET operation requires the @S3:GetBucketWebsite@ permission. By default, only the bucket owner can read the bucket website configuration. However, bucket owners can allow other users to read the website configuration by writing a bucket policy granting them the @S3:GetBucketWebsite@ permission.
--
-- The following operations are related to @DeleteBucketWebsite@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketWebsite.html DeleteBucketWebsite>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketWebsite.html PutBucketWebsite>
module Network.AWS.S3.GetBucketWebsite
  ( -- * Creating a Request
    getBucketWebsite,
    GetBucketWebsite,

    -- * Request Lenses
    gbwExpectedBucketOwner,
    gbwBucket,

    -- * Destructuring the Response
    getBucketWebsiteResponse,
    GetBucketWebsiteResponse,

    -- * Response Lenses
    gbwrrsErrorDocument,
    gbwrrsIndexDocument,
    gbwrrsRoutingRules,
    gbwrrsRedirectAllRequestsTo,
    gbwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'getBucketWebsite' smart constructor.
data GetBucketWebsite = GetBucketWebsite'
  { _gbwExpectedBucketOwner ::
      !(Maybe Text),
    _gbwBucket :: !BucketName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBucketWebsite' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbwExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'gbwBucket' - The bucket name for which to get the website configuration.
getBucketWebsite ::
  -- | 'gbwBucket'
  BucketName ->
  GetBucketWebsite
getBucketWebsite pBucket_ =
  GetBucketWebsite'
    { _gbwExpectedBucketOwner =
        Nothing,
      _gbwBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
gbwExpectedBucketOwner :: Lens' GetBucketWebsite (Maybe Text)
gbwExpectedBucketOwner = lens _gbwExpectedBucketOwner (\s a -> s {_gbwExpectedBucketOwner = a})

-- | The bucket name for which to get the website configuration.
gbwBucket :: Lens' GetBucketWebsite BucketName
gbwBucket = lens _gbwBucket (\s a -> s {_gbwBucket = a})

instance AWSRequest GetBucketWebsite where
  type Rs GetBucketWebsite = GetBucketWebsiteResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          GetBucketWebsiteResponse'
            <$> (x .@? "ErrorDocument")
            <*> (x .@? "IndexDocument")
            <*> ( x .@? "RoutingRules" .!@ mempty
                    >>= may (parseXMLList "RoutingRule")
                )
            <*> (x .@? "RedirectAllRequestsTo")
            <*> (pure (fromEnum s))
      )

instance Hashable GetBucketWebsite

instance NFData GetBucketWebsite

instance ToHeaders GetBucketWebsite where
  toHeaders GetBucketWebsite' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _gbwExpectedBucketOwner
      ]

instance ToPath GetBucketWebsite where
  toPath GetBucketWebsite' {..} =
    mconcat ["/", toBS _gbwBucket]

instance ToQuery GetBucketWebsite where
  toQuery = const (mconcat ["website"])

-- | /See:/ 'getBucketWebsiteResponse' smart constructor.
data GetBucketWebsiteResponse = GetBucketWebsiteResponse'
  { _gbwrrsErrorDocument ::
      !( Maybe
           ErrorDocument
       ),
    _gbwrrsIndexDocument ::
      !( Maybe
           IndexDocument
       ),
    _gbwrrsRoutingRules ::
      !( Maybe
           [RoutingRule]
       ),
    _gbwrrsRedirectAllRequestsTo ::
      !( Maybe
           RedirectAllRequestsTo
       ),
    _gbwrrsResponseStatus ::
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

-- | Creates a value of 'GetBucketWebsiteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbwrrsErrorDocument' - The object key name of the website error document to use for 4XX class errors.
--
-- * 'gbwrrsIndexDocument' - The name of the index document for the website (for example @index.html@ ).
--
-- * 'gbwrrsRoutingRules' - Rules that define when a redirect is applied and the redirect behavior.
--
-- * 'gbwrrsRedirectAllRequestsTo' - Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
--
-- * 'gbwrrsResponseStatus' - -- | The response status code.
getBucketWebsiteResponse ::
  -- | 'gbwrrsResponseStatus'
  Int ->
  GetBucketWebsiteResponse
getBucketWebsiteResponse pResponseStatus_ =
  GetBucketWebsiteResponse'
    { _gbwrrsErrorDocument =
        Nothing,
      _gbwrrsIndexDocument = Nothing,
      _gbwrrsRoutingRules = Nothing,
      _gbwrrsRedirectAllRequestsTo = Nothing,
      _gbwrrsResponseStatus = pResponseStatus_
    }

-- | The object key name of the website error document to use for 4XX class errors.
gbwrrsErrorDocument :: Lens' GetBucketWebsiteResponse (Maybe ErrorDocument)
gbwrrsErrorDocument = lens _gbwrrsErrorDocument (\s a -> s {_gbwrrsErrorDocument = a})

-- | The name of the index document for the website (for example @index.html@ ).
gbwrrsIndexDocument :: Lens' GetBucketWebsiteResponse (Maybe IndexDocument)
gbwrrsIndexDocument = lens _gbwrrsIndexDocument (\s a -> s {_gbwrrsIndexDocument = a})

-- | Rules that define when a redirect is applied and the redirect behavior.
gbwrrsRoutingRules :: Lens' GetBucketWebsiteResponse [RoutingRule]
gbwrrsRoutingRules = lens _gbwrrsRoutingRules (\s a -> s {_gbwrrsRoutingRules = a}) . _Default . _Coerce

-- | Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.
gbwrrsRedirectAllRequestsTo :: Lens' GetBucketWebsiteResponse (Maybe RedirectAllRequestsTo)
gbwrrsRedirectAllRequestsTo = lens _gbwrrsRedirectAllRequestsTo (\s a -> s {_gbwrrsRedirectAllRequestsTo = a})

-- | -- | The response status code.
gbwrrsResponseStatus :: Lens' GetBucketWebsiteResponse Int
gbwrrsResponseStatus = lens _gbwrrsResponseStatus (\s a -> s {_gbwrrsResponseStatus = a})

instance NFData GetBucketWebsiteResponse
