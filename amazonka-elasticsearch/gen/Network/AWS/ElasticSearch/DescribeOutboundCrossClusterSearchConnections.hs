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
-- Module      : Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the outbound cross-cluster search connections for a source domain.
module Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections
  ( -- * Creating a Request
    describeOutboundCrossClusterSearchConnections,
    DescribeOutboundCrossClusterSearchConnections,

    -- * Request Lenses
    doccscNextToken,
    doccscMaxResults,
    doccscFilters,

    -- * Destructuring the Response
    describeOutboundCrossClusterSearchConnectionsResponse,
    DescribeOutboundCrossClusterSearchConnectionsResponse,

    -- * Response Lenses
    doccscrrsNextToken,
    doccscrrsCrossClusterSearchConnections,
    doccscrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DescribeOutboundCrossClusterSearchConnections' @ operation.
--
--
--
-- /See:/ 'describeOutboundCrossClusterSearchConnections' smart constructor.
data DescribeOutboundCrossClusterSearchConnections = DescribeOutboundCrossClusterSearchConnections'
  { _doccscNextToken ::
      !( Maybe
           Text
       ),
    _doccscMaxResults ::
      !( Maybe
           Int
       ),
    _doccscFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeOutboundCrossClusterSearchConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doccscNextToken' - NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
--
-- * 'doccscMaxResults' - Set this value to limit the number of results returned. If not specified, defaults to 100.
--
-- * 'doccscFilters' - A list of filters used to match properties for outbound cross-cluster search connection. Available @'Filter' @ names for this operation are:     * cross-cluster-search-connection-id    * destination-domain-info.domain-name    * destination-domain-info.owner-id    * destination-domain-info.region    * source-domain-info.domain-name
describeOutboundCrossClusterSearchConnections ::
  DescribeOutboundCrossClusterSearchConnections
describeOutboundCrossClusterSearchConnections =
  DescribeOutboundCrossClusterSearchConnections'
    { _doccscNextToken =
        Nothing,
      _doccscMaxResults = Nothing,
      _doccscFilters = Nothing
    }

-- | NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
doccscNextToken :: Lens' DescribeOutboundCrossClusterSearchConnections (Maybe Text)
doccscNextToken = lens _doccscNextToken (\s a -> s {_doccscNextToken = a})

-- | Set this value to limit the number of results returned. If not specified, defaults to 100.
doccscMaxResults :: Lens' DescribeOutboundCrossClusterSearchConnections (Maybe Int)
doccscMaxResults = lens _doccscMaxResults (\s a -> s {_doccscMaxResults = a})

-- | A list of filters used to match properties for outbound cross-cluster search connection. Available @'Filter' @ names for this operation are:     * cross-cluster-search-connection-id    * destination-domain-info.domain-name    * destination-domain-info.owner-id    * destination-domain-info.region    * source-domain-info.domain-name
doccscFilters :: Lens' DescribeOutboundCrossClusterSearchConnections [Filter]
doccscFilters = lens _doccscFilters (\s a -> s {_doccscFilters = a}) . _Default . _Coerce

instance
  AWSRequest
    DescribeOutboundCrossClusterSearchConnections
  where
  type
    Rs DescribeOutboundCrossClusterSearchConnections =
      DescribeOutboundCrossClusterSearchConnectionsResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DescribeOutboundCrossClusterSearchConnectionsResponse'
            <$> (x .?> "NextToken")
              <*> (x .?> "CrossClusterSearchConnections" .!@ mempty)
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeOutboundCrossClusterSearchConnections

instance
  NFData
    DescribeOutboundCrossClusterSearchConnections

instance
  ToHeaders
    DescribeOutboundCrossClusterSearchConnections
  where
  toHeaders = const mempty

instance
  ToJSON
    DescribeOutboundCrossClusterSearchConnections
  where
  toJSON
    DescribeOutboundCrossClusterSearchConnections' {..} =
      object
        ( catMaybes
            [ ("NextToken" .=) <$> _doccscNextToken,
              ("MaxResults" .=) <$> _doccscMaxResults,
              ("Filters" .=) <$> _doccscFilters
            ]
        )

instance
  ToPath
    DescribeOutboundCrossClusterSearchConnections
  where
  toPath =
    const
      "/2015-01-01/es/ccs/outboundConnection/search"

instance
  ToQuery
    DescribeOutboundCrossClusterSearchConnections
  where
  toQuery = const mempty

-- | The result of a @'DescribeOutboundCrossClusterSearchConnections' @ request. Contains the list of connections matching the filter criteria.
--
--
--
-- /See:/ 'describeOutboundCrossClusterSearchConnectionsResponse' smart constructor.
data DescribeOutboundCrossClusterSearchConnectionsResponse = DescribeOutboundCrossClusterSearchConnectionsResponse'
  { _doccscrrsNextToken ::
      !( Maybe
           Text
       ),
    _doccscrrsCrossClusterSearchConnections ::
      !( Maybe
           [OutboundCrossClusterSearchConnection]
       ),
    _doccscrrsResponseStatus ::
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

-- | Creates a value of 'DescribeOutboundCrossClusterSearchConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doccscrrsNextToken' - If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
--
-- * 'doccscrrsCrossClusterSearchConnections' - Consists of list of @'OutboundCrossClusterSearchConnection' @ matching the specified filter criteria.
--
-- * 'doccscrrsResponseStatus' - -- | The response status code.
describeOutboundCrossClusterSearchConnectionsResponse ::
  -- | 'doccscrrsResponseStatus'
  Int ->
  DescribeOutboundCrossClusterSearchConnectionsResponse
describeOutboundCrossClusterSearchConnectionsResponse
  pResponseStatus_ =
    DescribeOutboundCrossClusterSearchConnectionsResponse'
      { _doccscrrsNextToken =
          Nothing,
        _doccscrrsCrossClusterSearchConnections =
          Nothing,
        _doccscrrsResponseStatus =
          pResponseStatus_
      }

-- | If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
doccscrrsNextToken :: Lens' DescribeOutboundCrossClusterSearchConnectionsResponse (Maybe Text)
doccscrrsNextToken = lens _doccscrrsNextToken (\s a -> s {_doccscrrsNextToken = a})

-- | Consists of list of @'OutboundCrossClusterSearchConnection' @ matching the specified filter criteria.
doccscrrsCrossClusterSearchConnections :: Lens' DescribeOutboundCrossClusterSearchConnectionsResponse [OutboundCrossClusterSearchConnection]
doccscrrsCrossClusterSearchConnections = lens _doccscrrsCrossClusterSearchConnections (\s a -> s {_doccscrrsCrossClusterSearchConnections = a}) . _Default . _Coerce

-- | -- | The response status code.
doccscrrsResponseStatus :: Lens' DescribeOutboundCrossClusterSearchConnectionsResponse Int
doccscrrsResponseStatus = lens _doccscrrsResponseStatus (\s a -> s {_doccscrrsResponseStatus = a})

instance
  NFData
    DescribeOutboundCrossClusterSearchConnectionsResponse
