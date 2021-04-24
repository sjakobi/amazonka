{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.WatermarkingStrength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WatermarkingStrength
  ( WatermarkingStrength
      ( ..,
        Default,
        Lighter,
        Lightest,
        Stronger,
        Strongest
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.
data WatermarkingStrength
  = WatermarkingStrength'
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

pattern Default :: WatermarkingStrength
pattern Default = WatermarkingStrength' "DEFAULT"

pattern Lighter :: WatermarkingStrength
pattern Lighter = WatermarkingStrength' "LIGHTER"

pattern Lightest :: WatermarkingStrength
pattern Lightest = WatermarkingStrength' "LIGHTEST"

pattern Stronger :: WatermarkingStrength
pattern Stronger = WatermarkingStrength' "STRONGER"

pattern Strongest :: WatermarkingStrength
pattern Strongest = WatermarkingStrength' "STRONGEST"

{-# COMPLETE
  Default,
  Lighter,
  Lightest,
  Stronger,
  Strongest,
  WatermarkingStrength'
  #-}

instance FromText WatermarkingStrength where
  parser = (WatermarkingStrength' . mk) <$> takeText

instance ToText WatermarkingStrength where
  toText (WatermarkingStrength' ci) = original ci

instance Hashable WatermarkingStrength

instance NFData WatermarkingStrength

instance ToByteString WatermarkingStrength

instance ToQuery WatermarkingStrength

instance ToHeader WatermarkingStrength

instance ToJSON WatermarkingStrength where
  toJSON = toJSONText

instance FromJSON WatermarkingStrength where
  parseJSON = parseJSONText "WatermarkingStrength"
