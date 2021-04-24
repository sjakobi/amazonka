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
-- Module      : Network.AWS.S3.ListBucketMetricsConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the metrics configurations for the bucket. The metrics configurations are only for the request metrics of the bucket and do not provide information on daily storage metrics. You can have up to 1,000 configurations per bucket.
--
--
-- This operation supports list pagination and does not return more than 100 configurations at a time. Always check the @IsTruncated@ element in the response. If there are no more configurations to list, @IsTruncated@ is set to false. If there are more configurations to list, @IsTruncated@ is set to true, and there is a value in @NextContinuationToken@ . You use the @NextContinuationToken@ value to continue the pagination of the list by passing the value in @continuation-token@ in the request to @GET@ the next page.
--
-- To use this operation, you must have permissions to perform the @s3:GetMetricsConfiguration@ action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources Permissions Related to Bucket Subresource Operations> and <https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html Managing Access Permissions to Your Amazon S3 Resources> .
--
-- For more information about metrics configurations and CloudWatch request metrics, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/cloudwatch-monitoring.html Monitoring Metrics with Amazon CloudWatch> .
--
-- The following operations are related to @ListBucketMetricsConfigurations@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html PutBucketMetricsConfiguration>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketMetricsConfiguration.html GetBucketMetricsConfiguration>
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketMetricsConfiguration.html DeleteBucketMetricsConfiguration>
module Network.AWS.S3.ListBucketMetricsConfigurations
  ( -- * Creating a Request
    listBucketMetricsConfigurations,
    ListBucketMetricsConfigurations,

    -- * Request Lenses
    lbmcExpectedBucketOwner,
    lbmcContinuationToken,
    lbmcBucket,

    -- * Destructuring the Response
    listBucketMetricsConfigurationsResponse,
    ListBucketMetricsConfigurationsResponse,

    -- * Response Lenses
    lbmcrrsIsTruncated,
    lbmcrrsNextContinuationToken,
    lbmcrrsMetricsConfigurationList,
    lbmcrrsContinuationToken,
    lbmcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.S3.Types

-- | /See:/ 'listBucketMetricsConfigurations' smart constructor.
data ListBucketMetricsConfigurations = ListBucketMetricsConfigurations'
  { _lbmcExpectedBucketOwner ::
      !( Maybe
           Text
       ),
    _lbmcContinuationToken ::
      !( Maybe
           Text
       ),
    _lbmcBucket ::
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

-- | Creates a value of 'ListBucketMetricsConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbmcExpectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- * 'lbmcContinuationToken' - The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
--
-- * 'lbmcBucket' - The name of the bucket containing the metrics configurations to retrieve.
listBucketMetricsConfigurations ::
  -- | 'lbmcBucket'
  BucketName ->
  ListBucketMetricsConfigurations
listBucketMetricsConfigurations pBucket_ =
  ListBucketMetricsConfigurations'
    { _lbmcExpectedBucketOwner =
        Nothing,
      _lbmcContinuationToken = Nothing,
      _lbmcBucket = pBucket_
    }

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
lbmcExpectedBucketOwner :: Lens' ListBucketMetricsConfigurations (Maybe Text)
lbmcExpectedBucketOwner = lens _lbmcExpectedBucketOwner (\s a -> s {_lbmcExpectedBucketOwner = a})

-- | The marker that is used to continue a metrics configuration listing that has been truncated. Use the NextContinuationToken from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
lbmcContinuationToken :: Lens' ListBucketMetricsConfigurations (Maybe Text)
lbmcContinuationToken = lens _lbmcContinuationToken (\s a -> s {_lbmcContinuationToken = a})

-- | The name of the bucket containing the metrics configurations to retrieve.
lbmcBucket :: Lens' ListBucketMetricsConfigurations BucketName
lbmcBucket = lens _lbmcBucket (\s a -> s {_lbmcBucket = a})

instance AWSRequest ListBucketMetricsConfigurations where
  type
    Rs ListBucketMetricsConfigurations =
      ListBucketMetricsConfigurationsResponse
  request = get s3
  response =
    receiveXML
      ( \s h x ->
          ListBucketMetricsConfigurationsResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "NextContinuationToken")
            <*> (may (parseXMLList "MetricsConfiguration") x)
            <*> (x .@? "ContinuationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListBucketMetricsConfigurations

instance NFData ListBucketMetricsConfigurations

instance ToHeaders ListBucketMetricsConfigurations where
  toHeaders ListBucketMetricsConfigurations' {..} =
    mconcat
      [ "x-amz-expected-bucket-owner"
          =# _lbmcExpectedBucketOwner
      ]

instance ToPath ListBucketMetricsConfigurations where
  toPath ListBucketMetricsConfigurations' {..} =
    mconcat ["/", toBS _lbmcBucket]

instance ToQuery ListBucketMetricsConfigurations where
  toQuery ListBucketMetricsConfigurations' {..} =
    mconcat
      [ "continuation-token" =: _lbmcContinuationToken,
        "metrics"
      ]

-- | /See:/ 'listBucketMetricsConfigurationsResponse' smart constructor.
data ListBucketMetricsConfigurationsResponse = ListBucketMetricsConfigurationsResponse'
  { _lbmcrrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lbmcrrsNextContinuationToken ::
      !( Maybe
           Text
       ),
    _lbmcrrsMetricsConfigurationList ::
      !( Maybe
           [MetricsConfiguration]
       ),
    _lbmcrrsContinuationToken ::
      !( Maybe
           Text
       ),
    _lbmcrrsResponseStatus ::
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

-- | Creates a value of 'ListBucketMetricsConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbmcrrsIsTruncated' - Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
--
-- * 'lbmcrrsNextContinuationToken' - The marker used to continue a metrics configuration listing that has been truncated. Use the @NextContinuationToken@ from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
--
-- * 'lbmcrrsMetricsConfigurationList' - The list of metrics configurations for a bucket.
--
-- * 'lbmcrrsContinuationToken' - The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.
--
-- * 'lbmcrrsResponseStatus' - -- | The response status code.
listBucketMetricsConfigurationsResponse ::
  -- | 'lbmcrrsResponseStatus'
  Int ->
  ListBucketMetricsConfigurationsResponse
listBucketMetricsConfigurationsResponse
  pResponseStatus_ =
    ListBucketMetricsConfigurationsResponse'
      { _lbmcrrsIsTruncated =
          Nothing,
        _lbmcrrsNextContinuationToken =
          Nothing,
        _lbmcrrsMetricsConfigurationList =
          Nothing,
        _lbmcrrsContinuationToken =
          Nothing,
        _lbmcrrsResponseStatus =
          pResponseStatus_
      }

-- | Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
lbmcrrsIsTruncated :: Lens' ListBucketMetricsConfigurationsResponse (Maybe Bool)
lbmcrrsIsTruncated = lens _lbmcrrsIsTruncated (\s a -> s {_lbmcrrsIsTruncated = a})

-- | The marker used to continue a metrics configuration listing that has been truncated. Use the @NextContinuationToken@ from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
lbmcrrsNextContinuationToken :: Lens' ListBucketMetricsConfigurationsResponse (Maybe Text)
lbmcrrsNextContinuationToken = lens _lbmcrrsNextContinuationToken (\s a -> s {_lbmcrrsNextContinuationToken = a})

-- | The list of metrics configurations for a bucket.
lbmcrrsMetricsConfigurationList :: Lens' ListBucketMetricsConfigurationsResponse [MetricsConfiguration]
lbmcrrsMetricsConfigurationList = lens _lbmcrrsMetricsConfigurationList (\s a -> s {_lbmcrrsMetricsConfigurationList = a}) . _Default . _Coerce

-- | The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.
lbmcrrsContinuationToken :: Lens' ListBucketMetricsConfigurationsResponse (Maybe Text)
lbmcrrsContinuationToken = lens _lbmcrrsContinuationToken (\s a -> s {_lbmcrrsContinuationToken = a})

-- | -- | The response status code.
lbmcrrsResponseStatus :: Lens' ListBucketMetricsConfigurationsResponse Int
lbmcrrsResponseStatus = lens _lbmcrrsResponseStatus (\s a -> s {_lbmcrrsResponseStatus = a})

instance
  NFData
    ListBucketMetricsConfigurationsResponse
