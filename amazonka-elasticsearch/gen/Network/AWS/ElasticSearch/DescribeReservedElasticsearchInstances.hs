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
-- Module      : Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about reserved Elasticsearch instances for this account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstances
  ( -- * Creating a Request
    describeReservedElasticsearchInstances,
    DescribeReservedElasticsearchInstances,

    -- * Request Lenses
    dreiNextToken,
    dreiMaxResults,
    dreiReservedElasticsearchInstanceId,

    -- * Destructuring the Response
    describeReservedElasticsearchInstancesResponse,
    DescribeReservedElasticsearchInstancesResponse,

    -- * Response Lenses
    dreirrsNextToken,
    dreirrsReservedElasticsearchInstances,
    dreirrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for parameters to @DescribeReservedElasticsearchInstances@
--
--
--
-- /See:/ 'describeReservedElasticsearchInstances' smart constructor.
data DescribeReservedElasticsearchInstances = DescribeReservedElasticsearchInstances'
  { _dreiNextToken ::
      !( Maybe
           Text
       ),
    _dreiMaxResults ::
      !( Maybe
           Int
       ),
    _dreiReservedElasticsearchInstanceId ::
      !( Maybe
           Text
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

-- | Creates a value of 'DescribeReservedElasticsearchInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dreiNextToken' - NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
--
-- * 'dreiMaxResults' - Set this value to limit the number of results returned. If not specified, defaults to 100.
--
-- * 'dreiReservedElasticsearchInstanceId' - The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.
describeReservedElasticsearchInstances ::
  DescribeReservedElasticsearchInstances
describeReservedElasticsearchInstances =
  DescribeReservedElasticsearchInstances'
    { _dreiNextToken =
        Nothing,
      _dreiMaxResults = Nothing,
      _dreiReservedElasticsearchInstanceId =
        Nothing
    }

-- | NextToken should be sent in case if earlier API call produced result containing NextToken. It is used for pagination.
dreiNextToken :: Lens' DescribeReservedElasticsearchInstances (Maybe Text)
dreiNextToken = lens _dreiNextToken (\s a -> s {_dreiNextToken = a})

-- | Set this value to limit the number of results returned. If not specified, defaults to 100.
dreiMaxResults :: Lens' DescribeReservedElasticsearchInstances (Maybe Int)
dreiMaxResults = lens _dreiMaxResults (\s a -> s {_dreiMaxResults = a})

-- | The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.
dreiReservedElasticsearchInstanceId :: Lens' DescribeReservedElasticsearchInstances (Maybe Text)
dreiReservedElasticsearchInstanceId = lens _dreiReservedElasticsearchInstanceId (\s a -> s {_dreiReservedElasticsearchInstanceId = a})

instance
  AWSPager
    DescribeReservedElasticsearchInstances
  where
  page rq rs
    | stop (rs ^. dreirrsNextToken) = Nothing
    | stop (rs ^. dreirrsReservedElasticsearchInstances) =
      Nothing
    | otherwise =
      Just $ rq & dreiNextToken .~ rs ^. dreirrsNextToken

instance
  AWSRequest
    DescribeReservedElasticsearchInstances
  where
  type
    Rs DescribeReservedElasticsearchInstances =
      DescribeReservedElasticsearchInstancesResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          DescribeReservedElasticsearchInstancesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ReservedElasticsearchInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeReservedElasticsearchInstances

instance
  NFData
    DescribeReservedElasticsearchInstances

instance
  ToHeaders
    DescribeReservedElasticsearchInstances
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeReservedElasticsearchInstances
  where
  toPath = const "/2015-01-01/es/reservedInstances"

instance
  ToQuery
    DescribeReservedElasticsearchInstances
  where
  toQuery DescribeReservedElasticsearchInstances' {..} =
    mconcat
      [ "nextToken" =: _dreiNextToken,
        "maxResults" =: _dreiMaxResults,
        "reservationId"
          =: _dreiReservedElasticsearchInstanceId
      ]

-- | Container for results from @DescribeReservedElasticsearchInstances@
--
--
--
-- /See:/ 'describeReservedElasticsearchInstancesResponse' smart constructor.
data DescribeReservedElasticsearchInstancesResponse = DescribeReservedElasticsearchInstancesResponse'
  { _dreirrsNextToken ::
      !( Maybe
           Text
       ),
    _dreirrsReservedElasticsearchInstances ::
      !( Maybe
           [ReservedElasticsearchInstance]
       ),
    _dreirrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedElasticsearchInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dreirrsNextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- * 'dreirrsReservedElasticsearchInstances' - List of reserved Elasticsearch instances.
--
-- * 'dreirrsResponseStatus' - -- | The response status code.
describeReservedElasticsearchInstancesResponse ::
  -- | 'dreirrsResponseStatus'
  Int ->
  DescribeReservedElasticsearchInstancesResponse
describeReservedElasticsearchInstancesResponse
  pResponseStatus_ =
    DescribeReservedElasticsearchInstancesResponse'
      { _dreirrsNextToken =
          Nothing,
        _dreirrsReservedElasticsearchInstances =
          Nothing,
        _dreirrsResponseStatus =
          pResponseStatus_
      }

-- | Provides an identifier to allow retrieval of paginated results.
dreirrsNextToken :: Lens' DescribeReservedElasticsearchInstancesResponse (Maybe Text)
dreirrsNextToken = lens _dreirrsNextToken (\s a -> s {_dreirrsNextToken = a})

-- | List of reserved Elasticsearch instances.
dreirrsReservedElasticsearchInstances :: Lens' DescribeReservedElasticsearchInstancesResponse [ReservedElasticsearchInstance]
dreirrsReservedElasticsearchInstances = lens _dreirrsReservedElasticsearchInstances (\s a -> s {_dreirrsReservedElasticsearchInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
dreirrsResponseStatus :: Lens' DescribeReservedElasticsearchInstancesResponse Int
dreirrsResponseStatus = lens _dreirrsResponseStatus (\s a -> s {_dreirrsResponseStatus = a})

instance
  NFData
    DescribeReservedElasticsearchInstancesResponse
