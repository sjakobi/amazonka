{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ON,
        Off
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Telemetry = Telemetry' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ON :: Telemetry
pattern ON = Telemetry' "On"

pattern Off :: Telemetry
pattern Off = Telemetry' "Off"

{-# COMPLETE
  ON,
  Off,
  Telemetry'
  #-}

instance FromText Telemetry where
  parser = (Telemetry' . mk) <$> takeText

instance ToText Telemetry where
  toText (Telemetry' ci) = original ci

instance Hashable Telemetry

instance NFData Telemetry

instance ToByteString Telemetry

instance ToQuery Telemetry

instance ToHeader Telemetry

instance ToJSON Telemetry where
  toJSON = toJSONText

instance FromJSON Telemetry where
  parseJSON = parseJSONText "Telemetry"
