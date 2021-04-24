{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.Activity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Activity where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ConditionalSplitActivity
import Network.AWS.Pinpoint.Types.CustomMessageActivity
import Network.AWS.Pinpoint.Types.EmailMessageActivity
import Network.AWS.Pinpoint.Types.HoldoutActivity
import Network.AWS.Pinpoint.Types.MultiConditionalSplitActivity
import Network.AWS.Pinpoint.Types.PushMessageActivity
import Network.AWS.Pinpoint.Types.RandomSplitActivity
import Network.AWS.Pinpoint.Types.SMSMessageActivity
import Network.AWS.Pinpoint.Types.WaitActivity
import Network.AWS.Prelude

-- | Specifies the configuration and other settings for an activity in a journey.
--
--
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity'
  { _aConditionalSplit ::
      !(Maybe ConditionalSplitActivity),
    _aPUSH :: !(Maybe PushMessageActivity),
    _aCUSTOM :: !(Maybe CustomMessageActivity),
    _aWait :: !(Maybe WaitActivity),
    _aMultiCondition ::
      !(Maybe MultiConditionalSplitActivity),
    _aEMAIL :: !(Maybe EmailMessageActivity),
    _aHoldout :: !(Maybe HoldoutActivity),
    _aRandomSplit :: !(Maybe RandomSplitActivity),
    _aDescription :: !(Maybe Text),
    _aSMS :: !(Maybe SMSMessageActivity)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aConditionalSplit' - The settings for a yes/no split activity. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.
--
-- * 'aPUSH' - The settings for a push notification activity. This type of activity sends a push notification to participants.
--
-- * 'aCUSTOM' - The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.
--
-- * 'aWait' - The settings for a wait activity. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.
--
-- * 'aMultiCondition' - The settings for a multivariate split activity. This type of activity sends participants down one of as many as five paths (including a default /Else/ path) in a journey, based on conditions that you specify.
--
-- * 'aEMAIL' - The settings for an email activity. This type of activity sends an email message to participants.
--
-- * 'aHoldout' - The settings for a holdout activity. This type of activity stops a journey for a specified percentage of participants.
--
-- * 'aRandomSplit' - The settings for a random split activity. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.
--
-- * 'aDescription' - The custom description of the activity.
--
-- * 'aSMS' - The settings for an SMS activity. This type of activity sends a text message to participants.
activity ::
  Activity
activity =
  Activity'
    { _aConditionalSplit = Nothing,
      _aPUSH = Nothing,
      _aCUSTOM = Nothing,
      _aWait = Nothing,
      _aMultiCondition = Nothing,
      _aEMAIL = Nothing,
      _aHoldout = Nothing,
      _aRandomSplit = Nothing,
      _aDescription = Nothing,
      _aSMS = Nothing
    }

-- | The settings for a yes/no split activity. This type of activity sends participants down one of two paths in a journey, based on conditions that you specify.
aConditionalSplit :: Lens' Activity (Maybe ConditionalSplitActivity)
aConditionalSplit = lens _aConditionalSplit (\s a -> s {_aConditionalSplit = a})

-- | The settings for a push notification activity. This type of activity sends a push notification to participants.
aPUSH :: Lens' Activity (Maybe PushMessageActivity)
aPUSH = lens _aPUSH (\s a -> s {_aPUSH = a})

-- | The settings for a custom message activity. This type of activity calls an AWS Lambda function or web hook that sends messages to participants.
aCUSTOM :: Lens' Activity (Maybe CustomMessageActivity)
aCUSTOM = lens _aCUSTOM (\s a -> s {_aCUSTOM = a})

-- | The settings for a wait activity. This type of activity waits for a certain amount of time or until a specific date and time before moving participants to the next activity in a journey.
aWait :: Lens' Activity (Maybe WaitActivity)
aWait = lens _aWait (\s a -> s {_aWait = a})

-- | The settings for a multivariate split activity. This type of activity sends participants down one of as many as five paths (including a default /Else/ path) in a journey, based on conditions that you specify.
aMultiCondition :: Lens' Activity (Maybe MultiConditionalSplitActivity)
aMultiCondition = lens _aMultiCondition (\s a -> s {_aMultiCondition = a})

-- | The settings for an email activity. This type of activity sends an email message to participants.
aEMAIL :: Lens' Activity (Maybe EmailMessageActivity)
aEMAIL = lens _aEMAIL (\s a -> s {_aEMAIL = a})

-- | The settings for a holdout activity. This type of activity stops a journey for a specified percentage of participants.
aHoldout :: Lens' Activity (Maybe HoldoutActivity)
aHoldout = lens _aHoldout (\s a -> s {_aHoldout = a})

-- | The settings for a random split activity. This type of activity randomly sends specified percentages of participants down one of as many as five paths in a journey, based on conditions that you specify.
aRandomSplit :: Lens' Activity (Maybe RandomSplitActivity)
aRandomSplit = lens _aRandomSplit (\s a -> s {_aRandomSplit = a})

-- | The custom description of the activity.
aDescription :: Lens' Activity (Maybe Text)
aDescription = lens _aDescription (\s a -> s {_aDescription = a})

-- | The settings for an SMS activity. This type of activity sends a text message to participants.
aSMS :: Lens' Activity (Maybe SMSMessageActivity)
aSMS = lens _aSMS (\s a -> s {_aSMS = a})

instance FromJSON Activity where
  parseJSON =
    withObject
      "Activity"
      ( \x ->
          Activity'
            <$> (x .:? "ConditionalSplit")
            <*> (x .:? "PUSH")
            <*> (x .:? "CUSTOM")
            <*> (x .:? "Wait")
            <*> (x .:? "MultiCondition")
            <*> (x .:? "EMAIL")
            <*> (x .:? "Holdout")
            <*> (x .:? "RandomSplit")
            <*> (x .:? "Description")
            <*> (x .:? "SMS")
      )

instance Hashable Activity

instance NFData Activity

instance ToJSON Activity where
  toJSON Activity' {..} =
    object
      ( catMaybes
          [ ("ConditionalSplit" .=) <$> _aConditionalSplit,
            ("PUSH" .=) <$> _aPUSH,
            ("CUSTOM" .=) <$> _aCUSTOM,
            ("Wait" .=) <$> _aWait,
            ("MultiCondition" .=) <$> _aMultiCondition,
            ("EMAIL" .=) <$> _aEMAIL,
            ("Holdout" .=) <$> _aHoldout,
            ("RandomSplit" .=) <$> _aRandomSplit,
            ("Description" .=) <$> _aDescription,
            ("SMS" .=) <$> _aSMS
          ]
      )
