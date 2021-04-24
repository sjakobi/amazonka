{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.NotificationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.NotificationConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a notification.
--
--
--
-- /See:/ 'notificationConfiguration' smart constructor.
data NotificationConfiguration = NotificationConfiguration'
  { _ncNotificationType ::
      !(Maybe Text),
    _ncTopicARN ::
      !(Maybe Text),
    _ncAutoScalingGroupName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NotificationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncNotificationType' - One of the following event notification types:     * @autoscaling:EC2_INSTANCE_LAUNCH@      * @autoscaling:EC2_INSTANCE_LAUNCH_ERROR@      * @autoscaling:EC2_INSTANCE_TERMINATE@      * @autoscaling:EC2_INSTANCE_TERMINATE_ERROR@      * @autoscaling:TEST_NOTIFICATION@
--
-- * 'ncTopicARN' - The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.
--
-- * 'ncAutoScalingGroupName' - The name of the Auto Scaling group.
notificationConfiguration ::
  NotificationConfiguration
notificationConfiguration =
  NotificationConfiguration'
    { _ncNotificationType =
        Nothing,
      _ncTopicARN = Nothing,
      _ncAutoScalingGroupName = Nothing
    }

-- | One of the following event notification types:     * @autoscaling:EC2_INSTANCE_LAUNCH@      * @autoscaling:EC2_INSTANCE_LAUNCH_ERROR@      * @autoscaling:EC2_INSTANCE_TERMINATE@      * @autoscaling:EC2_INSTANCE_TERMINATE_ERROR@      * @autoscaling:TEST_NOTIFICATION@
ncNotificationType :: Lens' NotificationConfiguration (Maybe Text)
ncNotificationType = lens _ncNotificationType (\s a -> s {_ncNotificationType = a})

-- | The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (Amazon SNS) topic.
ncTopicARN :: Lens' NotificationConfiguration (Maybe Text)
ncTopicARN = lens _ncTopicARN (\s a -> s {_ncTopicARN = a})

-- | The name of the Auto Scaling group.
ncAutoScalingGroupName :: Lens' NotificationConfiguration (Maybe Text)
ncAutoScalingGroupName = lens _ncAutoScalingGroupName (\s a -> s {_ncAutoScalingGroupName = a})

instance FromXML NotificationConfiguration where
  parseXML x =
    NotificationConfiguration'
      <$> (x .@? "NotificationType")
      <*> (x .@? "TopicARN")
      <*> (x .@? "AutoScalingGroupName")

instance Hashable NotificationConfiguration

instance NFData NotificationConfiguration
