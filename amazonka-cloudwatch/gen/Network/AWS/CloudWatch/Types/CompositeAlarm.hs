{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.CompositeAlarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.CompositeAlarm where

import Network.AWS.CloudWatch.Types.StateValue
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The details about a composite alarm.
--
--
--
-- /See:/ 'compositeAlarm' smart constructor.
data CompositeAlarm = CompositeAlarm'
  { _caAlarmARN ::
      !(Maybe Text),
    _caAlarmActions :: !(Maybe [Text]),
    _caStateReason :: !(Maybe Text),
    _caStateReasonData :: !(Maybe Text),
    _caInsufficientDataActions ::
      !(Maybe [Text]),
    _caAlarmRule :: !(Maybe Text),
    _caStateUpdatedTimestamp ::
      !(Maybe ISO8601),
    _caStateValue :: !(Maybe StateValue),
    _caAlarmName :: !(Maybe Text),
    _caOKActions :: !(Maybe [Text]),
    _caActionsEnabled :: !(Maybe Bool),
    _caAlarmConfigurationUpdatedTimestamp ::
      !(Maybe ISO8601),
    _caAlarmDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CompositeAlarm' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caAlarmARN' - The Amazon Resource Name (ARN) of the alarm.
--
-- * 'caAlarmActions' - The actions to execute when this alarm transitions to the ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
--
-- * 'caStateReason' - An explanation for the alarm state, in text format.
--
-- * 'caStateReasonData' - An explanation for the alarm state, in JSON format.
--
-- * 'caInsufficientDataActions' - The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
--
-- * 'caAlarmRule' - The rule that this alarm uses to evaluate its alarm state.
--
-- * 'caStateUpdatedTimestamp' - The time stamp of the last update to the alarm state.
--
-- * 'caStateValue' - The state value for the alarm.
--
-- * 'caAlarmName' - The name of the alarm.
--
-- * 'caOKActions' - The actions to execute when this alarm transitions to the OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
--
-- * 'caActionsEnabled' - Indicates whether actions should be executed during any changes to the alarm state.
--
-- * 'caAlarmConfigurationUpdatedTimestamp' - The time stamp of the last update to the alarm configuration.
--
-- * 'caAlarmDescription' - The description of the alarm.
compositeAlarm ::
  CompositeAlarm
compositeAlarm =
  CompositeAlarm'
    { _caAlarmARN = Nothing,
      _caAlarmActions = Nothing,
      _caStateReason = Nothing,
      _caStateReasonData = Nothing,
      _caInsufficientDataActions = Nothing,
      _caAlarmRule = Nothing,
      _caStateUpdatedTimestamp = Nothing,
      _caStateValue = Nothing,
      _caAlarmName = Nothing,
      _caOKActions = Nothing,
      _caActionsEnabled = Nothing,
      _caAlarmConfigurationUpdatedTimestamp = Nothing,
      _caAlarmDescription = Nothing
    }

-- | The Amazon Resource Name (ARN) of the alarm.
caAlarmARN :: Lens' CompositeAlarm (Maybe Text)
caAlarmARN = lens _caAlarmARN (\s a -> s {_caAlarmARN = a})

-- | The actions to execute when this alarm transitions to the ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
caAlarmActions :: Lens' CompositeAlarm [Text]
caAlarmActions = lens _caAlarmActions (\s a -> s {_caAlarmActions = a}) . _Default . _Coerce

-- | An explanation for the alarm state, in text format.
caStateReason :: Lens' CompositeAlarm (Maybe Text)
caStateReason = lens _caStateReason (\s a -> s {_caStateReason = a})

-- | An explanation for the alarm state, in JSON format.
caStateReasonData :: Lens' CompositeAlarm (Maybe Text)
caStateReasonData = lens _caStateReasonData (\s a -> s {_caStateReasonData = a})

-- | The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
caInsufficientDataActions :: Lens' CompositeAlarm [Text]
caInsufficientDataActions = lens _caInsufficientDataActions (\s a -> s {_caInsufficientDataActions = a}) . _Default . _Coerce

-- | The rule that this alarm uses to evaluate its alarm state.
caAlarmRule :: Lens' CompositeAlarm (Maybe Text)
caAlarmRule = lens _caAlarmRule (\s a -> s {_caAlarmRule = a})

-- | The time stamp of the last update to the alarm state.
caStateUpdatedTimestamp :: Lens' CompositeAlarm (Maybe UTCTime)
caStateUpdatedTimestamp = lens _caStateUpdatedTimestamp (\s a -> s {_caStateUpdatedTimestamp = a}) . mapping _Time

-- | The state value for the alarm.
caStateValue :: Lens' CompositeAlarm (Maybe StateValue)
caStateValue = lens _caStateValue (\s a -> s {_caStateValue = a})

-- | The name of the alarm.
caAlarmName :: Lens' CompositeAlarm (Maybe Text)
caAlarmName = lens _caAlarmName (\s a -> s {_caAlarmName = a})

-- | The actions to execute when this alarm transitions to the OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
caOKActions :: Lens' CompositeAlarm [Text]
caOKActions = lens _caOKActions (\s a -> s {_caOKActions = a}) . _Default . _Coerce

-- | Indicates whether actions should be executed during any changes to the alarm state.
caActionsEnabled :: Lens' CompositeAlarm (Maybe Bool)
caActionsEnabled = lens _caActionsEnabled (\s a -> s {_caActionsEnabled = a})

-- | The time stamp of the last update to the alarm configuration.
caAlarmConfigurationUpdatedTimestamp :: Lens' CompositeAlarm (Maybe UTCTime)
caAlarmConfigurationUpdatedTimestamp = lens _caAlarmConfigurationUpdatedTimestamp (\s a -> s {_caAlarmConfigurationUpdatedTimestamp = a}) . mapping _Time

-- | The description of the alarm.
caAlarmDescription :: Lens' CompositeAlarm (Maybe Text)
caAlarmDescription = lens _caAlarmDescription (\s a -> s {_caAlarmDescription = a})

instance FromXML CompositeAlarm where
  parseXML x =
    CompositeAlarm'
      <$> (x .@? "AlarmArn")
      <*> ( x .@? "AlarmActions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "StateReason")
      <*> (x .@? "StateReasonData")
      <*> ( x .@? "InsufficientDataActions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "AlarmRule")
      <*> (x .@? "StateUpdatedTimestamp")
      <*> (x .@? "StateValue")
      <*> (x .@? "AlarmName")
      <*> ( x .@? "OKActions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "ActionsEnabled")
      <*> (x .@? "AlarmConfigurationUpdatedTimestamp")
      <*> (x .@? "AlarmDescription")

instance Hashable CompositeAlarm

instance NFData CompositeAlarm
