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
-- Module      : Network.AWS.XRay.BatchGetTraces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use @GetTraceSummaries@ to get a list of trace IDs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.BatchGetTraces
  ( -- * Creating a Request
    batchGetTraces,
    BatchGetTraces,

    -- * Request Lenses
    bgtNextToken,
    bgtTraceIds,

    -- * Destructuring the Response
    batchGetTracesResponse,
    BatchGetTracesResponse,

    -- * Response Lenses
    bgtrrsNextToken,
    bgtrrsUnprocessedTraceIds,
    bgtrrsTraces,
    bgtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'batchGetTraces' smart constructor.
data BatchGetTraces = BatchGetTraces'
  { _bgtNextToken ::
      !(Maybe Text),
    _bgtTraceIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetTraces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgtNextToken' - Pagination token.
--
-- * 'bgtTraceIds' - Specify the trace IDs of requests for which to retrieve segments.
batchGetTraces ::
  BatchGetTraces
batchGetTraces =
  BatchGetTraces'
    { _bgtNextToken = Nothing,
      _bgtTraceIds = mempty
    }

-- | Pagination token.
bgtNextToken :: Lens' BatchGetTraces (Maybe Text)
bgtNextToken = lens _bgtNextToken (\s a -> s {_bgtNextToken = a})

-- | Specify the trace IDs of requests for which to retrieve segments.
bgtTraceIds :: Lens' BatchGetTraces [Text]
bgtTraceIds = lens _bgtTraceIds (\s a -> s {_bgtTraceIds = a}) . _Coerce

instance AWSPager BatchGetTraces where
  page rq rs
    | stop (rs ^. bgtrrsNextToken) = Nothing
    | stop (rs ^. bgtrrsTraces) = Nothing
    | otherwise =
      Just $ rq & bgtNextToken .~ rs ^. bgtrrsNextToken

instance AWSRequest BatchGetTraces where
  type Rs BatchGetTraces = BatchGetTracesResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          BatchGetTracesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UnprocessedTraceIds" .!@ mempty)
            <*> (x .?> "Traces" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetTraces

instance NFData BatchGetTraces

instance ToHeaders BatchGetTraces where
  toHeaders = const mempty

instance ToJSON BatchGetTraces where
  toJSON BatchGetTraces' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _bgtNextToken,
            Just ("TraceIds" .= _bgtTraceIds)
          ]
      )

instance ToPath BatchGetTraces where
  toPath = const "/Traces"

instance ToQuery BatchGetTraces where
  toQuery = const mempty

-- | /See:/ 'batchGetTracesResponse' smart constructor.
data BatchGetTracesResponse = BatchGetTracesResponse'
  { _bgtrrsNextToken ::
      !(Maybe Text),
    _bgtrrsUnprocessedTraceIds ::
      !(Maybe [Text]),
    _bgtrrsTraces ::
      !(Maybe [Trace]),
    _bgtrrsResponseStatus ::
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

-- | Creates a value of 'BatchGetTracesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgtrrsNextToken' - Pagination token.
--
-- * 'bgtrrsUnprocessedTraceIds' - Trace IDs of requests that haven't been processed.
--
-- * 'bgtrrsTraces' - Full traces for the specified requests.
--
-- * 'bgtrrsResponseStatus' - -- | The response status code.
batchGetTracesResponse ::
  -- | 'bgtrrsResponseStatus'
  Int ->
  BatchGetTracesResponse
batchGetTracesResponse pResponseStatus_ =
  BatchGetTracesResponse'
    { _bgtrrsNextToken = Nothing,
      _bgtrrsUnprocessedTraceIds = Nothing,
      _bgtrrsTraces = Nothing,
      _bgtrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
bgtrrsNextToken :: Lens' BatchGetTracesResponse (Maybe Text)
bgtrrsNextToken = lens _bgtrrsNextToken (\s a -> s {_bgtrrsNextToken = a})

-- | Trace IDs of requests that haven't been processed.
bgtrrsUnprocessedTraceIds :: Lens' BatchGetTracesResponse [Text]
bgtrrsUnprocessedTraceIds = lens _bgtrrsUnprocessedTraceIds (\s a -> s {_bgtrrsUnprocessedTraceIds = a}) . _Default . _Coerce

-- | Full traces for the specified requests.
bgtrrsTraces :: Lens' BatchGetTracesResponse [Trace]
bgtrrsTraces = lens _bgtrrsTraces (\s a -> s {_bgtrrsTraces = a}) . _Default . _Coerce

-- | -- | The response status code.
bgtrrsResponseStatus :: Lens' BatchGetTracesResponse Int
bgtrrsResponseStatus = lens _bgtrrsResponseStatus (\s a -> s {_bgtrrsResponseStatus = a})

instance NFData BatchGetTracesResponse
