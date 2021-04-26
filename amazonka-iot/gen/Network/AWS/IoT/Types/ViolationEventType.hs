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
-- Module      : Network.AWS.IoT.Types.ViolationEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ViolationEventType
  ( ViolationEventType
      ( ..,
        ViolationEventTypeAlarmCleared,
        ViolationEventTypeAlarmInvalidated,
        ViolationEventTypeInAlarm
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ViolationEventType = ViolationEventType'
  { fromViolationEventType ::
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

pattern ViolationEventTypeAlarmCleared :: ViolationEventType
pattern ViolationEventTypeAlarmCleared = ViolationEventType' "alarm-cleared"

pattern ViolationEventTypeAlarmInvalidated :: ViolationEventType
pattern ViolationEventTypeAlarmInvalidated = ViolationEventType' "alarm-invalidated"

pattern ViolationEventTypeInAlarm :: ViolationEventType
pattern ViolationEventTypeInAlarm = ViolationEventType' "in-alarm"

{-# COMPLETE
  ViolationEventTypeAlarmCleared,
  ViolationEventTypeAlarmInvalidated,
  ViolationEventTypeInAlarm,
  ViolationEventType'
  #-}

instance Prelude.FromText ViolationEventType where
  parser = ViolationEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ViolationEventType where
  toText (ViolationEventType' x) = x

instance Prelude.Hashable ViolationEventType

instance Prelude.NFData ViolationEventType

instance Prelude.ToByteString ViolationEventType

instance Prelude.ToQuery ViolationEventType

instance Prelude.ToHeader ViolationEventType

instance Prelude.FromJSON ViolationEventType where
  parseJSON = Prelude.parseJSONText "ViolationEventType"
