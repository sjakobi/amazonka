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
-- Module      : Network.AWS.CloudWatch.DescribeAlarmHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for either all metric alarms or all composite alarms are returned.
--
--
-- CloudWatch retains the history of an alarm even if you delete the alarm.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatch.DescribeAlarmHistory
  ( -- * Creating a Request
    describeAlarmHistory,
    DescribeAlarmHistory,

    -- * Request Lenses
    dahNextToken,
    dahStartDate,
    dahAlarmTypes,
    dahHistoryItemType,
    dahScanBy,
    dahAlarmName,
    dahEndDate,
    dahMaxRecords,

    -- * Destructuring the Response
    describeAlarmHistoryResponse,
    DescribeAlarmHistoryResponse,

    -- * Response Lenses
    dahrrsNextToken,
    dahrrsAlarmHistoryItems,
    dahrrsResponseStatus,
  )
where

import Network.AWS.CloudWatch.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAlarmHistory' smart constructor.
data DescribeAlarmHistory = DescribeAlarmHistory'
  { _dahNextToken ::
      !(Maybe Text),
    _dahStartDate ::
      !(Maybe ISO8601),
    _dahAlarmTypes ::
      !(Maybe [AlarmType]),
    _dahHistoryItemType ::
      !(Maybe HistoryItemType),
    _dahScanBy :: !(Maybe ScanBy),
    _dahAlarmName ::
      !(Maybe Text),
    _dahEndDate ::
      !(Maybe ISO8601),
    _dahMaxRecords ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAlarmHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dahNextToken' - The token returned by a previous call to indicate that there is more data available.
--
-- * 'dahStartDate' - The starting date to retrieve alarm history.
--
-- * 'dahAlarmTypes' - Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.
--
-- * 'dahHistoryItemType' - The type of alarm histories to retrieve.
--
-- * 'dahScanBy' - Specified whether to return the newest or oldest alarm history first. Specify @TimestampDescending@ to have the newest event history returned first, and specify @TimestampAscending@ to have the oldest history returned first.
--
-- * 'dahAlarmName' - The name of the alarm.
--
-- * 'dahEndDate' - The ending date to retrieve alarm history.
--
-- * 'dahMaxRecords' - The maximum number of alarm history records to retrieve.
describeAlarmHistory ::
  DescribeAlarmHistory
describeAlarmHistory =
  DescribeAlarmHistory'
    { _dahNextToken = Nothing,
      _dahStartDate = Nothing,
      _dahAlarmTypes = Nothing,
      _dahHistoryItemType = Nothing,
      _dahScanBy = Nothing,
      _dahAlarmName = Nothing,
      _dahEndDate = Nothing,
      _dahMaxRecords = Nothing
    }

-- | The token returned by a previous call to indicate that there is more data available.
dahNextToken :: Lens' DescribeAlarmHistory (Maybe Text)
dahNextToken = lens _dahNextToken (\s a -> s {_dahNextToken = a})

-- | The starting date to retrieve alarm history.
dahStartDate :: Lens' DescribeAlarmHistory (Maybe UTCTime)
dahStartDate = lens _dahStartDate (\s a -> s {_dahStartDate = a}) . mapping _Time

-- | Use this parameter to specify whether you want the operation to return metric alarms or composite alarms. If you omit this parameter, only metric alarms are returned.
dahAlarmTypes :: Lens' DescribeAlarmHistory [AlarmType]
dahAlarmTypes = lens _dahAlarmTypes (\s a -> s {_dahAlarmTypes = a}) . _Default . _Coerce

-- | The type of alarm histories to retrieve.
dahHistoryItemType :: Lens' DescribeAlarmHistory (Maybe HistoryItemType)
dahHistoryItemType = lens _dahHistoryItemType (\s a -> s {_dahHistoryItemType = a})

-- | Specified whether to return the newest or oldest alarm history first. Specify @TimestampDescending@ to have the newest event history returned first, and specify @TimestampAscending@ to have the oldest history returned first.
dahScanBy :: Lens' DescribeAlarmHistory (Maybe ScanBy)
dahScanBy = lens _dahScanBy (\s a -> s {_dahScanBy = a})

-- | The name of the alarm.
dahAlarmName :: Lens' DescribeAlarmHistory (Maybe Text)
dahAlarmName = lens _dahAlarmName (\s a -> s {_dahAlarmName = a})

-- | The ending date to retrieve alarm history.
dahEndDate :: Lens' DescribeAlarmHistory (Maybe UTCTime)
dahEndDate = lens _dahEndDate (\s a -> s {_dahEndDate = a}) . mapping _Time

-- | The maximum number of alarm history records to retrieve.
dahMaxRecords :: Lens' DescribeAlarmHistory (Maybe Natural)
dahMaxRecords = lens _dahMaxRecords (\s a -> s {_dahMaxRecords = a}) . mapping _Nat

instance AWSPager DescribeAlarmHistory where
  page rq rs
    | stop (rs ^. dahrrsNextToken) = Nothing
    | stop (rs ^. dahrrsAlarmHistoryItems) = Nothing
    | otherwise =
      Just $ rq & dahNextToken .~ rs ^. dahrrsNextToken

instance AWSRequest DescribeAlarmHistory where
  type
    Rs DescribeAlarmHistory =
      DescribeAlarmHistoryResponse
  request = postQuery cloudWatch
  response =
    receiveXMLWrapper
      "DescribeAlarmHistoryResult"
      ( \s h x ->
          DescribeAlarmHistoryResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "AlarmHistoryItems" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAlarmHistory

instance NFData DescribeAlarmHistory

instance ToHeaders DescribeAlarmHistory where
  toHeaders = const mempty

instance ToPath DescribeAlarmHistory where
  toPath = const "/"

instance ToQuery DescribeAlarmHistory where
  toQuery DescribeAlarmHistory' {..} =
    mconcat
      [ "Action" =: ("DescribeAlarmHistory" :: ByteString),
        "Version" =: ("2010-08-01" :: ByteString),
        "NextToken" =: _dahNextToken,
        "StartDate" =: _dahStartDate,
        "AlarmTypes"
          =: toQuery (toQueryList "member" <$> _dahAlarmTypes),
        "HistoryItemType" =: _dahHistoryItemType,
        "ScanBy" =: _dahScanBy,
        "AlarmName" =: _dahAlarmName,
        "EndDate" =: _dahEndDate,
        "MaxRecords" =: _dahMaxRecords
      ]

-- | /See:/ 'describeAlarmHistoryResponse' smart constructor.
data DescribeAlarmHistoryResponse = DescribeAlarmHistoryResponse'
  { _dahrrsNextToken ::
      !(Maybe Text),
    _dahrrsAlarmHistoryItems ::
      !( Maybe
           [AlarmHistoryItem]
       ),
    _dahrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAlarmHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dahrrsNextToken' - The token that marks the start of the next batch of returned results.
--
-- * 'dahrrsAlarmHistoryItems' - The alarm histories, in JSON format.
--
-- * 'dahrrsResponseStatus' - -- | The response status code.
describeAlarmHistoryResponse ::
  -- | 'dahrrsResponseStatus'
  Int ->
  DescribeAlarmHistoryResponse
describeAlarmHistoryResponse pResponseStatus_ =
  DescribeAlarmHistoryResponse'
    { _dahrrsNextToken =
        Nothing,
      _dahrrsAlarmHistoryItems = Nothing,
      _dahrrsResponseStatus = pResponseStatus_
    }

-- | The token that marks the start of the next batch of returned results.
dahrrsNextToken :: Lens' DescribeAlarmHistoryResponse (Maybe Text)
dahrrsNextToken = lens _dahrrsNextToken (\s a -> s {_dahrrsNextToken = a})

-- | The alarm histories, in JSON format.
dahrrsAlarmHistoryItems :: Lens' DescribeAlarmHistoryResponse [AlarmHistoryItem]
dahrrsAlarmHistoryItems = lens _dahrrsAlarmHistoryItems (\s a -> s {_dahrrsAlarmHistoryItems = a}) . _Default . _Coerce

-- | -- | The response status code.
dahrrsResponseStatus :: Lens' DescribeAlarmHistoryResponse Int
dahrrsResponseStatus = lens _dahrrsResponseStatus (\s a -> s {_dahrrsResponseStatus = a})

instance NFData DescribeAlarmHistoryResponse
