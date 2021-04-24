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
-- Module      : Network.AWS.XRay.GetTraceGraph
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a service graph for one or more specific trace IDs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetTraceGraph
  ( -- * Creating a Request
    getTraceGraph,
    GetTraceGraph,

    -- * Request Lenses
    gtgNextToken,
    gtgTraceIds,

    -- * Destructuring the Response
    getTraceGraphResponse,
    GetTraceGraphResponse,

    -- * Response Lenses
    gtgrrsNextToken,
    gtgrrsServices,
    gtgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getTraceGraph' smart constructor.
data GetTraceGraph = GetTraceGraph'
  { _gtgNextToken ::
      !(Maybe Text),
    _gtgTraceIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTraceGraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgNextToken' - Pagination token.
--
-- * 'gtgTraceIds' - Trace IDs of requests for which to generate a service graph.
getTraceGraph ::
  GetTraceGraph
getTraceGraph =
  GetTraceGraph'
    { _gtgNextToken = Nothing,
      _gtgTraceIds = mempty
    }

-- | Pagination token.
gtgNextToken :: Lens' GetTraceGraph (Maybe Text)
gtgNextToken = lens _gtgNextToken (\s a -> s {_gtgNextToken = a})

-- | Trace IDs of requests for which to generate a service graph.
gtgTraceIds :: Lens' GetTraceGraph [Text]
gtgTraceIds = lens _gtgTraceIds (\s a -> s {_gtgTraceIds = a}) . _Coerce

instance AWSPager GetTraceGraph where
  page rq rs
    | stop (rs ^. gtgrrsNextToken) = Nothing
    | stop (rs ^. gtgrrsServices) = Nothing
    | otherwise =
      Just $ rq & gtgNextToken .~ rs ^. gtgrrsNextToken

instance AWSRequest GetTraceGraph where
  type Rs GetTraceGraph = GetTraceGraphResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetTraceGraphResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Services" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetTraceGraph

instance NFData GetTraceGraph

instance ToHeaders GetTraceGraph where
  toHeaders = const mempty

instance ToJSON GetTraceGraph where
  toJSON GetTraceGraph' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gtgNextToken,
            Just ("TraceIds" .= _gtgTraceIds)
          ]
      )

instance ToPath GetTraceGraph where
  toPath = const "/TraceGraph"

instance ToQuery GetTraceGraph where
  toQuery = const mempty

-- | /See:/ 'getTraceGraphResponse' smart constructor.
data GetTraceGraphResponse = GetTraceGraphResponse'
  { _gtgrrsNextToken ::
      !(Maybe Text),
    _gtgrrsServices ::
      !(Maybe [ServiceInfo]),
    _gtgrrsResponseStatus ::
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

-- | Creates a value of 'GetTraceGraphResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgrrsNextToken' - Pagination token.
--
-- * 'gtgrrsServices' - The services that have processed one of the specified requests.
--
-- * 'gtgrrsResponseStatus' - -- | The response status code.
getTraceGraphResponse ::
  -- | 'gtgrrsResponseStatus'
  Int ->
  GetTraceGraphResponse
getTraceGraphResponse pResponseStatus_ =
  GetTraceGraphResponse'
    { _gtgrrsNextToken = Nothing,
      _gtgrrsServices = Nothing,
      _gtgrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
gtgrrsNextToken :: Lens' GetTraceGraphResponse (Maybe Text)
gtgrrsNextToken = lens _gtgrrsNextToken (\s a -> s {_gtgrrsNextToken = a})

-- | The services that have processed one of the specified requests.
gtgrrsServices :: Lens' GetTraceGraphResponse [ServiceInfo]
gtgrrsServices = lens _gtgrrsServices (\s a -> s {_gtgrrsServices = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgrrsResponseStatus :: Lens' GetTraceGraphResponse Int
gtgrrsResponseStatus = lens _gtgrrsResponseStatus (\s a -> s {_gtgrrsResponseStatus = a})

instance NFData GetTraceGraphResponse
