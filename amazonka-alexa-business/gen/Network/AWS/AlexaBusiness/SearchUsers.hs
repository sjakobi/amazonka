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
-- Module      : Network.AWS.AlexaBusiness.SearchUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Searches users and lists the ones that meet a set of filter and sort criteria.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.SearchUsers
  ( -- * Creating a Request
    searchUsers,
    SearchUsers,

    -- * Request Lenses
    suNextToken,
    suSortCriteria,
    suMaxResults,
    suFilters,

    -- * Destructuring the Response
    searchUsersResponse,
    SearchUsersResponse,

    -- * Response Lenses
    surrsNextToken,
    surrsTotalCount,
    surrsUsers,
    surrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'searchUsers' smart constructor.
data SearchUsers = SearchUsers'
  { _suNextToken ::
      !(Maybe Text),
    _suSortCriteria :: !(Maybe [Sort]),
    _suMaxResults :: !(Maybe Nat),
    _suFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
--
-- * 'suSortCriteria' - The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
--
-- * 'suMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. Required.
--
-- * 'suFilters' - The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
searchUsers ::
  SearchUsers
searchUsers =
  SearchUsers'
    { _suNextToken = Nothing,
      _suSortCriteria = Nothing,
      _suMaxResults = Nothing,
      _suFilters = Nothing
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ . Required.
suNextToken :: Lens' SearchUsers (Maybe Text)
suNextToken = lens _suNextToken (\s a -> s {_suNextToken = a})

-- | The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
suSortCriteria :: Lens' SearchUsers [Sort]
suSortCriteria = lens _suSortCriteria (\s a -> s {_suSortCriteria = a}) . _Default . _Coerce

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved. Required.
suMaxResults :: Lens' SearchUsers (Maybe Natural)
suMaxResults = lens _suMaxResults (\s a -> s {_suMaxResults = a}) . mapping _Nat

-- | The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.
suFilters :: Lens' SearchUsers [Filter]
suFilters = lens _suFilters (\s a -> s {_suFilters = a}) . _Default . _Coerce

instance AWSPager SearchUsers where
  page rq rs
    | stop (rs ^. surrsNextToken) = Nothing
    | stop (rs ^. surrsUsers) = Nothing
    | otherwise =
      Just $ rq & suNextToken .~ rs ^. surrsNextToken

instance AWSRequest SearchUsers where
  type Rs SearchUsers = SearchUsersResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          SearchUsersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TotalCount")
            <*> (x .?> "Users" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable SearchUsers

instance NFData SearchUsers

instance ToHeaders SearchUsers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.SearchUsers" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SearchUsers where
  toJSON SearchUsers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _suNextToken,
            ("SortCriteria" .=) <$> _suSortCriteria,
            ("MaxResults" .=) <$> _suMaxResults,
            ("Filters" .=) <$> _suFilters
          ]
      )

instance ToPath SearchUsers where
  toPath = const "/"

instance ToQuery SearchUsers where
  toQuery = const mempty

-- | /See:/ 'searchUsersResponse' smart constructor.
data SearchUsersResponse = SearchUsersResponse'
  { _surrsNextToken ::
      !(Maybe Text),
    _surrsTotalCount ::
      !(Maybe Int),
    _surrsUsers ::
      !(Maybe [UserData]),
    _surrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SearchUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'surrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'surrsTotalCount' - The total number of users returned.
--
-- * 'surrsUsers' - The users that meet the specified set of filter criteria, in sort order.
--
-- * 'surrsResponseStatus' - -- | The response status code.
searchUsersResponse ::
  -- | 'surrsResponseStatus'
  Int ->
  SearchUsersResponse
searchUsersResponse pResponseStatus_ =
  SearchUsersResponse'
    { _surrsNextToken = Nothing,
      _surrsTotalCount = Nothing,
      _surrsUsers = Nothing,
      _surrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
surrsNextToken :: Lens' SearchUsersResponse (Maybe Text)
surrsNextToken = lens _surrsNextToken (\s a -> s {_surrsNextToken = a})

-- | The total number of users returned.
surrsTotalCount :: Lens' SearchUsersResponse (Maybe Int)
surrsTotalCount = lens _surrsTotalCount (\s a -> s {_surrsTotalCount = a})

-- | The users that meet the specified set of filter criteria, in sort order.
surrsUsers :: Lens' SearchUsersResponse [UserData]
surrsUsers = lens _surrsUsers (\s a -> s {_surrsUsers = a}) . _Default . _Coerce

-- | -- | The response status code.
surrsResponseStatus :: Lens' SearchUsersResponse Int
surrsResponseStatus = lens _surrsResponseStatus (\s a -> s {_surrsResponseStatus = a})

instance NFData SearchUsersResponse
