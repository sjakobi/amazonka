{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        MessageTypeConfigurationItemChangeNotification,
        MessageTypeConfigurationSnapshotDeliveryCompleted,
        MessageTypeOversizedConfigurationItemChangeNotification,
        MessageTypeScheduledNotification
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageType = MessageType'
  { fromMessageType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern MessageTypeConfigurationItemChangeNotification :: MessageType
pattern MessageTypeConfigurationItemChangeNotification = MessageType' "ConfigurationItemChangeNotification"

pattern MessageTypeConfigurationSnapshotDeliveryCompleted :: MessageType
pattern MessageTypeConfigurationSnapshotDeliveryCompleted = MessageType' "ConfigurationSnapshotDeliveryCompleted"

pattern MessageTypeOversizedConfigurationItemChangeNotification :: MessageType
pattern MessageTypeOversizedConfigurationItemChangeNotification = MessageType' "OversizedConfigurationItemChangeNotification"

pattern MessageTypeScheduledNotification :: MessageType
pattern MessageTypeScheduledNotification = MessageType' "ScheduledNotification"

{-# COMPLETE
  MessageTypeConfigurationItemChangeNotification,
  MessageTypeConfigurationSnapshotDeliveryCompleted,
  MessageTypeOversizedConfigurationItemChangeNotification,
  MessageTypeScheduledNotification,
  MessageType'
  #-}

instance Prelude.FromText MessageType where
  parser = MessageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageType where
  toText (MessageType' x) = x

instance Prelude.Hashable MessageType

instance Prelude.NFData MessageType

instance Prelude.ToByteString MessageType

instance Prelude.ToQuery MessageType

instance Prelude.ToHeader MessageType

instance Prelude.ToJSON MessageType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MessageType where
  parseJSON = Prelude.parseJSONText "MessageType"
