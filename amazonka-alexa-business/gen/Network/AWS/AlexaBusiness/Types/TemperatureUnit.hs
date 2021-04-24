{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.TemperatureUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.TemperatureUnit
  ( TemperatureUnit
      ( ..,
        Celsius,
        Fahrenheit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TemperatureUnit = TemperatureUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Celsius :: TemperatureUnit
pattern Celsius = TemperatureUnit' "CELSIUS"

pattern Fahrenheit :: TemperatureUnit
pattern Fahrenheit = TemperatureUnit' "FAHRENHEIT"

{-# COMPLETE
  Celsius,
  Fahrenheit,
  TemperatureUnit'
  #-}

instance FromText TemperatureUnit where
  parser = (TemperatureUnit' . mk) <$> takeText

instance ToText TemperatureUnit where
  toText (TemperatureUnit' ci) = original ci

instance Hashable TemperatureUnit

instance NFData TemperatureUnit

instance ToByteString TemperatureUnit

instance ToQuery TemperatureUnit

instance ToHeader TemperatureUnit

instance ToJSON TemperatureUnit where
  toJSON = toJSONText

instance FromJSON TemperatureUnit where
  parseJSON = parseJSONText "TemperatureUnit"
