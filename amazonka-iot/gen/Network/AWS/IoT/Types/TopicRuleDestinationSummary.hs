{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.TopicRuleDestinationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRuleDestinationSummary where

import Network.AWS.IoT.Types.HTTPURLDestinationSummary
import Network.AWS.IoT.Types.TopicRuleDestinationStatus
import Network.AWS.IoT.Types.VPCDestinationSummary
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the topic rule destination.
--
--
--
-- /See:/ 'topicRuleDestinationSummary' smart constructor.
data TopicRuleDestinationSummary = TopicRuleDestinationSummary'
  { _trdsHttpURLSummary ::
      !( Maybe
           HTTPURLDestinationSummary
       ),
    _trdsStatus ::
      !( Maybe
           TopicRuleDestinationStatus
       ),
    _trdsCreatedAt ::
      !(Maybe POSIX),
    _trdsArn ::
      !(Maybe Text),
    _trdsStatusReason ::
      !(Maybe Text),
    _trdsVpcDestinationSummary ::
      !( Maybe
           VPCDestinationSummary
       ),
    _trdsLastUpdatedAt ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TopicRuleDestinationSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trdsHttpURLSummary' - Information about the HTTP URL.
--
-- * 'trdsStatus' - The status of the topic rule destination. Valid values are:     * IN_PROGRESS    * A topic rule destination was created but has not been confirmed. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.     * ENABLED    * Confirmation was completed, and traffic to this destination is allowed. You can set @status@ to @DISABLED@ by calling @UpdateTopicRuleDestination@ .     * DISABLED    * Confirmation was completed, and traffic to this destination is not allowed. You can set @status@ to @ENABLED@ by calling @UpdateTopicRuleDestination@ .     * ERROR    * Confirmation could not be completed, for example if the confirmation timed out. You can call @GetTopicRuleDestination@ for details about the error. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.
--
-- * 'trdsCreatedAt' - The date and time when the topic rule destination was created.
--
-- * 'trdsArn' - The topic rule destination ARN.
--
-- * 'trdsStatusReason' - The reason the topic rule destination is in the current status.
--
-- * 'trdsVpcDestinationSummary' - Information about the virtual private cloud (VPC) connection.
--
-- * 'trdsLastUpdatedAt' - The date and time when the topic rule destination was last updated.
topicRuleDestinationSummary ::
  TopicRuleDestinationSummary
topicRuleDestinationSummary =
  TopicRuleDestinationSummary'
    { _trdsHttpURLSummary =
        Nothing,
      _trdsStatus = Nothing,
      _trdsCreatedAt = Nothing,
      _trdsArn = Nothing,
      _trdsStatusReason = Nothing,
      _trdsVpcDestinationSummary = Nothing,
      _trdsLastUpdatedAt = Nothing
    }

-- | Information about the HTTP URL.
trdsHttpURLSummary :: Lens' TopicRuleDestinationSummary (Maybe HTTPURLDestinationSummary)
trdsHttpURLSummary = lens _trdsHttpURLSummary (\s a -> s {_trdsHttpURLSummary = a})

-- | The status of the topic rule destination. Valid values are:     * IN_PROGRESS    * A topic rule destination was created but has not been confirmed. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.     * ENABLED    * Confirmation was completed, and traffic to this destination is allowed. You can set @status@ to @DISABLED@ by calling @UpdateTopicRuleDestination@ .     * DISABLED    * Confirmation was completed, and traffic to this destination is not allowed. You can set @status@ to @ENABLED@ by calling @UpdateTopicRuleDestination@ .     * ERROR    * Confirmation could not be completed, for example if the confirmation timed out. You can call @GetTopicRuleDestination@ for details about the error. You can set @status@ to @IN_PROGRESS@ by calling @UpdateTopicRuleDestination@ . Calling @UpdateTopicRuleDestination@ causes a new confirmation challenge to be sent to your confirmation endpoint.
trdsStatus :: Lens' TopicRuleDestinationSummary (Maybe TopicRuleDestinationStatus)
trdsStatus = lens _trdsStatus (\s a -> s {_trdsStatus = a})

-- | The date and time when the topic rule destination was created.
trdsCreatedAt :: Lens' TopicRuleDestinationSummary (Maybe UTCTime)
trdsCreatedAt = lens _trdsCreatedAt (\s a -> s {_trdsCreatedAt = a}) . mapping _Time

-- | The topic rule destination ARN.
trdsArn :: Lens' TopicRuleDestinationSummary (Maybe Text)
trdsArn = lens _trdsArn (\s a -> s {_trdsArn = a})

-- | The reason the topic rule destination is in the current status.
trdsStatusReason :: Lens' TopicRuleDestinationSummary (Maybe Text)
trdsStatusReason = lens _trdsStatusReason (\s a -> s {_trdsStatusReason = a})

-- | Information about the virtual private cloud (VPC) connection.
trdsVpcDestinationSummary :: Lens' TopicRuleDestinationSummary (Maybe VPCDestinationSummary)
trdsVpcDestinationSummary = lens _trdsVpcDestinationSummary (\s a -> s {_trdsVpcDestinationSummary = a})

-- | The date and time when the topic rule destination was last updated.
trdsLastUpdatedAt :: Lens' TopicRuleDestinationSummary (Maybe UTCTime)
trdsLastUpdatedAt = lens _trdsLastUpdatedAt (\s a -> s {_trdsLastUpdatedAt = a}) . mapping _Time

instance FromJSON TopicRuleDestinationSummary where
  parseJSON =
    withObject
      "TopicRuleDestinationSummary"
      ( \x ->
          TopicRuleDestinationSummary'
            <$> (x .:? "httpUrlSummary")
            <*> (x .:? "status")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "statusReason")
            <*> (x .:? "vpcDestinationSummary")
            <*> (x .:? "lastUpdatedAt")
      )

instance Hashable TopicRuleDestinationSummary

instance NFData TopicRuleDestinationSummary
