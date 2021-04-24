{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TemporalFilterPostFilterSharpening
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TemporalFilterPostFilterSharpening
  ( TemporalFilterPostFilterSharpening
      ( ..,
        TFPFSAuto,
        TFPFSDisabled,
        TFPFSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Temporal Filter Post Filter Sharpening
data TemporalFilterPostFilterSharpening
  = TemporalFilterPostFilterSharpening'
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

pattern TFPFSAuto :: TemporalFilterPostFilterSharpening
pattern TFPFSAuto = TemporalFilterPostFilterSharpening' "AUTO"

pattern TFPFSDisabled :: TemporalFilterPostFilterSharpening
pattern TFPFSDisabled = TemporalFilterPostFilterSharpening' "DISABLED"

pattern TFPFSEnabled :: TemporalFilterPostFilterSharpening
pattern TFPFSEnabled = TemporalFilterPostFilterSharpening' "ENABLED"

{-# COMPLETE
  TFPFSAuto,
  TFPFSDisabled,
  TFPFSEnabled,
  TemporalFilterPostFilterSharpening'
  #-}

instance FromText TemporalFilterPostFilterSharpening where
  parser = (TemporalFilterPostFilterSharpening' . mk) <$> takeText

instance ToText TemporalFilterPostFilterSharpening where
  toText (TemporalFilterPostFilterSharpening' ci) = original ci

instance Hashable TemporalFilterPostFilterSharpening

instance NFData TemporalFilterPostFilterSharpening

instance ToByteString TemporalFilterPostFilterSharpening

instance ToQuery TemporalFilterPostFilterSharpening

instance ToHeader TemporalFilterPostFilterSharpening

instance ToJSON TemporalFilterPostFilterSharpening where
  toJSON = toJSONText

instance FromJSON TemporalFilterPostFilterSharpening where
  parseJSON = parseJSONText "TemporalFilterPostFilterSharpening"
