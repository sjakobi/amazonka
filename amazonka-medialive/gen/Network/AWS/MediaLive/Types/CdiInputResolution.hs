{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.CdiInputResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.CdiInputResolution
  ( CdiInputResolution
      ( ..,
        CIRFhd,
        CIRHD,
        CIRSD,
        CIRUhd
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Maximum CDI input resolution; SD is 480i and 576i up to 30 frames-per-second (fps), HD is 720p up to 60 fps / 1080i up to 30 fps, FHD is 1080p up to 60 fps, UHD is 2160p up to 60 fps
data CdiInputResolution
  = CdiInputResolution'
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

pattern CIRFhd :: CdiInputResolution
pattern CIRFhd = CdiInputResolution' "FHD"

pattern CIRHD :: CdiInputResolution
pattern CIRHD = CdiInputResolution' "HD"

pattern CIRSD :: CdiInputResolution
pattern CIRSD = CdiInputResolution' "SD"

pattern CIRUhd :: CdiInputResolution
pattern CIRUhd = CdiInputResolution' "UHD"

{-# COMPLETE
  CIRFhd,
  CIRHD,
  CIRSD,
  CIRUhd,
  CdiInputResolution'
  #-}

instance FromText CdiInputResolution where
  parser = (CdiInputResolution' . mk) <$> takeText

instance ToText CdiInputResolution where
  toText (CdiInputResolution' ci) = original ci

instance Hashable CdiInputResolution

instance NFData CdiInputResolution

instance ToByteString CdiInputResolution

instance ToQuery CdiInputResolution

instance ToHeader CdiInputResolution

instance ToJSON CdiInputResolution where
  toJSON = toJSONText

instance FromJSON CdiInputResolution where
  parseJSON = parseJSONText "CdiInputResolution"
