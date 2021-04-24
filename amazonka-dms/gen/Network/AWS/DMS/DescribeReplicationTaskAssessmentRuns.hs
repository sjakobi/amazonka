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
-- Module      : Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of premigration assessment runs based on filter settings.
--
--
-- These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.
module Network.AWS.DMS.DescribeReplicationTaskAssessmentRuns
  ( -- * Creating a Request
    describeReplicationTaskAssessmentRuns,
    DescribeReplicationTaskAssessmentRuns,

    -- * Request Lenses
    dFilters,
    dMarker,
    dMaxRecords,

    -- * Destructuring the Response
    describeReplicationTaskAssessmentRunsResponse,
    DescribeReplicationTaskAssessmentRunsResponse,

    -- * Response Lenses
    ddrsReplicationTaskAssessmentRuns,
    ddrsMarker,
    ddrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeReplicationTaskAssessmentRuns' smart constructor.
data DescribeReplicationTaskAssessmentRuns = DescribeReplicationTaskAssessmentRuns'
  { _dFilters ::
      !( Maybe
           [Filter]
       ),
    _dMarker ::
      !( Maybe
           Text
       ),
    _dMaxRecords ::
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

-- | Creates a value of 'DescribeReplicationTaskAssessmentRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFilters' - Filters applied to the premigration assessment runs described in the form of key-value pairs. Valid filter names: @replication-task-assessment-run-arn@ , @replication-task-arn@ , @replication-instance-arn@ , @status@
--
-- * 'dMarker' - An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'dMaxRecords' - The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
describeReplicationTaskAssessmentRuns ::
  DescribeReplicationTaskAssessmentRuns
describeReplicationTaskAssessmentRuns =
  DescribeReplicationTaskAssessmentRuns'
    { _dFilters =
        Nothing,
      _dMarker = Nothing,
      _dMaxRecords = Nothing
    }

-- | Filters applied to the premigration assessment runs described in the form of key-value pairs. Valid filter names: @replication-task-assessment-run-arn@ , @replication-task-arn@ , @replication-instance-arn@ , @status@
dFilters :: Lens' DescribeReplicationTaskAssessmentRuns [Filter]
dFilters = lens _dFilters (\s a -> s {_dFilters = a}) . _Default . _Coerce

-- | An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
dMarker :: Lens' DescribeReplicationTaskAssessmentRuns (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

-- | The maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
dMaxRecords :: Lens' DescribeReplicationTaskAssessmentRuns (Maybe Int)
dMaxRecords = lens _dMaxRecords (\s a -> s {_dMaxRecords = a})

instance
  AWSRequest
    DescribeReplicationTaskAssessmentRuns
  where
  type
    Rs DescribeReplicationTaskAssessmentRuns =
      DescribeReplicationTaskAssessmentRunsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeReplicationTaskAssessmentRunsResponse'
            <$> (x .?> "ReplicationTaskAssessmentRuns" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeReplicationTaskAssessmentRuns

instance NFData DescribeReplicationTaskAssessmentRuns

instance
  ToHeaders
    DescribeReplicationTaskAssessmentRuns
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeReplicationTaskAssessmentRuns" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeReplicationTaskAssessmentRuns where
  toJSON DescribeReplicationTaskAssessmentRuns' {..} =
    object
      ( catMaybes
          [ ("Filters" .=) <$> _dFilters,
            ("Marker" .=) <$> _dMarker,
            ("MaxRecords" .=) <$> _dMaxRecords
          ]
      )

instance ToPath DescribeReplicationTaskAssessmentRuns where
  toPath = const "/"

instance
  ToQuery
    DescribeReplicationTaskAssessmentRuns
  where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeReplicationTaskAssessmentRunsResponse' smart constructor.
data DescribeReplicationTaskAssessmentRunsResponse = DescribeReplicationTaskAssessmentRunsResponse'
  { _ddrsReplicationTaskAssessmentRuns ::
      !( Maybe
           [ReplicationTaskAssessmentRun]
       ),
    _ddrsMarker ::
      !( Maybe
           Text
       ),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DescribeReplicationTaskAssessmentRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsReplicationTaskAssessmentRuns' - One or more premigration assessment runs as specified by @Filters@ .
--
-- * 'ddrsMarker' - A pagination token returned for you to pass to a subsequent request. If you pass this token as the @Marker@ value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by @MaxRecords@ .
--
-- * 'ddrsResponseStatus' - -- | The response status code.
describeReplicationTaskAssessmentRunsResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DescribeReplicationTaskAssessmentRunsResponse
describeReplicationTaskAssessmentRunsResponse
  pResponseStatus_ =
    DescribeReplicationTaskAssessmentRunsResponse'
      { _ddrsReplicationTaskAssessmentRuns =
          Nothing,
        _ddrsMarker = Nothing,
        _ddrsResponseStatus =
          pResponseStatus_
      }

-- | One or more premigration assessment runs as specified by @Filters@ .
ddrsReplicationTaskAssessmentRuns :: Lens' DescribeReplicationTaskAssessmentRunsResponse [ReplicationTaskAssessmentRun]
ddrsReplicationTaskAssessmentRuns = lens _ddrsReplicationTaskAssessmentRuns (\s a -> s {_ddrsReplicationTaskAssessmentRuns = a}) . _Default . _Coerce

-- | A pagination token returned for you to pass to a subsequent request. If you pass this token as the @Marker@ value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by @MaxRecords@ .
ddrsMarker :: Lens' DescribeReplicationTaskAssessmentRunsResponse (Maybe Text)
ddrsMarker = lens _ddrsMarker (\s a -> s {_ddrsMarker = a})

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DescribeReplicationTaskAssessmentRunsResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance
  NFData
    DescribeReplicationTaskAssessmentRunsResponse
