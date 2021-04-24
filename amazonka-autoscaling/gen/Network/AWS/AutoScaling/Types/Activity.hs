{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.Activity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.Activity where

import Network.AWS.AutoScaling.Types.ScalingActivityStatusCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.
--
--
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity'
  { _aStatusMessage ::
      !(Maybe Text),
    _aAutoScalingGroupARN :: !(Maybe Text),
    _aDetails :: !(Maybe Text),
    _aEndTime :: !(Maybe ISO8601),
    _aAutoScalingGroupState :: !(Maybe Text),
    _aDescription :: !(Maybe Text),
    _aProgress :: !(Maybe Int),
    _aActivityId :: !Text,
    _aAutoScalingGroupName :: !Text,
    _aCause :: !Text,
    _aStartTime :: !ISO8601,
    _aStatusCode :: !ScalingActivityStatusCode
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aStatusMessage' - A friendly, more verbose description of the activity status.
--
-- * 'aAutoScalingGroupARN' - The Amazon Resource Name (ARN) of the Auto Scaling group.
--
-- * 'aDetails' - The details about the activity.
--
-- * 'aEndTime' - The end time of the activity.
--
-- * 'aAutoScalingGroupState' - The state of the Auto Scaling group, which is either @InService@ or @Deleted@ .
--
-- * 'aDescription' - A friendly, more verbose description of the activity.
--
-- * 'aProgress' - A value between 0 and 100 that indicates the progress of the activity.
--
-- * 'aActivityId' - The ID of the activity.
--
-- * 'aAutoScalingGroupName' - The name of the Auto Scaling group.
--
-- * 'aCause' - The reason the activity began.
--
-- * 'aStartTime' - The start time of the activity.
--
-- * 'aStatusCode' - The current status of the activity.
activity ::
  -- | 'aActivityId'
  Text ->
  -- | 'aAutoScalingGroupName'
  Text ->
  -- | 'aCause'
  Text ->
  -- | 'aStartTime'
  UTCTime ->
  -- | 'aStatusCode'
  ScalingActivityStatusCode ->
  Activity
activity
  pActivityId_
  pAutoScalingGroupName_
  pCause_
  pStartTime_
  pStatusCode_ =
    Activity'
      { _aStatusMessage = Nothing,
        _aAutoScalingGroupARN = Nothing,
        _aDetails = Nothing,
        _aEndTime = Nothing,
        _aAutoScalingGroupState = Nothing,
        _aDescription = Nothing,
        _aProgress = Nothing,
        _aActivityId = pActivityId_,
        _aAutoScalingGroupName = pAutoScalingGroupName_,
        _aCause = pCause_,
        _aStartTime = _Time # pStartTime_,
        _aStatusCode = pStatusCode_
      }

-- | A friendly, more verbose description of the activity status.
aStatusMessage :: Lens' Activity (Maybe Text)
aStatusMessage = lens _aStatusMessage (\s a -> s {_aStatusMessage = a})

-- | The Amazon Resource Name (ARN) of the Auto Scaling group.
aAutoScalingGroupARN :: Lens' Activity (Maybe Text)
aAutoScalingGroupARN = lens _aAutoScalingGroupARN (\s a -> s {_aAutoScalingGroupARN = a})

-- | The details about the activity.
aDetails :: Lens' Activity (Maybe Text)
aDetails = lens _aDetails (\s a -> s {_aDetails = a})

-- | The end time of the activity.
aEndTime :: Lens' Activity (Maybe UTCTime)
aEndTime = lens _aEndTime (\s a -> s {_aEndTime = a}) . mapping _Time

-- | The state of the Auto Scaling group, which is either @InService@ or @Deleted@ .
aAutoScalingGroupState :: Lens' Activity (Maybe Text)
aAutoScalingGroupState = lens _aAutoScalingGroupState (\s a -> s {_aAutoScalingGroupState = a})

-- | A friendly, more verbose description of the activity.
aDescription :: Lens' Activity (Maybe Text)
aDescription = lens _aDescription (\s a -> s {_aDescription = a})

-- | A value between 0 and 100 that indicates the progress of the activity.
aProgress :: Lens' Activity (Maybe Int)
aProgress = lens _aProgress (\s a -> s {_aProgress = a})

-- | The ID of the activity.
aActivityId :: Lens' Activity Text
aActivityId = lens _aActivityId (\s a -> s {_aActivityId = a})

-- | The name of the Auto Scaling group.
aAutoScalingGroupName :: Lens' Activity Text
aAutoScalingGroupName = lens _aAutoScalingGroupName (\s a -> s {_aAutoScalingGroupName = a})

-- | The reason the activity began.
aCause :: Lens' Activity Text
aCause = lens _aCause (\s a -> s {_aCause = a})

-- | The start time of the activity.
aStartTime :: Lens' Activity UTCTime
aStartTime = lens _aStartTime (\s a -> s {_aStartTime = a}) . _Time

-- | The current status of the activity.
aStatusCode :: Lens' Activity ScalingActivityStatusCode
aStatusCode = lens _aStatusCode (\s a -> s {_aStatusCode = a})

instance FromXML Activity where
  parseXML x =
    Activity'
      <$> (x .@? "StatusMessage")
      <*> (x .@? "AutoScalingGroupARN")
      <*> (x .@? "Details")
      <*> (x .@? "EndTime")
      <*> (x .@? "AutoScalingGroupState")
      <*> (x .@? "Description")
      <*> (x .@? "Progress")
      <*> (x .@ "ActivityId")
      <*> (x .@ "AutoScalingGroupName")
      <*> (x .@ "Cause")
      <*> (x .@ "StartTime")
      <*> (x .@ "StatusCode")

instance Hashable Activity

instance NFData Activity
