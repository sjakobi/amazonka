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
-- Module      : Network.AWS.Config.DescribePendingAggregationRequests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all pending aggregation requests.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Config.DescribePendingAggregationRequests
  ( -- * Creating a Request
    describePendingAggregationRequests,
    DescribePendingAggregationRequests,

    -- * Request Lenses
    dparNextToken,
    dparLimit,

    -- * Destructuring the Response
    describePendingAggregationRequestsResponse,
    DescribePendingAggregationRequestsResponse,

    -- * Response Lenses
    dparrrsNextToken,
    dparrrsPendingAggregationRequests,
    dparrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePendingAggregationRequests' smart constructor.
data DescribePendingAggregationRequests = DescribePendingAggregationRequests'
  { _dparNextToken ::
      !( Maybe
           Text
       ),
    _dparLimit ::
      !( Maybe
           Nat
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

-- | Creates a value of 'DescribePendingAggregationRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dparNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dparLimit' - The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
describePendingAggregationRequests ::
  DescribePendingAggregationRequests
describePendingAggregationRequests =
  DescribePendingAggregationRequests'
    { _dparNextToken =
        Nothing,
      _dparLimit = Nothing
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dparNextToken :: Lens' DescribePendingAggregationRequests (Maybe Text)
dparNextToken = lens _dparNextToken (\s a -> s {_dparNextToken = a})

-- | The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, AWS Config uses the default.
dparLimit :: Lens' DescribePendingAggregationRequests (Maybe Natural)
dparLimit = lens _dparLimit (\s a -> s {_dparLimit = a}) . mapping _Nat

instance AWSPager DescribePendingAggregationRequests where
  page rq rs
    | stop (rs ^. dparrrsNextToken) = Nothing
    | stop (rs ^. dparrrsPendingAggregationRequests) =
      Nothing
    | otherwise =
      Just $ rq & dparNextToken .~ rs ^. dparrrsNextToken

instance
  AWSRequest
    DescribePendingAggregationRequests
  where
  type
    Rs DescribePendingAggregationRequests =
      DescribePendingAggregationRequestsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DescribePendingAggregationRequestsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PendingAggregationRequests" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePendingAggregationRequests

instance NFData DescribePendingAggregationRequests

instance ToHeaders DescribePendingAggregationRequests where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DescribePendingAggregationRequests" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePendingAggregationRequests where
  toJSON DescribePendingAggregationRequests' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dparNextToken,
            ("Limit" .=) <$> _dparLimit
          ]
      )

instance ToPath DescribePendingAggregationRequests where
  toPath = const "/"

instance ToQuery DescribePendingAggregationRequests where
  toQuery = const mempty

-- | /See:/ 'describePendingAggregationRequestsResponse' smart constructor.
data DescribePendingAggregationRequestsResponse = DescribePendingAggregationRequestsResponse'
  { _dparrrsNextToken ::
      !( Maybe
           Text
       ),
    _dparrrsPendingAggregationRequests ::
      !( Maybe
           [PendingAggregationRequest]
       ),
    _dparrrsResponseStatus ::
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

-- | Creates a value of 'DescribePendingAggregationRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dparrrsNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'dparrrsPendingAggregationRequests' - Returns a PendingAggregationRequests object.
--
-- * 'dparrrsResponseStatus' - -- | The response status code.
describePendingAggregationRequestsResponse ::
  -- | 'dparrrsResponseStatus'
  Int ->
  DescribePendingAggregationRequestsResponse
describePendingAggregationRequestsResponse
  pResponseStatus_ =
    DescribePendingAggregationRequestsResponse'
      { _dparrrsNextToken =
          Nothing,
        _dparrrsPendingAggregationRequests =
          Nothing,
        _dparrrsResponseStatus =
          pResponseStatus_
      }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
dparrrsNextToken :: Lens' DescribePendingAggregationRequestsResponse (Maybe Text)
dparrrsNextToken = lens _dparrrsNextToken (\s a -> s {_dparrrsNextToken = a})

-- | Returns a PendingAggregationRequests object.
dparrrsPendingAggregationRequests :: Lens' DescribePendingAggregationRequestsResponse [PendingAggregationRequest]
dparrrsPendingAggregationRequests = lens _dparrrsPendingAggregationRequests (\s a -> s {_dparrrsPendingAggregationRequests = a}) . _Default . _Coerce

-- | -- | The response status code.
dparrrsResponseStatus :: Lens' DescribePendingAggregationRequestsResponse Int
dparrrsResponseStatus = lens _dparrrsResponseStatus (\s a -> s {_dparrrsResponseStatus = a})

instance
  NFData
    DescribePendingAggregationRequestsResponse
