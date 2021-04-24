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
-- Module      : Network.AWS.Athena.BatchGetQueryExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use 'ListQueryExecutionsInput$WorkGroup' . Query executions differ from named (saved) queries. Use 'BatchGetNamedQueryInput' to get details about named queries.
module Network.AWS.Athena.BatchGetQueryExecution
  ( -- * Creating a Request
    batchGetQueryExecution,
    BatchGetQueryExecution,

    -- * Request Lenses
    bgqeQueryExecutionIds,

    -- * Destructuring the Response
    batchGetQueryExecutionResponse,
    BatchGetQueryExecutionResponse,

    -- * Response Lenses
    bgqerrsQueryExecutions,
    bgqerrsUnprocessedQueryExecutionIds,
    bgqerrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetQueryExecution' smart constructor.
newtype BatchGetQueryExecution = BatchGetQueryExecution'
  { _bgqeQueryExecutionIds ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchGetQueryExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgqeQueryExecutionIds' - An array of query execution IDs.
batchGetQueryExecution ::
  -- | 'bgqeQueryExecutionIds'
  NonEmpty Text ->
  BatchGetQueryExecution
batchGetQueryExecution pQueryExecutionIds_ =
  BatchGetQueryExecution'
    { _bgqeQueryExecutionIds =
        _List1 # pQueryExecutionIds_
    }

-- | An array of query execution IDs.
bgqeQueryExecutionIds :: Lens' BatchGetQueryExecution (NonEmpty Text)
bgqeQueryExecutionIds = lens _bgqeQueryExecutionIds (\s a -> s {_bgqeQueryExecutionIds = a}) . _List1

instance AWSRequest BatchGetQueryExecution where
  type
    Rs BatchGetQueryExecution =
      BatchGetQueryExecutionResponse
  request = postJSON athena
  response =
    receiveJSON
      ( \s h x ->
          BatchGetQueryExecutionResponse'
            <$> (x .?> "QueryExecutions" .!@ mempty)
            <*> (x .?> "UnprocessedQueryExecutionIds" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetQueryExecution

instance NFData BatchGetQueryExecution

instance ToHeaders BatchGetQueryExecution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonAthena.BatchGetQueryExecution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetQueryExecution where
  toJSON BatchGetQueryExecution' {..} =
    object
      ( catMaybes
          [ Just
              ("QueryExecutionIds" .= _bgqeQueryExecutionIds)
          ]
      )

instance ToPath BatchGetQueryExecution where
  toPath = const "/"

instance ToQuery BatchGetQueryExecution where
  toQuery = const mempty

-- | /See:/ 'batchGetQueryExecutionResponse' smart constructor.
data BatchGetQueryExecutionResponse = BatchGetQueryExecutionResponse'
  { _bgqerrsQueryExecutions ::
      !( Maybe
           [QueryExecution]
       ),
    _bgqerrsUnprocessedQueryExecutionIds ::
      !( Maybe
           [UnprocessedQueryExecutionId]
       ),
    _bgqerrsResponseStatus ::
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

-- | Creates a value of 'BatchGetQueryExecutionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgqerrsQueryExecutions' - Information about a query execution.
--
-- * 'bgqerrsUnprocessedQueryExecutionIds' - Information about the query executions that failed to run.
--
-- * 'bgqerrsResponseStatus' - -- | The response status code.
batchGetQueryExecutionResponse ::
  -- | 'bgqerrsResponseStatus'
  Int ->
  BatchGetQueryExecutionResponse
batchGetQueryExecutionResponse pResponseStatus_ =
  BatchGetQueryExecutionResponse'
    { _bgqerrsQueryExecutions =
        Nothing,
      _bgqerrsUnprocessedQueryExecutionIds =
        Nothing,
      _bgqerrsResponseStatus = pResponseStatus_
    }

-- | Information about a query execution.
bgqerrsQueryExecutions :: Lens' BatchGetQueryExecutionResponse [QueryExecution]
bgqerrsQueryExecutions = lens _bgqerrsQueryExecutions (\s a -> s {_bgqerrsQueryExecutions = a}) . _Default . _Coerce

-- | Information about the query executions that failed to run.
bgqerrsUnprocessedQueryExecutionIds :: Lens' BatchGetQueryExecutionResponse [UnprocessedQueryExecutionId]
bgqerrsUnprocessedQueryExecutionIds = lens _bgqerrsUnprocessedQueryExecutionIds (\s a -> s {_bgqerrsUnprocessedQueryExecutionIds = a}) . _Default . _Coerce

-- | -- | The response status code.
bgqerrsResponseStatus :: Lens' BatchGetQueryExecutionResponse Int
bgqerrsResponseStatus = lens _bgqerrsResponseStatus (\s a -> s {_bgqerrsResponseStatus = a})

instance NFData BatchGetQueryExecutionResponse
