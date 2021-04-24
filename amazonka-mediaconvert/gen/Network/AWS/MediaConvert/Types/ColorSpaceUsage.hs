{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ColorSpaceUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ColorSpaceUsage
  ( ColorSpaceUsage
      ( ..,
        Fallback,
        Force
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | There are two sources for color metadata, the input file and the job input settings Color space (ColorSpace) and HDR master display information settings(Hdr10Metadata). The Color space usage setting determines which takes precedence. Choose Force (FORCE) to use color metadata from the input job settings. If you don't specify values for those settings, the service defaults to using metadata from your input. FALLBACK - Choose Fallback (FALLBACK) to use color metadata from the source when it is present. If there's no color metadata in your input file, the service defaults to using values you specify in the input settings.
data ColorSpaceUsage = ColorSpaceUsage' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fallback :: ColorSpaceUsage
pattern Fallback = ColorSpaceUsage' "FALLBACK"

pattern Force :: ColorSpaceUsage
pattern Force = ColorSpaceUsage' "FORCE"

{-# COMPLETE
  Fallback,
  Force,
  ColorSpaceUsage'
  #-}

instance FromText ColorSpaceUsage where
  parser = (ColorSpaceUsage' . mk) <$> takeText

instance ToText ColorSpaceUsage where
  toText (ColorSpaceUsage' ci) = original ci

instance Hashable ColorSpaceUsage

instance NFData ColorSpaceUsage

instance ToByteString ColorSpaceUsage

instance ToQuery ColorSpaceUsage

instance ToHeader ColorSpaceUsage

instance ToJSON ColorSpaceUsage where
  toJSON = toJSONText

instance FromJSON ColorSpaceUsage where
  parseJSON = parseJSONText "ColorSpaceUsage"
