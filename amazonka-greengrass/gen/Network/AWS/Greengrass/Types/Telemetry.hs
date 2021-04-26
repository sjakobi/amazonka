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
-- Module      : Network.AWS.Greengrass.Types.Telemetry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.Telemetry
  ( Telemetry
      ( ..,
        TelemetryON,
        TelemetryOff
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Telemetry = Telemetry'
  { fromTelemetry ::
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

pattern TelemetryON :: Telemetry
pattern TelemetryON = Telemetry' "On"

pattern TelemetryOff :: Telemetry
pattern TelemetryOff = Telemetry' "Off"

{-# COMPLETE
  TelemetryON,
  TelemetryOff,
  Telemetry'
  #-}

instance Prelude.FromText Telemetry where
  parser = Telemetry' Prelude.<$> Prelude.takeText

instance Prelude.ToText Telemetry where
  toText (Telemetry' x) = x

instance Prelude.Hashable Telemetry

instance Prelude.NFData Telemetry

instance Prelude.ToByteString Telemetry

instance Prelude.ToQuery Telemetry

instance Prelude.ToHeader Telemetry

instance Prelude.ToJSON Telemetry where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Telemetry where
  parseJSON = Prelude.parseJSONText "Telemetry"
