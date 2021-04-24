{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SNS.Types.Subscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SNS.Types.Subscription where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A wrapper type for the attributes of an Amazon SNS subscription.
--
--
--
-- /See:/ 'subscription' smart constructor.
data Subscription = Subscription'
  { _sTopicARN ::
      !(Maybe Text),
    _sOwner :: !(Maybe Text),
    _sSubscriptionARN :: !(Maybe Text),
    _sProtocol :: !(Maybe Text),
    _sEndpoint :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Subscription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTopicARN' - The ARN of the subscription's topic.
--
-- * 'sOwner' - The subscription's owner.
--
-- * 'sSubscriptionARN' - The subscription's ARN.
--
-- * 'sProtocol' - The subscription's protocol.
--
-- * 'sEndpoint' - The subscription's endpoint (format depends on the protocol).
subscription ::
  Subscription
subscription =
  Subscription'
    { _sTopicARN = Nothing,
      _sOwner = Nothing,
      _sSubscriptionARN = Nothing,
      _sProtocol = Nothing,
      _sEndpoint = Nothing
    }

-- | The ARN of the subscription's topic.
sTopicARN :: Lens' Subscription (Maybe Text)
sTopicARN = lens _sTopicARN (\s a -> s {_sTopicARN = a})

-- | The subscription's owner.
sOwner :: Lens' Subscription (Maybe Text)
sOwner = lens _sOwner (\s a -> s {_sOwner = a})

-- | The subscription's ARN.
sSubscriptionARN :: Lens' Subscription (Maybe Text)
sSubscriptionARN = lens _sSubscriptionARN (\s a -> s {_sSubscriptionARN = a})

-- | The subscription's protocol.
sProtocol :: Lens' Subscription (Maybe Text)
sProtocol = lens _sProtocol (\s a -> s {_sProtocol = a})

-- | The subscription's endpoint (format depends on the protocol).
sEndpoint :: Lens' Subscription (Maybe Text)
sEndpoint = lens _sEndpoint (\s a -> s {_sEndpoint = a})

instance FromXML Subscription where
  parseXML x =
    Subscription'
      <$> (x .@? "TopicArn")
      <*> (x .@? "Owner")
      <*> (x .@? "SubscriptionArn")
      <*> (x .@? "Protocol")
      <*> (x .@? "Endpoint")

instance Hashable Subscription

instance NFData Subscription
