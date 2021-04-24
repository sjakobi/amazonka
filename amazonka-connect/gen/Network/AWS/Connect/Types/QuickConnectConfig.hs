{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QuickConnectConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QuickConnectConfig where

import Network.AWS.Connect.Types.PhoneNumberQuickConnectConfig
import Network.AWS.Connect.Types.QueueQuickConnectConfig
import Network.AWS.Connect.Types.QuickConnectType
import Network.AWS.Connect.Types.UserQuickConnectConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains configuration settings for a quick connect.
--
--
--
-- /See:/ 'quickConnectConfig' smart constructor.
data QuickConnectConfig = QuickConnectConfig'
  { _qccUserConfig ::
      !(Maybe UserQuickConnectConfig),
    _qccPhoneConfig ::
      !( Maybe
           PhoneNumberQuickConnectConfig
       ),
    _qccQueueConfig ::
      !(Maybe QueueQuickConnectConfig),
    _qccQuickConnectType ::
      !QuickConnectType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QuickConnectConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qccUserConfig' - The user configuration. This is required only if QuickConnectType is USER.
--
-- * 'qccPhoneConfig' - The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.
--
-- * 'qccQueueConfig' - The queue configuration. This is required only if QuickConnectType is QUEUE.
--
-- * 'qccQuickConnectType' - The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
quickConnectConfig ::
  -- | 'qccQuickConnectType'
  QuickConnectType ->
  QuickConnectConfig
quickConnectConfig pQuickConnectType_ =
  QuickConnectConfig'
    { _qccUserConfig = Nothing,
      _qccPhoneConfig = Nothing,
      _qccQueueConfig = Nothing,
      _qccQuickConnectType = pQuickConnectType_
    }

-- | The user configuration. This is required only if QuickConnectType is USER.
qccUserConfig :: Lens' QuickConnectConfig (Maybe UserQuickConnectConfig)
qccUserConfig = lens _qccUserConfig (\s a -> s {_qccUserConfig = a})

-- | The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.
qccPhoneConfig :: Lens' QuickConnectConfig (Maybe PhoneNumberQuickConnectConfig)
qccPhoneConfig = lens _qccPhoneConfig (\s a -> s {_qccPhoneConfig = a})

-- | The queue configuration. This is required only if QuickConnectType is QUEUE.
qccQueueConfig :: Lens' QuickConnectConfig (Maybe QueueQuickConnectConfig)
qccQueueConfig = lens _qccQueueConfig (\s a -> s {_qccQueueConfig = a})

-- | The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
qccQuickConnectType :: Lens' QuickConnectConfig QuickConnectType
qccQuickConnectType = lens _qccQuickConnectType (\s a -> s {_qccQuickConnectType = a})

instance FromJSON QuickConnectConfig where
  parseJSON =
    withObject
      "QuickConnectConfig"
      ( \x ->
          QuickConnectConfig'
            <$> (x .:? "UserConfig")
            <*> (x .:? "PhoneConfig")
            <*> (x .:? "QueueConfig")
            <*> (x .: "QuickConnectType")
      )

instance Hashable QuickConnectConfig

instance NFData QuickConnectConfig

instance ToJSON QuickConnectConfig where
  toJSON QuickConnectConfig' {..} =
    object
      ( catMaybes
          [ ("UserConfig" .=) <$> _qccUserConfig,
            ("PhoneConfig" .=) <$> _qccPhoneConfig,
            ("QueueConfig" .=) <$> _qccQueueConfig,
            Just ("QuickConnectType" .= _qccQuickConnectType)
          ]
      )
