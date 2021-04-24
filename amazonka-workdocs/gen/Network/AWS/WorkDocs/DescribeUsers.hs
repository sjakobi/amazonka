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
-- Module      : Network.AWS.WorkDocs.DescribeUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified users. You can describe all users or filter the results (for example, by status or organization).
--
--
-- By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeUsers
  ( -- * Creating a Request
    describeUsers,
    DescribeUsers,

    -- * Request Lenses
    dOrganizationId,
    dQuery,
    dUserIds,
    dInclude,
    dFields,
    dOrder,
    dAuthenticationToken,
    dLimit,
    dSort,
    dMarker,

    -- * Destructuring the Response
    describeUsersResponse,
    DescribeUsersResponse,

    -- * Response Lenses
    durrsTotalNumberOfUsers,
    durrsUsers,
    durrsMarker,
    durrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeUsers' smart constructor.
data DescribeUsers = DescribeUsers'
  { _dOrganizationId ::
      !(Maybe Text),
    _dQuery :: !(Maybe (Sensitive Text)),
    _dUserIds :: !(Maybe Text),
    _dInclude :: !(Maybe UserFilterType),
    _dFields :: !(Maybe Text),
    _dOrder :: !(Maybe OrderType),
    _dAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _dLimit :: !(Maybe Nat),
    _dSort :: !(Maybe UserSortType),
    _dMarker :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUsers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dOrganizationId' - The ID of the organization.
--
-- * 'dQuery' - A query to filter users by user name.
--
-- * 'dUserIds' - The IDs of the users.
--
-- * 'dInclude' - The state of the users. Specify "ALL" to include inactive users.
--
-- * 'dFields' - A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information.
--
-- * 'dOrder' - The order for the results.
--
-- * 'dAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'dLimit' - The maximum number of items to return.
--
-- * 'dSort' - The sorting criteria.
--
-- * 'dMarker' - The marker for the next set of results. (You received this marker from a previous call.)
describeUsers ::
  DescribeUsers
describeUsers =
  DescribeUsers'
    { _dOrganizationId = Nothing,
      _dQuery = Nothing,
      _dUserIds = Nothing,
      _dInclude = Nothing,
      _dFields = Nothing,
      _dOrder = Nothing,
      _dAuthenticationToken = Nothing,
      _dLimit = Nothing,
      _dSort = Nothing,
      _dMarker = Nothing
    }

-- | The ID of the organization.
dOrganizationId :: Lens' DescribeUsers (Maybe Text)
dOrganizationId = lens _dOrganizationId (\s a -> s {_dOrganizationId = a})

-- | A query to filter users by user name.
dQuery :: Lens' DescribeUsers (Maybe Text)
dQuery = lens _dQuery (\s a -> s {_dQuery = a}) . mapping _Sensitive

-- | The IDs of the users.
dUserIds :: Lens' DescribeUsers (Maybe Text)
dUserIds = lens _dUserIds (\s a -> s {_dUserIds = a})

-- | The state of the users. Specify "ALL" to include inactive users.
dInclude :: Lens' DescribeUsers (Maybe UserFilterType)
dInclude = lens _dInclude (\s a -> s {_dInclude = a})

-- | A comma-separated list of values. Specify "STORAGE_METADATA" to include the user storage quota and utilization information.
dFields :: Lens' DescribeUsers (Maybe Text)
dFields = lens _dFields (\s a -> s {_dFields = a})

-- | The order for the results.
dOrder :: Lens' DescribeUsers (Maybe OrderType)
dOrder = lens _dOrder (\s a -> s {_dOrder = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
dAuthenticationToken :: Lens' DescribeUsers (Maybe Text)
dAuthenticationToken = lens _dAuthenticationToken (\s a -> s {_dAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of items to return.
dLimit :: Lens' DescribeUsers (Maybe Natural)
dLimit = lens _dLimit (\s a -> s {_dLimit = a}) . mapping _Nat

-- | The sorting criteria.
dSort :: Lens' DescribeUsers (Maybe UserSortType)
dSort = lens _dSort (\s a -> s {_dSort = a})

-- | The marker for the next set of results. (You received this marker from a previous call.)
dMarker :: Lens' DescribeUsers (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

instance AWSPager DescribeUsers where
  page rq rs
    | stop (rs ^. durrsMarker) = Nothing
    | stop (rs ^. durrsUsers) = Nothing
    | otherwise =
      Just $ rq & dMarker .~ rs ^. durrsMarker

instance AWSRequest DescribeUsers where
  type Rs DescribeUsers = DescribeUsersResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeUsersResponse'
            <$> (x .?> "TotalNumberOfUsers")
            <*> (x .?> "Users" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUsers

instance NFData DescribeUsers

instance ToHeaders DescribeUsers where
  toHeaders DescribeUsers' {..} =
    mconcat
      [ "Authentication" =# _dAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeUsers where
  toPath = const "/api/v1/users"

instance ToQuery DescribeUsers where
  toQuery DescribeUsers' {..} =
    mconcat
      [ "organizationId" =: _dOrganizationId,
        "query" =: _dQuery,
        "userIds" =: _dUserIds,
        "include" =: _dInclude,
        "fields" =: _dFields,
        "order" =: _dOrder,
        "limit" =: _dLimit,
        "sort" =: _dSort,
        "marker" =: _dMarker
      ]

-- | /See:/ 'describeUsersResponse' smart constructor.
data DescribeUsersResponse = DescribeUsersResponse'
  { _durrsTotalNumberOfUsers ::
      !(Maybe Integer),
    _durrsUsers ::
      !(Maybe [User]),
    _durrsMarker ::
      !(Maybe Text),
    _durrsResponseStatus ::
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

-- | Creates a value of 'DescribeUsersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'durrsTotalNumberOfUsers' - The total number of users included in the results.
--
-- * 'durrsUsers' - The users.
--
-- * 'durrsMarker' - The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
--
-- * 'durrsResponseStatus' - -- | The response status code.
describeUsersResponse ::
  -- | 'durrsResponseStatus'
  Int ->
  DescribeUsersResponse
describeUsersResponse pResponseStatus_ =
  DescribeUsersResponse'
    { _durrsTotalNumberOfUsers =
        Nothing,
      _durrsUsers = Nothing,
      _durrsMarker = Nothing,
      _durrsResponseStatus = pResponseStatus_
    }

-- | The total number of users included in the results.
durrsTotalNumberOfUsers :: Lens' DescribeUsersResponse (Maybe Integer)
durrsTotalNumberOfUsers = lens _durrsTotalNumberOfUsers (\s a -> s {_durrsTotalNumberOfUsers = a})

-- | The users.
durrsUsers :: Lens' DescribeUsersResponse [User]
durrsUsers = lens _durrsUsers (\s a -> s {_durrsUsers = a}) . _Default . _Coerce

-- | The marker to use when requesting the next set of results. If there are no additional results, the string is empty.
durrsMarker :: Lens' DescribeUsersResponse (Maybe Text)
durrsMarker = lens _durrsMarker (\s a -> s {_durrsMarker = a})

-- | -- | The response status code.
durrsResponseStatus :: Lens' DescribeUsersResponse Int
durrsResponseStatus = lens _durrsResponseStatus (\s a -> s {_durrsResponseStatus = a})

instance NFData DescribeUsersResponse
