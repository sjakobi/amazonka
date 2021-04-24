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
-- Module      : Network.AWS.Discovery.StartExportTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins the export of discovered data to an S3 bucket.
--
--
-- If you specify @agentIds@ in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using @startTime@ and @endTime@ . Export of detailed agent data is limited to five concurrently running exports.
--
-- If you do not include an @agentIds@ filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day.
module Network.AWS.Discovery.StartExportTask
  ( -- * Creating a Request
    startExportTask,
    StartExportTask,

    -- * Request Lenses
    setExportDataFormat,
    setStartTime,
    setEndTime,
    setFilters,

    -- * Destructuring the Response
    startExportTaskResponse,
    StartExportTaskResponse,

    -- * Response Lenses
    setrrsExportId,
    setrrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startExportTask' smart constructor.
data StartExportTask = StartExportTask'
  { _setExportDataFormat ::
      !(Maybe [ExportDataFormat]),
    _setStartTime :: !(Maybe POSIX),
    _setEndTime :: !(Maybe POSIX),
    _setFilters :: !(Maybe [ExportFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartExportTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setExportDataFormat' - The file format for the returned export data. Default value is @CSV@ . __Note:__ /The/ @GRAPHML@ /option has been deprecated./
--
-- * 'setStartTime' - The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.
--
-- * 'setEndTime' - The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.
--
-- * 'setFilters' - If a filter is present, it selects the single @agentId@ of the Application Discovery Agent for which data is exported. The @agentId@ can be found in the results of the @DescribeAgents@ API or CLI. If no filter is present, @startTime@ and @endTime@ are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents.
startExportTask ::
  StartExportTask
startExportTask =
  StartExportTask'
    { _setExportDataFormat = Nothing,
      _setStartTime = Nothing,
      _setEndTime = Nothing,
      _setFilters = Nothing
    }

-- | The file format for the returned export data. Default value is @CSV@ . __Note:__ /The/ @GRAPHML@ /option has been deprecated./
setExportDataFormat :: Lens' StartExportTask [ExportDataFormat]
setExportDataFormat = lens _setExportDataFormat (\s a -> s {_setExportDataFormat = a}) . _Default . _Coerce

-- | The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.
setStartTime :: Lens' StartExportTask (Maybe UTCTime)
setStartTime = lens _setStartTime (\s a -> s {_setStartTime = a}) . mapping _Time

-- | The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.
setEndTime :: Lens' StartExportTask (Maybe UTCTime)
setEndTime = lens _setEndTime (\s a -> s {_setEndTime = a}) . mapping _Time

-- | If a filter is present, it selects the single @agentId@ of the Application Discovery Agent for which data is exported. The @agentId@ can be found in the results of the @DescribeAgents@ API or CLI. If no filter is present, @startTime@ and @endTime@ are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents.
setFilters :: Lens' StartExportTask [ExportFilter]
setFilters = lens _setFilters (\s a -> s {_setFilters = a}) . _Default . _Coerce

instance AWSRequest StartExportTask where
  type Rs StartExportTask = StartExportTaskResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          StartExportTaskResponse'
            <$> (x .?> "exportId") <*> (pure (fromEnum s))
      )

instance Hashable StartExportTask

instance NFData StartExportTask

instance ToHeaders StartExportTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.StartExportTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartExportTask where
  toJSON StartExportTask' {..} =
    object
      ( catMaybes
          [ ("exportDataFormat" .=) <$> _setExportDataFormat,
            ("startTime" .=) <$> _setStartTime,
            ("endTime" .=) <$> _setEndTime,
            ("filters" .=) <$> _setFilters
          ]
      )

instance ToPath StartExportTask where
  toPath = const "/"

instance ToQuery StartExportTask where
  toQuery = const mempty

-- | /See:/ 'startExportTaskResponse' smart constructor.
data StartExportTaskResponse = StartExportTaskResponse'
  { _setrrsExportId ::
      !(Maybe Text),
    _setrrsResponseStatus ::
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

-- | Creates a value of 'StartExportTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setrrsExportId' - A unique identifier used to query the status of an export request.
--
-- * 'setrrsResponseStatus' - -- | The response status code.
startExportTaskResponse ::
  -- | 'setrrsResponseStatus'
  Int ->
  StartExportTaskResponse
startExportTaskResponse pResponseStatus_ =
  StartExportTaskResponse'
    { _setrrsExportId = Nothing,
      _setrrsResponseStatus = pResponseStatus_
    }

-- | A unique identifier used to query the status of an export request.
setrrsExportId :: Lens' StartExportTaskResponse (Maybe Text)
setrrsExportId = lens _setrrsExportId (\s a -> s {_setrrsExportId = a})

-- | -- | The response status code.
setrrsResponseStatus :: Lens' StartExportTaskResponse Int
setrrsResponseStatus = lens _setrrsResponseStatus (\s a -> s {_setrrsResponseStatus = a})

instance NFData StartExportTaskResponse
