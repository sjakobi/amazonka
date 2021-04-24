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
-- Module      : Network.AWS.Redshift.DescribeScheduledActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes properties of scheduled actions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeScheduledActions
  ( -- * Creating a Request
    describeScheduledActions,
    DescribeScheduledActions,

    -- * Request Lenses
    dsaStartTime,
    dsaEndTime,
    dsaTargetActionType,
    dsaActive,
    dsaFilters,
    dsaScheduledActionName,
    dsaMarker,
    dsaMaxRecords,

    -- * Destructuring the Response
    describeScheduledActionsResponse,
    DescribeScheduledActionsResponse,

    -- * Response Lenses
    dsarrsScheduledActions,
    dsarrsMarker,
    dsarrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeScheduledActions' smart constructor.
data DescribeScheduledActions = DescribeScheduledActions'
  { _dsaStartTime ::
      !(Maybe ISO8601),
    _dsaEndTime ::
      !(Maybe ISO8601),
    _dsaTargetActionType ::
      !( Maybe
           ScheduledActionTypeValues
       ),
    _dsaActive ::
      !(Maybe Bool),
    _dsaFilters ::
      !( Maybe
           [ScheduledActionFilter]
       ),
    _dsaScheduledActionName ::
      !(Maybe Text),
    _dsaMarker ::
      !(Maybe Text),
    _dsaMaxRecords ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScheduledActions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsaStartTime' - The start time in UTC of the scheduled actions to retrieve. Only active scheduled actions that have invocations after this time are retrieved.
--
-- * 'dsaEndTime' - The end time in UTC of the scheduled action to retrieve. Only active scheduled actions that have invocations before this time are retrieved.
--
-- * 'dsaTargetActionType' - The type of the scheduled actions to retrieve.
--
-- * 'dsaActive' - If true, retrieve only active scheduled actions. If false, retrieve only disabled scheduled actions.
--
-- * 'dsaFilters' - List of scheduled action filters.
--
-- * 'dsaScheduledActionName' - The name of the scheduled action to retrieve.
--
-- * 'dsaMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeScheduledActions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dsaMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeScheduledActions ::
  DescribeScheduledActions
describeScheduledActions =
  DescribeScheduledActions'
    { _dsaStartTime = Nothing,
      _dsaEndTime = Nothing,
      _dsaTargetActionType = Nothing,
      _dsaActive = Nothing,
      _dsaFilters = Nothing,
      _dsaScheduledActionName = Nothing,
      _dsaMarker = Nothing,
      _dsaMaxRecords = Nothing
    }

-- | The start time in UTC of the scheduled actions to retrieve. Only active scheduled actions that have invocations after this time are retrieved.
dsaStartTime :: Lens' DescribeScheduledActions (Maybe UTCTime)
dsaStartTime = lens _dsaStartTime (\s a -> s {_dsaStartTime = a}) . mapping _Time

-- | The end time in UTC of the scheduled action to retrieve. Only active scheduled actions that have invocations before this time are retrieved.
dsaEndTime :: Lens' DescribeScheduledActions (Maybe UTCTime)
dsaEndTime = lens _dsaEndTime (\s a -> s {_dsaEndTime = a}) . mapping _Time

-- | The type of the scheduled actions to retrieve.
dsaTargetActionType :: Lens' DescribeScheduledActions (Maybe ScheduledActionTypeValues)
dsaTargetActionType = lens _dsaTargetActionType (\s a -> s {_dsaTargetActionType = a})

-- | If true, retrieve only active scheduled actions. If false, retrieve only disabled scheduled actions.
dsaActive :: Lens' DescribeScheduledActions (Maybe Bool)
dsaActive = lens _dsaActive (\s a -> s {_dsaActive = a})

-- | List of scheduled action filters.
dsaFilters :: Lens' DescribeScheduledActions [ScheduledActionFilter]
dsaFilters = lens _dsaFilters (\s a -> s {_dsaFilters = a}) . _Default . _Coerce

-- | The name of the scheduled action to retrieve.
dsaScheduledActionName :: Lens' DescribeScheduledActions (Maybe Text)
dsaScheduledActionName = lens _dsaScheduledActionName (\s a -> s {_dsaScheduledActionName = a})

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeScheduledActions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dsaMarker :: Lens' DescribeScheduledActions (Maybe Text)
dsaMarker = lens _dsaMarker (\s a -> s {_dsaMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dsaMaxRecords :: Lens' DescribeScheduledActions (Maybe Int)
dsaMaxRecords = lens _dsaMaxRecords (\s a -> s {_dsaMaxRecords = a})

instance AWSPager DescribeScheduledActions where
  page rq rs
    | stop (rs ^. dsarrsMarker) = Nothing
    | stop (rs ^. dsarrsScheduledActions) = Nothing
    | otherwise =
      Just $ rq & dsaMarker .~ rs ^. dsarrsMarker

instance AWSRequest DescribeScheduledActions where
  type
    Rs DescribeScheduledActions =
      DescribeScheduledActionsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeScheduledActionsResult"
      ( \s h x ->
          DescribeScheduledActionsResponse'
            <$> ( x .@? "ScheduledActions" .!@ mempty
                    >>= may (parseXMLList "ScheduledAction")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeScheduledActions

instance NFData DescribeScheduledActions

instance ToHeaders DescribeScheduledActions where
  toHeaders = const mempty

instance ToPath DescribeScheduledActions where
  toPath = const "/"

instance ToQuery DescribeScheduledActions where
  toQuery DescribeScheduledActions' {..} =
    mconcat
      [ "Action"
          =: ("DescribeScheduledActions" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "StartTime" =: _dsaStartTime,
        "EndTime" =: _dsaEndTime,
        "TargetActionType" =: _dsaTargetActionType,
        "Active" =: _dsaActive,
        "Filters"
          =: toQuery
            ( toQueryList "ScheduledActionFilter"
                <$> _dsaFilters
            ),
        "ScheduledActionName" =: _dsaScheduledActionName,
        "Marker" =: _dsaMarker,
        "MaxRecords" =: _dsaMaxRecords
      ]

-- | /See:/ 'describeScheduledActionsResponse' smart constructor.
data DescribeScheduledActionsResponse = DescribeScheduledActionsResponse'
  { _dsarrsScheduledActions ::
      !( Maybe
           [ScheduledAction]
       ),
    _dsarrsMarker ::
      !( Maybe
           Text
       ),
    _dsarrsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledActionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsarrsScheduledActions' - List of retrieved scheduled actions.
--
-- * 'dsarrsMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeScheduledActions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dsarrsResponseStatus' - -- | The response status code.
describeScheduledActionsResponse ::
  -- | 'dsarrsResponseStatus'
  Int ->
  DescribeScheduledActionsResponse
describeScheduledActionsResponse pResponseStatus_ =
  DescribeScheduledActionsResponse'
    { _dsarrsScheduledActions =
        Nothing,
      _dsarrsMarker = Nothing,
      _dsarrsResponseStatus = pResponseStatus_
    }

-- | List of retrieved scheduled actions.
dsarrsScheduledActions :: Lens' DescribeScheduledActionsResponse [ScheduledAction]
dsarrsScheduledActions = lens _dsarrsScheduledActions (\s a -> s {_dsarrsScheduledActions = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeScheduledActions' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dsarrsMarker :: Lens' DescribeScheduledActionsResponse (Maybe Text)
dsarrsMarker = lens _dsarrsMarker (\s a -> s {_dsarrsMarker = a})

-- | -- | The response status code.
dsarrsResponseStatus :: Lens' DescribeScheduledActionsResponse Int
dsarrsResponseStatus = lens _dsarrsResponseStatus (\s a -> s {_dsarrsResponseStatus = a})

instance NFData DescribeScheduledActionsResponse
