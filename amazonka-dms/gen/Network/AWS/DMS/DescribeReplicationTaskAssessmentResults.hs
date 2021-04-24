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
-- Module      : Network.AWS.DMS.DescribeReplicationTaskAssessmentResults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the task assessment results from Amazon S3. This action always returns the latest results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationTaskAssessmentResults
  ( -- * Creating a Request
    describeReplicationTaskAssessmentResults,
    DescribeReplicationTaskAssessmentResults,

    -- * Request Lenses
    drtarReplicationTaskARN,
    drtarMarker,
    drtarMaxRecords,

    -- * Destructuring the Response
    describeReplicationTaskAssessmentResultsResponse,
    DescribeReplicationTaskAssessmentResultsResponse,

    -- * Response Lenses
    drtarrrrsBucketName,
    drtarrrrsReplicationTaskAssessmentResults,
    drtarrrrsMarker,
    drtarrrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeReplicationTaskAssessmentResults' smart constructor.
data DescribeReplicationTaskAssessmentResults = DescribeReplicationTaskAssessmentResults'
  { _drtarReplicationTaskARN ::
      !( Maybe
           Text
       ),
    _drtarMarker ::
      !( Maybe
           Text
       ),
    _drtarMaxRecords ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReplicationTaskAssessmentResults' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtarReplicationTaskARN' - The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified, the API returns only one result and ignore the values of the @MaxRecords@ and @Marker@ parameters.
--
-- * 'drtarMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drtarMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
describeReplicationTaskAssessmentResults ::
  DescribeReplicationTaskAssessmentResults
describeReplicationTaskAssessmentResults =
  DescribeReplicationTaskAssessmentResults'
    { _drtarReplicationTaskARN =
        Nothing,
      _drtarMarker = Nothing,
      _drtarMaxRecords = Nothing
    }

-- | The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified, the API returns only one result and ignore the values of the @MaxRecords@ and @Marker@ parameters.
drtarReplicationTaskARN :: Lens' DescribeReplicationTaskAssessmentResults (Maybe Text)
drtarReplicationTaskARN = lens _drtarReplicationTaskARN (\s a -> s {_drtarReplicationTaskARN = a})

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drtarMarker :: Lens' DescribeReplicationTaskAssessmentResults (Maybe Text)
drtarMarker = lens _drtarMarker (\s a -> s {_drtarMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.  Default: 100 Constraints: Minimum 20, maximum 100.
drtarMaxRecords :: Lens' DescribeReplicationTaskAssessmentResults (Maybe Int)
drtarMaxRecords = lens _drtarMaxRecords (\s a -> s {_drtarMaxRecords = a})

instance
  AWSPager
    DescribeReplicationTaskAssessmentResults
  where
  page rq rs
    | stop (rs ^. drtarrrrsMarker) = Nothing
    | stop
        (rs ^. drtarrrrsReplicationTaskAssessmentResults) =
      Nothing
    | otherwise =
      Just $ rq & drtarMarker .~ rs ^. drtarrrrsMarker

instance
  AWSRequest
    DescribeReplicationTaskAssessmentResults
  where
  type
    Rs DescribeReplicationTaskAssessmentResults =
      DescribeReplicationTaskAssessmentResultsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeReplicationTaskAssessmentResultsResponse'
            <$> (x .?> "BucketName")
            <*> (x .?> "ReplicationTaskAssessmentResults" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeReplicationTaskAssessmentResults

instance
  NFData
    DescribeReplicationTaskAssessmentResults

instance
  ToHeaders
    DescribeReplicationTaskAssessmentResults
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeReplicationTaskAssessmentResults" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeReplicationTaskAssessmentResults
  where
  toJSON DescribeReplicationTaskAssessmentResults' {..} =
    object
      ( catMaybes
          [ ("ReplicationTaskArn" .=)
              <$> _drtarReplicationTaskARN,
            ("Marker" .=) <$> _drtarMarker,
            ("MaxRecords" .=) <$> _drtarMaxRecords
          ]
      )

instance
  ToPath
    DescribeReplicationTaskAssessmentResults
  where
  toPath = const "/"

instance
  ToQuery
    DescribeReplicationTaskAssessmentResults
  where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeReplicationTaskAssessmentResultsResponse' smart constructor.
data DescribeReplicationTaskAssessmentResultsResponse = DescribeReplicationTaskAssessmentResultsResponse'
  { _drtarrrrsBucketName ::
      !( Maybe
           Text
       ),
    _drtarrrrsReplicationTaskAssessmentResults ::
      !( Maybe
           [ReplicationTaskAssessmentResult]
       ),
    _drtarrrrsMarker ::
      !( Maybe
           Text
       ),
    _drtarrrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReplicationTaskAssessmentResultsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtarrrrsBucketName' - - The Amazon S3 bucket where the task assessment report is located.
--
-- * 'drtarrrrsReplicationTaskAssessmentResults' - The task assessment report.
--
-- * 'drtarrrrsMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'drtarrrrsResponseStatus' - -- | The response status code.
describeReplicationTaskAssessmentResultsResponse ::
  -- | 'drtarrrrsResponseStatus'
  Int ->
  DescribeReplicationTaskAssessmentResultsResponse
describeReplicationTaskAssessmentResultsResponse
  pResponseStatus_ =
    DescribeReplicationTaskAssessmentResultsResponse'
      { _drtarrrrsBucketName =
          Nothing,
        _drtarrrrsReplicationTaskAssessmentResults =
          Nothing,
        _drtarrrrsMarker =
          Nothing,
        _drtarrrrsResponseStatus =
          pResponseStatus_
      }

-- | - The Amazon S3 bucket where the task assessment report is located.
drtarrrrsBucketName :: Lens' DescribeReplicationTaskAssessmentResultsResponse (Maybe Text)
drtarrrrsBucketName = lens _drtarrrrsBucketName (\s a -> s {_drtarrrrsBucketName = a})

-- | The task assessment report.
drtarrrrsReplicationTaskAssessmentResults :: Lens' DescribeReplicationTaskAssessmentResultsResponse [ReplicationTaskAssessmentResult]
drtarrrrsReplicationTaskAssessmentResults = lens _drtarrrrsReplicationTaskAssessmentResults (\s a -> s {_drtarrrrsReplicationTaskAssessmentResults = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
drtarrrrsMarker :: Lens' DescribeReplicationTaskAssessmentResultsResponse (Maybe Text)
drtarrrrsMarker = lens _drtarrrrsMarker (\s a -> s {_drtarrrrsMarker = a})

-- | -- | The response status code.
drtarrrrsResponseStatus :: Lens' DescribeReplicationTaskAssessmentResultsResponse Int
drtarrrrsResponseStatus = lens _drtarrrrsResponseStatus (\s a -> s {_drtarrrrsResponseStatus = a})

instance
  NFData
    DescribeReplicationTaskAssessmentResultsResponse
