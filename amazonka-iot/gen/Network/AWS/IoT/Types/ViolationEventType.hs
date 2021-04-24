{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AlarmCleared,
        AlarmInvalidated,
        InAlarm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ViolationEventType
  = ViolationEventType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlarmCleared :: ViolationEventType
pattern AlarmCleared = ViolationEventType' "alarm-cleared"

pattern AlarmInvalidated :: ViolationEventType
pattern AlarmInvalidated = ViolationEventType' "alarm-invalidated"

pattern InAlarm :: ViolationEventType
pattern InAlarm = ViolationEventType' "in-alarm"

{-# COMPLETE
  AlarmCleared,
  AlarmInvalidated,
  InAlarm,
  ViolationEventType'
  #-}

instance FromText ViolationEventType where
  parser = (ViolationEventType' . mk) <$> takeText

instance ToText ViolationEventType where
  toText (ViolationEventType' ci) = original ci

instance Hashable ViolationEventType

instance NFData ViolationEventType

instance ToByteString ViolationEventType

instance ToQuery ViolationEventType

instance ToHeader ViolationEventType

instance FromJSON ViolationEventType where
  parseJSON = parseJSONText "ViolationEventType"
