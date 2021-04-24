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
-- Module      : Network.AWS.EC2.DescribeExportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified export instance tasks or all of your export instance tasks.
module Network.AWS.EC2.DescribeExportTasks
  ( -- * Creating a Request
    describeExportTasks,
    DescribeExportTasks,

    -- * Request Lenses
    detExportTaskIds,
    detFilters,

    -- * Destructuring the Response
    describeExportTasksResponse,
    DescribeExportTasksResponse,

    -- * Response Lenses
    detrrsExportTasks,
    detrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeExportTasks' smart constructor.
data DescribeExportTasks = DescribeExportTasks'
  { _detExportTaskIds ::
      !(Maybe [Text]),
    _detFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeExportTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detExportTaskIds' - The export task IDs.
--
-- * 'detFilters' - the filters for the export tasks.
describeExportTasks ::
  DescribeExportTasks
describeExportTasks =
  DescribeExportTasks'
    { _detExportTaskIds = Nothing,
      _detFilters = Nothing
    }

-- | The export task IDs.
detExportTaskIds :: Lens' DescribeExportTasks [Text]
detExportTaskIds = lens _detExportTaskIds (\s a -> s {_detExportTaskIds = a}) . _Default . _Coerce

-- | the filters for the export tasks.
detFilters :: Lens' DescribeExportTasks [Filter]
detFilters = lens _detFilters (\s a -> s {_detFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeExportTasks where
  type
    Rs DescribeExportTasks =
      DescribeExportTasksResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeExportTasksResponse'
            <$> ( x .@? "exportTaskSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeExportTasks

instance NFData DescribeExportTasks

instance ToHeaders DescribeExportTasks where
  toHeaders = const mempty

instance ToPath DescribeExportTasks where
  toPath = const "/"

instance ToQuery DescribeExportTasks where
  toQuery DescribeExportTasks' {..} =
    mconcat
      [ "Action" =: ("DescribeExportTasks" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          (toQueryList "ExportTaskId" <$> _detExportTaskIds),
        toQuery (toQueryList "Filter" <$> _detFilters)
      ]

-- | /See:/ 'describeExportTasksResponse' smart constructor.
data DescribeExportTasksResponse = DescribeExportTasksResponse'
  { _detrrsExportTasks ::
      !( Maybe
           [ExportTask]
       ),
    _detrrsResponseStatus ::
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

-- | Creates a value of 'DescribeExportTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrrsExportTasks' - Information about the export tasks.
--
-- * 'detrrsResponseStatus' - -- | The response status code.
describeExportTasksResponse ::
  -- | 'detrrsResponseStatus'
  Int ->
  DescribeExportTasksResponse
describeExportTasksResponse pResponseStatus_ =
  DescribeExportTasksResponse'
    { _detrrsExportTasks =
        Nothing,
      _detrrsResponseStatus = pResponseStatus_
    }

-- | Information about the export tasks.
detrrsExportTasks :: Lens' DescribeExportTasksResponse [ExportTask]
detrrsExportTasks = lens _detrrsExportTasks (\s a -> s {_detrrsExportTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DescribeExportTasksResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DescribeExportTasksResponse
