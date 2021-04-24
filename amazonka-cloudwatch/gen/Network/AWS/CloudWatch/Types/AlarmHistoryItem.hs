{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.AlarmHistoryItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.AlarmHistoryItem where

import Network.AWS.CloudWatch.Types.AlarmType
import Network.AWS.CloudWatch.Types.HistoryItemType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the history of a specific alarm.
--
--
--
-- /See:/ 'alarmHistoryItem' smart constructor.
data AlarmHistoryItem = AlarmHistoryItem'
  { _ahiHistorySummary ::
      !(Maybe Text),
    _ahiHistoryItemType ::
      !(Maybe HistoryItemType),
    _ahiAlarmName :: !(Maybe Text),
    _ahiTimestamp :: !(Maybe ISO8601),
    _ahiAlarmType :: !(Maybe AlarmType),
    _ahiHistoryData :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AlarmHistoryItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ahiHistorySummary' - A summary of the alarm history, in text format.
--
-- * 'ahiHistoryItemType' - The type of alarm history item.
--
-- * 'ahiAlarmName' - The descriptive name for the alarm.
--
-- * 'ahiTimestamp' - The time stamp for the alarm history item.
--
-- * 'ahiAlarmType' - The type of alarm, either metric alarm or composite alarm.
--
-- * 'ahiHistoryData' - Data about the alarm, in JSON format.
alarmHistoryItem ::
  AlarmHistoryItem
alarmHistoryItem =
  AlarmHistoryItem'
    { _ahiHistorySummary = Nothing,
      _ahiHistoryItemType = Nothing,
      _ahiAlarmName = Nothing,
      _ahiTimestamp = Nothing,
      _ahiAlarmType = Nothing,
      _ahiHistoryData = Nothing
    }

-- | A summary of the alarm history, in text format.
ahiHistorySummary :: Lens' AlarmHistoryItem (Maybe Text)
ahiHistorySummary = lens _ahiHistorySummary (\s a -> s {_ahiHistorySummary = a})

-- | The type of alarm history item.
ahiHistoryItemType :: Lens' AlarmHistoryItem (Maybe HistoryItemType)
ahiHistoryItemType = lens _ahiHistoryItemType (\s a -> s {_ahiHistoryItemType = a})

-- | The descriptive name for the alarm.
ahiAlarmName :: Lens' AlarmHistoryItem (Maybe Text)
ahiAlarmName = lens _ahiAlarmName (\s a -> s {_ahiAlarmName = a})

-- | The time stamp for the alarm history item.
ahiTimestamp :: Lens' AlarmHistoryItem (Maybe UTCTime)
ahiTimestamp = lens _ahiTimestamp (\s a -> s {_ahiTimestamp = a}) . mapping _Time

-- | The type of alarm, either metric alarm or composite alarm.
ahiAlarmType :: Lens' AlarmHistoryItem (Maybe AlarmType)
ahiAlarmType = lens _ahiAlarmType (\s a -> s {_ahiAlarmType = a})

-- | Data about the alarm, in JSON format.
ahiHistoryData :: Lens' AlarmHistoryItem (Maybe Text)
ahiHistoryData = lens _ahiHistoryData (\s a -> s {_ahiHistoryData = a})

instance FromXML AlarmHistoryItem where
  parseXML x =
    AlarmHistoryItem'
      <$> (x .@? "HistorySummary")
      <*> (x .@? "HistoryItemType")
      <*> (x .@? "AlarmName")
      <*> (x .@? "Timestamp")
      <*> (x .@? "AlarmType")
      <*> (x .@? "HistoryData")

instance Hashable AlarmHistoryItem

instance NFData AlarmHistoryItem
