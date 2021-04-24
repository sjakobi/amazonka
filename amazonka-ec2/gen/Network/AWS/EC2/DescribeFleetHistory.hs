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
-- Module      : Network.AWS.EC2.DescribeFleetHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the events for the specified EC2 Fleet during the specified time.
--
--
-- EC2 Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event. EC2 Fleet events are available for 48 hours.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html#monitor-ec2-fleet Monitoring your EC2 Fleet> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.DescribeFleetHistory
  ( -- * Creating a Request
    describeFleetHistory,
    DescribeFleetHistory,

    -- * Request Lenses
    dfhNextToken,
    dfhEventType,
    dfhDryRun,
    dfhMaxResults,
    dfhFleetId,
    dfhStartTime,

    -- * Destructuring the Response
    describeFleetHistoryResponse,
    DescribeFleetHistoryResponse,

    -- * Response Lenses
    dfhrrsNextToken,
    dfhrrsFleetId,
    dfhrrsStartTime,
    dfhrrsHistoryRecords,
    dfhrrsLastEvaluatedTime,
    dfhrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeFleetHistory' smart constructor.
data DescribeFleetHistory = DescribeFleetHistory'
  { _dfhNextToken ::
      !(Maybe Text),
    _dfhEventType ::
      !(Maybe FleetEventType),
    _dfhDryRun :: !(Maybe Bool),
    _dfhMaxResults ::
      !(Maybe Int),
    _dfhFleetId :: !Text,
    _dfhStartTime :: !ISO8601
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeFleetHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfhNextToken' - The token for the next set of results.
--
-- * 'dfhEventType' - The type of events to describe. By default, all events are described.
--
-- * 'dfhDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfhMaxResults' - The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dfhFleetId' - The ID of the EC2 Fleet.
--
-- * 'dfhStartTime' - The start date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
describeFleetHistory ::
  -- | 'dfhFleetId'
  Text ->
  -- | 'dfhStartTime'
  UTCTime ->
  DescribeFleetHistory
describeFleetHistory pFleetId_ pStartTime_ =
  DescribeFleetHistory'
    { _dfhNextToken = Nothing,
      _dfhEventType = Nothing,
      _dfhDryRun = Nothing,
      _dfhMaxResults = Nothing,
      _dfhFleetId = pFleetId_,
      _dfhStartTime = _Time # pStartTime_
    }

-- | The token for the next set of results.
dfhNextToken :: Lens' DescribeFleetHistory (Maybe Text)
dfhNextToken = lens _dfhNextToken (\s a -> s {_dfhNextToken = a})

-- | The type of events to describe. By default, all events are described.
dfhEventType :: Lens' DescribeFleetHistory (Maybe FleetEventType)
dfhEventType = lens _dfhEventType (\s a -> s {_dfhEventType = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfhDryRun :: Lens' DescribeFleetHistory (Maybe Bool)
dfhDryRun = lens _dfhDryRun (\s a -> s {_dfhDryRun = a})

-- | The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dfhMaxResults :: Lens' DescribeFleetHistory (Maybe Int)
dfhMaxResults = lens _dfhMaxResults (\s a -> s {_dfhMaxResults = a})

-- | The ID of the EC2 Fleet.
dfhFleetId :: Lens' DescribeFleetHistory Text
dfhFleetId = lens _dfhFleetId (\s a -> s {_dfhFleetId = a})

-- | The start date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
dfhStartTime :: Lens' DescribeFleetHistory UTCTime
dfhStartTime = lens _dfhStartTime (\s a -> s {_dfhStartTime = a}) . _Time

instance AWSRequest DescribeFleetHistory where
  type
    Rs DescribeFleetHistory =
      DescribeFleetHistoryResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeFleetHistoryResponse'
            <$> (x .@? "nextToken")
            <*> (x .@? "fleetId")
            <*> (x .@? "startTime")
            <*> ( x .@? "historyRecordSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "lastEvaluatedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeFleetHistory

instance NFData DescribeFleetHistory

instance ToHeaders DescribeFleetHistory where
  toHeaders = const mempty

instance ToPath DescribeFleetHistory where
  toPath = const "/"

instance ToQuery DescribeFleetHistory where
  toQuery DescribeFleetHistory' {..} =
    mconcat
      [ "Action" =: ("DescribeFleetHistory" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dfhNextToken,
        "EventType" =: _dfhEventType,
        "DryRun" =: _dfhDryRun,
        "MaxResults" =: _dfhMaxResults,
        "FleetId" =: _dfhFleetId,
        "StartTime" =: _dfhStartTime
      ]

-- | /See:/ 'describeFleetHistoryResponse' smart constructor.
data DescribeFleetHistoryResponse = DescribeFleetHistoryResponse'
  { _dfhrrsNextToken ::
      !(Maybe Text),
    _dfhrrsFleetId ::
      !(Maybe Text),
    _dfhrrsStartTime ::
      !( Maybe
           ISO8601
       ),
    _dfhrrsHistoryRecords ::
      !( Maybe
           [HistoryRecordEntry]
       ),
    _dfhrrsLastEvaluatedTime ::
      !( Maybe
           ISO8601
       ),
    _dfhrrsResponseStatus ::
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

-- | Creates a value of 'DescribeFleetHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfhrrsNextToken' - The token for the next set of results.
--
-- * 'dfhrrsFleetId' - The ID of the EC Fleet.
--
-- * 'dfhrrsStartTime' - The start date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
--
-- * 'dfhrrsHistoryRecords' - Information about the events in the history of the EC2 Fleet.
--
-- * 'dfhrrsLastEvaluatedTime' - The last date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). All records up to this time were retrieved. If @nextToken@ indicates that there are more results, this value is not present.
--
-- * 'dfhrrsResponseStatus' - -- | The response status code.
describeFleetHistoryResponse ::
  -- | 'dfhrrsResponseStatus'
  Int ->
  DescribeFleetHistoryResponse
describeFleetHistoryResponse pResponseStatus_ =
  DescribeFleetHistoryResponse'
    { _dfhrrsNextToken =
        Nothing,
      _dfhrrsFleetId = Nothing,
      _dfhrrsStartTime = Nothing,
      _dfhrrsHistoryRecords = Nothing,
      _dfhrrsLastEvaluatedTime = Nothing,
      _dfhrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of results.
dfhrrsNextToken :: Lens' DescribeFleetHistoryResponse (Maybe Text)
dfhrrsNextToken = lens _dfhrrsNextToken (\s a -> s {_dfhrrsNextToken = a})

-- | The ID of the EC Fleet.
dfhrrsFleetId :: Lens' DescribeFleetHistoryResponse (Maybe Text)
dfhrrsFleetId = lens _dfhrrsFleetId (\s a -> s {_dfhrrsFleetId = a})

-- | The start date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z).
dfhrrsStartTime :: Lens' DescribeFleetHistoryResponse (Maybe UTCTime)
dfhrrsStartTime = lens _dfhrrsStartTime (\s a -> s {_dfhrrsStartTime = a}) . mapping _Time

-- | Information about the events in the history of the EC2 Fleet.
dfhrrsHistoryRecords :: Lens' DescribeFleetHistoryResponse [HistoryRecordEntry]
dfhrrsHistoryRecords = lens _dfhrrsHistoryRecords (\s a -> s {_dfhrrsHistoryRecords = a}) . _Default . _Coerce

-- | The last date and time for the events, in UTC format (for example, /YYYY/ -/MM/ -/DD/ T/HH/ :/MM/ :/SS/ Z). All records up to this time were retrieved. If @nextToken@ indicates that there are more results, this value is not present.
dfhrrsLastEvaluatedTime :: Lens' DescribeFleetHistoryResponse (Maybe UTCTime)
dfhrrsLastEvaluatedTime = lens _dfhrrsLastEvaluatedTime (\s a -> s {_dfhrrsLastEvaluatedTime = a}) . mapping _Time

-- | -- | The response status code.
dfhrrsResponseStatus :: Lens' DescribeFleetHistoryResponse Int
dfhrrsResponseStatus = lens _dfhrrsResponseStatus (\s a -> s {_dfhrrsResponseStatus = a})

instance NFData DescribeFleetHistoryResponse
