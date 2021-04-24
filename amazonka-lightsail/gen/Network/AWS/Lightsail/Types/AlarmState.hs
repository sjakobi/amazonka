{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.AlarmState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.AlarmState
  ( AlarmState
      ( ..,
        ASAlarm,
        ASInsufficientData,
        ASOK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AlarmState = AlarmState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASAlarm :: AlarmState
pattern ASAlarm = AlarmState' "ALARM"

pattern ASInsufficientData :: AlarmState
pattern ASInsufficientData = AlarmState' "INSUFFICIENT_DATA"

pattern ASOK :: AlarmState
pattern ASOK = AlarmState' "OK"

{-# COMPLETE
  ASAlarm,
  ASInsufficientData,
  ASOK,
  AlarmState'
  #-}

instance FromText AlarmState where
  parser = (AlarmState' . mk) <$> takeText

instance ToText AlarmState where
  toText (AlarmState' ci) = original ci

instance Hashable AlarmState

instance NFData AlarmState

instance ToByteString AlarmState

instance ToQuery AlarmState

instance ToHeader AlarmState

instance ToJSON AlarmState where
  toJSON = toJSONText

instance FromJSON AlarmState where
  parseJSON = parseJSONText "AlarmState"
