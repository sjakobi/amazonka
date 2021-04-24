{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TopicRuleDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRuleDestination where

import Network.AWS.IoT.Types.HTTPURLDestinationProperties
import Network.AWS.IoT.Types.TopicRuleDestinationStatus
import Network.AWS.IoT.Types.VPCDestinationProperties
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A topic rule destination.
--
--
--
-- /See:/ 'topicRuleDestination' smart constructor.
data TopicRuleDestination = TopicRuleDestination'
  { _trdStatus ::
      !( Maybe
           TopicRuleDestinationStatus
       ),
    _trdCreatedAt ::
      !(Maybe POSIX),
    _trdArn :: !(Maybe Text),
    _trdVpcProperties ::
      !( Maybe
           VPCDestinationProperties
       ),
    _trdStatusReason ::
      !(Maybe Text),
    _trdHttpURLProperties ::
      !( Maybe
           HTTPURLDestinationProperties
       ),
    _trdLastUpdatedAt ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TopicRuleDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trdStatus' - The status of the topic rule destination. Valid values are:     * IN_PROGRESS    * A topic rule destination was created but has not been confirmed. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.     * ENABLED    * Confirmation was completed, and traffic to this destination is allowed. You can set @status@ to @DISABLED@ by calling @UpdateTopicRuleDestination@ .     * DISABLED    * Confirmation was completed, and traffic to this destination is not allowed. You can set @status@ to @ENABLED@ by calling @UpdateTopicRuleDestination@ .     * ERROR    * Confirmation could not be completed, for example if the confirmation timed out. You can call @GetTopicRuleDestination@ for details about the error. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.
--
-- * 'trdCreatedAt' - The date and time when the topic rule destination was created.
--
-- * 'trdArn' - The topic rule destination URL.
--
-- * 'trdVpcProperties' - Properties of the virtual private cloud (VPC) connection.
--
-- * 'trdStatusReason' - Additional details or reason why the topic rule destination is in the current status.
--
-- * 'trdHttpURLProperties' - Properties of the HTTP URL.
--
-- * 'trdLastUpdatedAt' - The date and time when the topic rule destination was last updated.
topicRuleDestination ::
  TopicRuleDestination
topicRuleDestination =
  TopicRuleDestination'
    { _trdStatus = Nothing,
      _trdCreatedAt = Nothing,
      _trdArn = Nothing,
      _trdVpcProperties = Nothing,
      _trdStatusReason = Nothing,
      _trdHttpURLProperties = Nothing,
      _trdLastUpdatedAt = Nothing
    }

-- | The status of the topic rule destination. Valid values are:     * IN_PROGRESS    * A topic rule destination was created but has not been confirmed. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.     * ENABLED    * Confirmation was completed, and traffic to this destination is allowed. You can set @status@ to @DISABLED@ by calling @UpdateTopicRuleDestination@ .     * DISABLED    * Confirmation was completed, and traffic to this destination is not allowed. You can set @status@ to @ENABLED@ by calling @UpdateTopicRuleDestination@ .     * ERROR    * Confirmation could not be completed, for example if the confirmation timed out. You can call @GetTopicRuleDestination@ for details about the error. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.
trdStatus :: Lens' TopicRuleDestination (Maybe TopicRuleDestinationStatus)
trdStatus = lens _trdStatus (\s a -> s {_trdStatus = a})

-- | The date and time when the topic rule destination was created.
trdCreatedAt :: Lens' TopicRuleDestination (Maybe UTCTime)
trdCreatedAt = lens _trdCreatedAt (\s a -> s {_trdCreatedAt = a}) . mapping _Time

-- | The topic rule destination URL.
trdArn :: Lens' TopicRuleDestination (Maybe Text)
trdArn = lens _trdArn (\s a -> s {_trdArn = a})

-- | Properties of the virtual private cloud (VPC) connection.
trdVpcProperties :: Lens' TopicRuleDestination (Maybe VPCDestinationProperties)
trdVpcProperties = lens _trdVpcProperties (\s a -> s {_trdVpcProperties = a})

-- | Additional details or reason why the topic rule destination is in the current status.
trdStatusReason :: Lens' TopicRuleDestination (Maybe Text)
trdStatusReason = lens _trdStatusReason (\s a -> s {_trdStatusReason = a})

-- | Properties of the HTTP URL.
trdHttpURLProperties :: Lens' TopicRuleDestination (Maybe HTTPURLDestinationProperties)
trdHttpURLProperties = lens _trdHttpURLProperties (\s a -> s {_trdHttpURLProperties = a})

-- | The date and time when the topic rule destination was last updated.
trdLastUpdatedAt :: Lens' TopicRuleDestination (Maybe UTCTime)
trdLastUpdatedAt = lens _trdLastUpdatedAt (\s a -> s {_trdLastUpdatedAt = a}) . mapping _Time

instance FromJSON TopicRuleDestination where
  parseJSON =
    withObject
      "TopicRuleDestination"
      ( \x ->
          TopicRuleDestination'
            <$> (x .:? "status")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "vpcProperties")
            <*> (x .:? "statusReason")
            <*> (x .:? "httpUrlProperties")
            <*> (x .:? "lastUpdatedAt")
      )

instance Hashable TopicRuleDestination

instance NFData TopicRuleDestination
