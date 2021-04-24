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
-- Module      : Network.AWS.WorkDocs.DescribeActivities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the user activities in a specified time period.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkDocs.DescribeActivities
  ( -- * Creating a Request
    describeActivities,
    DescribeActivities,

    -- * Request Lenses
    daResourceId,
    daOrganizationId,
    daStartTime,
    daIncludeIndirectActivities,
    daEndTime,
    daUserId,
    daActivityTypes,
    daAuthenticationToken,
    daLimit,
    daMarker,

    -- * Destructuring the Response
    describeActivitiesResponse,
    DescribeActivitiesResponse,

    -- * Response Lenses
    darrsUserActivities,
    darrsMarker,
    darrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'describeActivities' smart constructor.
data DescribeActivities = DescribeActivities'
  { _daResourceId ::
      !(Maybe Text),
    _daOrganizationId ::
      !(Maybe Text),
    _daStartTime :: !(Maybe POSIX),
    _daIncludeIndirectActivities ::
      !(Maybe Bool),
    _daEndTime :: !(Maybe POSIX),
    _daUserId :: !(Maybe Text),
    _daActivityTypes :: !(Maybe Text),
    _daAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _daLimit :: !(Maybe Nat),
    _daMarker :: !(Maybe Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeActivities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daResourceId' - The document or folder ID for which to describe activity types.
--
-- * 'daOrganizationId' - The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.
--
-- * 'daStartTime' - The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.
--
-- * 'daIncludeIndirectActivities' - Includes indirect activities. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).
--
-- * 'daEndTime' - The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.
--
-- * 'daUserId' - The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.
--
-- * 'daActivityTypes' - Specifies which activity types to include in the response. If this field is left empty, all activity types are returned.
--
-- * 'daAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'daLimit' - The maximum number of items to return.
--
-- * 'daMarker' - The marker for the next set of results.
describeActivities ::
  DescribeActivities
describeActivities =
  DescribeActivities'
    { _daResourceId = Nothing,
      _daOrganizationId = Nothing,
      _daStartTime = Nothing,
      _daIncludeIndirectActivities = Nothing,
      _daEndTime = Nothing,
      _daUserId = Nothing,
      _daActivityTypes = Nothing,
      _daAuthenticationToken = Nothing,
      _daLimit = Nothing,
      _daMarker = Nothing
    }

-- | The document or folder ID for which to describe activity types.
daResourceId :: Lens' DescribeActivities (Maybe Text)
daResourceId = lens _daResourceId (\s a -> s {_daResourceId = a})

-- | The ID of the organization. This is a mandatory parameter when using administrative API (SigV4) requests.
daOrganizationId :: Lens' DescribeActivities (Maybe Text)
daOrganizationId = lens _daOrganizationId (\s a -> s {_daOrganizationId = a})

-- | The timestamp that determines the starting time of the activities. The response includes the activities performed after the specified timestamp.
daStartTime :: Lens' DescribeActivities (Maybe UTCTime)
daStartTime = lens _daStartTime (\s a -> s {_daStartTime = a}) . mapping _Time

-- | Includes indirect activities. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).
daIncludeIndirectActivities :: Lens' DescribeActivities (Maybe Bool)
daIncludeIndirectActivities = lens _daIncludeIndirectActivities (\s a -> s {_daIncludeIndirectActivities = a})

-- | The timestamp that determines the end time of the activities. The response includes the activities performed before the specified timestamp.
daEndTime :: Lens' DescribeActivities (Maybe UTCTime)
daEndTime = lens _daEndTime (\s a -> s {_daEndTime = a}) . mapping _Time

-- | The ID of the user who performed the action. The response includes activities pertaining to this user. This is an optional parameter and is only applicable for administrative API (SigV4) requests.
daUserId :: Lens' DescribeActivities (Maybe Text)
daUserId = lens _daUserId (\s a -> s {_daUserId = a})

-- | Specifies which activity types to include in the response. If this field is left empty, all activity types are returned.
daActivityTypes :: Lens' DescribeActivities (Maybe Text)
daActivityTypes = lens _daActivityTypes (\s a -> s {_daActivityTypes = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
daAuthenticationToken :: Lens' DescribeActivities (Maybe Text)
daAuthenticationToken = lens _daAuthenticationToken (\s a -> s {_daAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of items to return.
daLimit :: Lens' DescribeActivities (Maybe Natural)
daLimit = lens _daLimit (\s a -> s {_daLimit = a}) . mapping _Nat

-- | The marker for the next set of results.
daMarker :: Lens' DescribeActivities (Maybe Text)
daMarker = lens _daMarker (\s a -> s {_daMarker = a})

instance AWSPager DescribeActivities where
  page rq rs
    | stop (rs ^. darrsMarker) = Nothing
    | stop (rs ^. darrsUserActivities) = Nothing
    | otherwise =
      Just $ rq & daMarker .~ rs ^. darrsMarker

instance AWSRequest DescribeActivities where
  type
    Rs DescribeActivities =
      DescribeActivitiesResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          DescribeActivitiesResponse'
            <$> (x .?> "UserActivities" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeActivities

instance NFData DescribeActivities

instance ToHeaders DescribeActivities where
  toHeaders DescribeActivities' {..} =
    mconcat
      [ "Authentication" =# _daAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeActivities where
  toPath = const "/api/v1/activities"

instance ToQuery DescribeActivities where
  toQuery DescribeActivities' {..} =
    mconcat
      [ "resourceId" =: _daResourceId,
        "organizationId" =: _daOrganizationId,
        "startTime" =: _daStartTime,
        "includeIndirectActivities"
          =: _daIncludeIndirectActivities,
        "endTime" =: _daEndTime,
        "userId" =: _daUserId,
        "activityTypes" =: _daActivityTypes,
        "limit" =: _daLimit,
        "marker" =: _daMarker
      ]

-- | /See:/ 'describeActivitiesResponse' smart constructor.
data DescribeActivitiesResponse = DescribeActivitiesResponse'
  { _darrsUserActivities ::
      !( Maybe
           [Activity]
       ),
    _darrsMarker ::
      !(Maybe Text),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeActivitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsUserActivities' - The list of activities for the specified user and time period.
--
-- * 'darrsMarker' - The marker for the next set of results.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeActivitiesResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeActivitiesResponse
describeActivitiesResponse pResponseStatus_ =
  DescribeActivitiesResponse'
    { _darrsUserActivities =
        Nothing,
      _darrsMarker = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The list of activities for the specified user and time period.
darrsUserActivities :: Lens' DescribeActivitiesResponse [Activity]
darrsUserActivities = lens _darrsUserActivities (\s a -> s {_darrsUserActivities = a}) . _Default . _Coerce

-- | The marker for the next set of results.
darrsMarker :: Lens' DescribeActivitiesResponse (Maybe Text)
darrsMarker = lens _darrsMarker (\s a -> s {_darrsMarker = a})

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeActivitiesResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeActivitiesResponse
