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
-- Module      : Network.AWS.DMS.DescribeApplicableIndividualAssessments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters.
--
--
-- If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run.
--
-- To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task.
--
-- If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.
module Network.AWS.DMS.DescribeApplicableIndividualAssessments
  ( -- * Creating a Request
    describeApplicableIndividualAssessments,
    DescribeApplicableIndividualAssessments,

    -- * Request Lenses
    daiaMigrationType,
    daiaReplicationTaskARN,
    daiaSourceEngineName,
    daiaReplicationInstanceARN,
    daiaTargetEngineName,
    daiaMarker,
    daiaMaxRecords,

    -- * Destructuring the Response
    describeApplicableIndividualAssessmentsResponse,
    DescribeApplicableIndividualAssessmentsResponse,

    -- * Response Lenses
    daiarrsIndividualAssessmentNames,
    daiarrsMarker,
    daiarrsResponseStatus,
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
-- /See:/ 'describeApplicableIndividualAssessments' smart constructor.
data DescribeApplicableIndividualAssessments = DescribeApplicableIndividualAssessments'
  { _daiaMigrationType ::
      !( Maybe
           MigrationTypeValue
       ),
    _daiaReplicationTaskARN ::
      !( Maybe
           Text
       ),
    _daiaSourceEngineName ::
      !( Maybe
           Text
       ),
    _daiaReplicationInstanceARN ::
      !( Maybe
           Text
       ),
    _daiaTargetEngineName ::
      !( Maybe
           Text
       ),
    _daiaMarker ::
      !( Maybe
           Text
       ),
    _daiaMaxRecords ::
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

-- | Creates a value of 'DescribeApplicableIndividualAssessments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiaMigrationType' - Name of the migration type that each provided individual assessment must support.
--
-- * 'daiaReplicationTaskARN' - Amazon Resource Name (ARN) of a migration task on which you want to base the default list of individual assessments.
--
-- * 'daiaSourceEngineName' - Name of a database engine that the specified replication instance supports as a source.
--
-- * 'daiaReplicationInstanceARN' - ARN of a replication instance on which you want to base the default list of individual assessments.
--
-- * 'daiaTargetEngineName' - Name of a database engine that the specified replication instance supports as a target.
--
-- * 'daiaMarker' - Optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- * 'daiaMaxRecords' - Maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
describeApplicableIndividualAssessments ::
  DescribeApplicableIndividualAssessments
describeApplicableIndividualAssessments =
  DescribeApplicableIndividualAssessments'
    { _daiaMigrationType =
        Nothing,
      _daiaReplicationTaskARN = Nothing,
      _daiaSourceEngineName = Nothing,
      _daiaReplicationInstanceARN =
        Nothing,
      _daiaTargetEngineName = Nothing,
      _daiaMarker = Nothing,
      _daiaMaxRecords = Nothing
    }

-- | Name of the migration type that each provided individual assessment must support.
daiaMigrationType :: Lens' DescribeApplicableIndividualAssessments (Maybe MigrationTypeValue)
daiaMigrationType = lens _daiaMigrationType (\s a -> s {_daiaMigrationType = a})

-- | Amazon Resource Name (ARN) of a migration task on which you want to base the default list of individual assessments.
daiaReplicationTaskARN :: Lens' DescribeApplicableIndividualAssessments (Maybe Text)
daiaReplicationTaskARN = lens _daiaReplicationTaskARN (\s a -> s {_daiaReplicationTaskARN = a})

-- | Name of a database engine that the specified replication instance supports as a source.
daiaSourceEngineName :: Lens' DescribeApplicableIndividualAssessments (Maybe Text)
daiaSourceEngineName = lens _daiaSourceEngineName (\s a -> s {_daiaSourceEngineName = a})

-- | ARN of a replication instance on which you want to base the default list of individual assessments.
daiaReplicationInstanceARN :: Lens' DescribeApplicableIndividualAssessments (Maybe Text)
daiaReplicationInstanceARN = lens _daiaReplicationInstanceARN (\s a -> s {_daiaReplicationInstanceARN = a})

-- | Name of a database engine that the specified replication instance supports as a target.
daiaTargetEngineName :: Lens' DescribeApplicableIndividualAssessments (Maybe Text)
daiaTargetEngineName = lens _daiaTargetEngineName (\s a -> s {_daiaTargetEngineName = a})

-- | Optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by @MaxRecords@ .
daiaMarker :: Lens' DescribeApplicableIndividualAssessments (Maybe Text)
daiaMarker = lens _daiaMarker (\s a -> s {_daiaMarker = a})

-- | Maximum number of records to include in the response. If more records exist than the specified @MaxRecords@ value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.
daiaMaxRecords :: Lens' DescribeApplicableIndividualAssessments (Maybe Int)
daiaMaxRecords = lens _daiaMaxRecords (\s a -> s {_daiaMaxRecords = a})

instance
  AWSRequest
    DescribeApplicableIndividualAssessments
  where
  type
    Rs DescribeApplicableIndividualAssessments =
      DescribeApplicableIndividualAssessmentsResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DescribeApplicableIndividualAssessmentsResponse'
            <$> (x .?> "IndividualAssessmentNames" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeApplicableIndividualAssessments

instance
  NFData
    DescribeApplicableIndividualAssessments

instance
  ToHeaders
    DescribeApplicableIndividualAssessments
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DescribeApplicableIndividualAssessments" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeApplicableIndividualAssessments
  where
  toJSON DescribeApplicableIndividualAssessments' {..} =
    object
      ( catMaybes
          [ ("MigrationType" .=) <$> _daiaMigrationType,
            ("ReplicationTaskArn" .=)
              <$> _daiaReplicationTaskARN,
            ("SourceEngineName" .=) <$> _daiaSourceEngineName,
            ("ReplicationInstanceArn" .=)
              <$> _daiaReplicationInstanceARN,
            ("TargetEngineName" .=) <$> _daiaTargetEngineName,
            ("Marker" .=) <$> _daiaMarker,
            ("MaxRecords" .=) <$> _daiaMaxRecords
          ]
      )

instance
  ToPath
    DescribeApplicableIndividualAssessments
  where
  toPath = const "/"

instance
  ToQuery
    DescribeApplicableIndividualAssessments
  where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'describeApplicableIndividualAssessmentsResponse' smart constructor.
data DescribeApplicableIndividualAssessmentsResponse = DescribeApplicableIndividualAssessmentsResponse'
  { _daiarrsIndividualAssessmentNames ::
      !( Maybe
           [Text]
       ),
    _daiarrsMarker ::
      !( Maybe
           Text
       ),
    _daiarrsResponseStatus ::
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

-- | Creates a value of 'DescribeApplicableIndividualAssessmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daiarrsIndividualAssessmentNames' - List of names for the individual assessments supported by the premigration assessment run that you start based on the specified request parameters. For more information on the available individual assessments, including compatibility with different migration task configurations, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html Working with premigration assessment runs> in the /AWS Database Migration Service User Guide./
--
-- * 'daiarrsMarker' - Pagination token returned for you to pass to a subsequent request. If you pass this token as the @Marker@ value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by @MaxRecords@ .
--
-- * 'daiarrsResponseStatus' - -- | The response status code.
describeApplicableIndividualAssessmentsResponse ::
  -- | 'daiarrsResponseStatus'
  Int ->
  DescribeApplicableIndividualAssessmentsResponse
describeApplicableIndividualAssessmentsResponse
  pResponseStatus_ =
    DescribeApplicableIndividualAssessmentsResponse'
      { _daiarrsIndividualAssessmentNames =
          Nothing,
        _daiarrsMarker = Nothing,
        _daiarrsResponseStatus =
          pResponseStatus_
      }

-- | List of names for the individual assessments supported by the premigration assessment run that you start based on the specified request parameters. For more information on the available individual assessments, including compatibility with different migration task configurations, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html Working with premigration assessment runs> in the /AWS Database Migration Service User Guide./
daiarrsIndividualAssessmentNames :: Lens' DescribeApplicableIndividualAssessmentsResponse [Text]
daiarrsIndividualAssessmentNames = lens _daiarrsIndividualAssessmentNames (\s a -> s {_daiarrsIndividualAssessmentNames = a}) . _Default . _Coerce

-- | Pagination token returned for you to pass to a subsequent request. If you pass this token as the @Marker@ value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by @MaxRecords@ .
daiarrsMarker :: Lens' DescribeApplicableIndividualAssessmentsResponse (Maybe Text)
daiarrsMarker = lens _daiarrsMarker (\s a -> s {_daiarrsMarker = a})

-- | -- | The response status code.
daiarrsResponseStatus :: Lens' DescribeApplicableIndividualAssessmentsResponse Int
daiarrsResponseStatus = lens _daiarrsResponseStatus (\s a -> s {_daiarrsResponseStatus = a})

instance
  NFData
    DescribeApplicableIndividualAssessmentsResponse
