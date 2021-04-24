{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.MessageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.MessageType
  ( MessageType
      ( ..,
        MTConfigurationItemChangeNotification,
        MTConfigurationSnapshotDeliveryCompleted,
        MTOversizedConfigurationItemChangeNotification,
        MTScheduledNotification
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageType = MessageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MTConfigurationItemChangeNotification :: MessageType
pattern MTConfigurationItemChangeNotification = MessageType' "ConfigurationItemChangeNotification"

pattern MTConfigurationSnapshotDeliveryCompleted :: MessageType
pattern MTConfigurationSnapshotDeliveryCompleted = MessageType' "ConfigurationSnapshotDeliveryCompleted"

pattern MTOversizedConfigurationItemChangeNotification :: MessageType
pattern MTOversizedConfigurationItemChangeNotification = MessageType' "OversizedConfigurationItemChangeNotification"

pattern MTScheduledNotification :: MessageType
pattern MTScheduledNotification = MessageType' "ScheduledNotification"

{-# COMPLETE
  MTConfigurationItemChangeNotification,
  MTConfigurationSnapshotDeliveryCompleted,
  MTOversizedConfigurationItemChangeNotification,
  MTScheduledNotification,
  MessageType'
  #-}

instance FromText MessageType where
  parser = (MessageType' . mk) <$> takeText

instance ToText MessageType where
  toText (MessageType' ci) = original ci

instance Hashable MessageType

instance NFData MessageType

instance ToByteString MessageType

instance ToQuery MessageType

instance ToHeader MessageType

instance ToJSON MessageType where
  toJSON = toJSONText

instance FromJSON MessageType where
  parseJSON = parseJSONText "MessageType"
