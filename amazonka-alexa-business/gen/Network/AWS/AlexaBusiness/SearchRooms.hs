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
-- Module      : Network.AWS.AlexaBusiness.SearchRooms
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches rooms and lists the ones that meet a set of filter and sort criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchRooms
  ( -- * Creating a Request
    searchRooms,
    SearchRooms,

    -- * Request Lenses
    srNextToken,
    srSortCriteria,
    srMaxResults,
    srFilters,

    -- * Destructuring the Response
    searchRoomsResponse,
    SearchRoomsResponse,

    -- * Response Lenses
    srrrsNextToken,
    srrrsRooms,
    srrrsTotalCount,
    srrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchRooms' smart constructor.
data SearchRooms = SearchRooms'
  { _srNextToken ::
      !(Maybe Text),
    _srSortCriteria :: !(Maybe [Sort]),
    _srMaxResults :: !(Maybe Nat),
    _srFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchRooms' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'srSortCriteria' - The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.
--
-- * 'srMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'srFilters' - The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.
searchRooms ::
  SearchRooms
searchRooms =
  SearchRooms'
    { _srNextToken = Nothing,
      _srSortCriteria = Nothing,
      _srMaxResults = Nothing,
      _srFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
srNextToken :: Lens' SearchRooms (Maybe Text)
srNextToken = lens _srNextToken (\s a -> s {_srNextToken = a})

-- | The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.
srSortCriteria :: Lens' SearchRooms [Sort]
srSortCriteria = lens _srSortCriteria (\s a -> s {_srSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
srMaxResults :: Lens' SearchRooms (Maybe Natural)
srMaxResults = lens _srMaxResults (\s a -> s {_srMaxResults = a}) . mapping _Nat

-- | The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.
srFilters :: Lens' SearchRooms [Filter]
srFilters = lens _srFilters (\s a -> s {_srFilters = a}) . _Default . _Coerce

instance AWSPager SearchRooms where
  page rq rs
    | stop (rs ^. srrrsNextToken) = Nothing
    | stop (rs ^. srrrsRooms) = Nothing
    | otherwise =
      Just $ rq & srNextToken .~ rs ^. srrrsNextToken

instance AWSRequest SearchRooms where
  type Rs SearchRooms = SearchRoomsResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchRoomsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Rooms" .!@ mempty)
            <*> (x .?> "TotalCount")
            <*> (pure (fromEnum s))
      )

instance Hashable SearchRooms

instance NFData SearchRooms

instance ToHeaders SearchRooms where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchRooms" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchRooms where
  toJSON SearchRooms' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _srNextToken,
            ("SortCriteria" .=) <$> _srSortCriteria,
            ("MaxResults" .=) <$> _srMaxResults,
            ("Filters" .=) <$> _srFilters
          ]
      )

instance ToPath SearchRooms where
  toPath = const "/"

instance ToQuery SearchRooms where
  toQuery = const mempty

-- | /See:/ 'searchRoomsResponse' smart constructor.
data SearchRoomsResponse = SearchRoomsResponse'
  { _srrrsNextToken ::
      !(Maybe Text),
    _srrrsRooms ::
      !(Maybe [RoomData]),
    _srrrsTotalCount ::
      !(Maybe Int),
    _srrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchRoomsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'srrrsRooms' - The rooms that meet the specified set of filter criteria, in sort order.
--
-- * 'srrrsTotalCount' - The total number of rooms returned.
--
-- * 'srrrsResponseStatus' - -- | The response status code.
searchRoomsResponse ::
  -- | 'srrrsResponseStatus'
  Int ->
  SearchRoomsResponse
searchRoomsResponse pResponseStatus_ =
  SearchRoomsResponse'
    { _srrrsNextToken = Nothing,
      _srrrsRooms = Nothing,
      _srrrsTotalCount = Nothing,
      _srrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
srrrsNextToken :: Lens' SearchRoomsResponse (Maybe Text)
srrrsNextToken = lens _srrrsNextToken (\s a -> s {_srrrsNextToken = a})

-- | The rooms that meet the specified set of filter criteria, in sort order.
srrrsRooms :: Lens' SearchRoomsResponse [RoomData]
srrrsRooms = lens _srrrsRooms (\s a -> s {_srrrsRooms = a}) . _Default . _Coerce

-- | The total number of rooms returned.
srrrsTotalCount :: Lens' SearchRoomsResponse (Maybe Int)
srrrsTotalCount = lens _srrrsTotalCount (\s a -> s {_srrrsTotalCount = a})

-- | -- | The response status code.
srrrsResponseStatus :: Lens' SearchRoomsResponse Int
srrrsResponseStatus = lens _srrrsResponseStatus (\s a -> s {_srrrsResponseStatus = a})

instance NFData SearchRoomsResponse
