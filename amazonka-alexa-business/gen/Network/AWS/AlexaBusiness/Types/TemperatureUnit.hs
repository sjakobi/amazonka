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
-- Module      : Network.AWS.AlexaBusiness.Types.TemperatureUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.TemperatureUnit
  ( TemperatureUnit
      ( ..,
        TemperatureUnitCELSIUS,
        TemperatureUnitFAHRENHEIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TemperatureUnit = TemperatureUnit'
  { fromTemperatureUnit ::
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

pattern TemperatureUnitCELSIUS :: TemperatureUnit
pattern TemperatureUnitCELSIUS = TemperatureUnit' "CELSIUS"

pattern TemperatureUnitFAHRENHEIT :: TemperatureUnit
pattern TemperatureUnitFAHRENHEIT = TemperatureUnit' "FAHRENHEIT"

{-# COMPLETE
  TemperatureUnitCELSIUS,
  TemperatureUnitFAHRENHEIT,
  TemperatureUnit'
  #-}

instance Prelude.FromText TemperatureUnit where
  parser = TemperatureUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText TemperatureUnit where
  toText (TemperatureUnit' x) = x

instance Prelude.Hashable TemperatureUnit

instance Prelude.NFData TemperatureUnit

instance Prelude.ToByteString TemperatureUnit

instance Prelude.ToQuery TemperatureUnit

instance Prelude.ToHeader TemperatureUnit

instance Prelude.ToJSON TemperatureUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TemperatureUnit where
  parseJSON = Prelude.parseJSONText "TemperatureUnit"
