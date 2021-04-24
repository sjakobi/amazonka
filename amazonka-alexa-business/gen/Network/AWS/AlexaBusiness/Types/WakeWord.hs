{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.WakeWord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.WakeWord
  ( WakeWord
      ( ..,
        Alexa,
        Amazon,
        Computer,
        Echo
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WakeWord = WakeWord' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Alexa :: WakeWord
pattern Alexa = WakeWord' "ALEXA"

pattern Amazon :: WakeWord
pattern Amazon = WakeWord' "AMAZON"

pattern Computer :: WakeWord
pattern Computer = WakeWord' "COMPUTER"

pattern Echo :: WakeWord
pattern Echo = WakeWord' "ECHO"

{-# COMPLETE
  Alexa,
  Amazon,
  Computer,
  Echo,
  WakeWord'
  #-}

instance FromText WakeWord where
  parser = (WakeWord' . mk) <$> takeText

instance ToText WakeWord where
  toText (WakeWord' ci) = original ci

instance Hashable WakeWord

instance NFData WakeWord

instance ToByteString WakeWord

instance ToQuery WakeWord

instance ToHeader WakeWord

instance ToJSON WakeWord where
  toJSON = toJSONText

instance FromJSON WakeWord where
  parseJSON = parseJSONText "WakeWord"
