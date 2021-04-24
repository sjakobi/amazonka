{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.StateValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.StateValue
  ( StateValue
      ( ..,
        Alarm,
        InsufficientData,
        OK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StateValue = StateValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Alarm :: StateValue
pattern Alarm = StateValue' "ALARM"

pattern InsufficientData :: StateValue
pattern InsufficientData = StateValue' "INSUFFICIENT_DATA"

pattern OK :: StateValue
pattern OK = StateValue' "OK"

{-# COMPLETE
  Alarm,
  InsufficientData,
  OK,
  StateValue'
  #-}

instance FromText StateValue where
  parser = (StateValue' . mk) <$> takeText

instance ToText StateValue where
  toText (StateValue' ci) = original ci

instance Hashable StateValue

instance NFData StateValue

instance ToByteString StateValue

instance ToQuery StateValue

instance ToHeader StateValue

instance FromXML StateValue where
  parseXML = parseXMLText "StateValue"
