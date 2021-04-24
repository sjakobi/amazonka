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
-- Module      : Network.AWS.Discovery.DescribeImportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.
module Network.AWS.Discovery.DescribeImportTasks
  ( -- * Creating a Request
    describeImportTasks,
    DescribeImportTasks,

    -- * Request Lenses
    ditNextToken,
    ditMaxResults,
    ditFilters,

    -- * Destructuring the Response
    describeImportTasksResponse,
    DescribeImportTasksResponse,

    -- * Response Lenses
    ditrrsNextToken,
    ditrrsTasks,
    ditrrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeImportTasks' smart constructor.
data DescribeImportTasks = DescribeImportTasks'
  { _ditNextToken ::
      !(Maybe Text),
    _ditMaxResults :: !(Maybe Nat),
    _ditFilters ::
      !(Maybe [ImportTaskFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeImportTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ditNextToken' - The token to request a specific page of results.
--
-- * 'ditMaxResults' - The maximum number of results that you want this request to return, up to 100.
--
-- * 'ditFilters' - An array of name-value pairs that you provide to filter the results for the @DescribeImportTask@ request to a specific subset of results. Currently, wildcard values aren't supported for filters.
describeImportTasks ::
  DescribeImportTasks
describeImportTasks =
  DescribeImportTasks'
    { _ditNextToken = Nothing,
      _ditMaxResults = Nothing,
      _ditFilters = Nothing
    }

-- | The token to request a specific page of results.
ditNextToken :: Lens' DescribeImportTasks (Maybe Text)
ditNextToken = lens _ditNextToken (\s a -> s {_ditNextToken = a})

-- | The maximum number of results that you want this request to return, up to 100.
ditMaxResults :: Lens' DescribeImportTasks (Maybe Natural)
ditMaxResults = lens _ditMaxResults (\s a -> s {_ditMaxResults = a}) . mapping _Nat

-- | An array of name-value pairs that you provide to filter the results for the @DescribeImportTask@ request to a specific subset of results. Currently, wildcard values aren't supported for filters.
ditFilters :: Lens' DescribeImportTasks [ImportTaskFilter]
ditFilters = lens _ditFilters (\s a -> s {_ditFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeImportTasks where
  type
    Rs DescribeImportTasks =
      DescribeImportTasksResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          DescribeImportTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "tasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImportTasks

instance NFData DescribeImportTasks

instance ToHeaders DescribeImportTasks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.DescribeImportTasks" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImportTasks where
  toJSON DescribeImportTasks' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ditNextToken,
            ("maxResults" .=) <$> _ditMaxResults,
            ("filters" .=) <$> _ditFilters
          ]
      )

instance ToPath DescribeImportTasks where
  toPath = const "/"

instance ToQuery DescribeImportTasks where
  toQuery = const mempty

-- | /See:/ 'describeImportTasksResponse' smart constructor.
data DescribeImportTasksResponse = DescribeImportTasksResponse'
  { _ditrrsNextToken ::
      !(Maybe Text),
    _ditrrsTasks ::
      !( Maybe
           [ImportTask]
       ),
    _ditrrsResponseStatus ::
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

-- | Creates a value of 'DescribeImportTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ditrrsNextToken' - The token to request the next page of results.
--
-- * 'ditrrsTasks' - A returned array of import tasks that match any applied filters, up to the specified number of maximum results.
--
-- * 'ditrrsResponseStatus' - -- | The response status code.
describeImportTasksResponse ::
  -- | 'ditrrsResponseStatus'
  Int ->
  DescribeImportTasksResponse
describeImportTasksResponse pResponseStatus_ =
  DescribeImportTasksResponse'
    { _ditrrsNextToken =
        Nothing,
      _ditrrsTasks = Nothing,
      _ditrrsResponseStatus = pResponseStatus_
    }

-- | The token to request the next page of results.
ditrrsNextToken :: Lens' DescribeImportTasksResponse (Maybe Text)
ditrrsNextToken = lens _ditrrsNextToken (\s a -> s {_ditrrsNextToken = a})

-- | A returned array of import tasks that match any applied filters, up to the specified number of maximum results.
ditrrsTasks :: Lens' DescribeImportTasksResponse [ImportTask]
ditrrsTasks = lens _ditrrsTasks (\s a -> s {_ditrrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
ditrrsResponseStatus :: Lens' DescribeImportTasksResponse Int
ditrrsResponseStatus = lens _ditrrsResponseStatus (\s a -> s {_ditrrsResponseStatus = a})

instance NFData DescribeImportTasksResponse
