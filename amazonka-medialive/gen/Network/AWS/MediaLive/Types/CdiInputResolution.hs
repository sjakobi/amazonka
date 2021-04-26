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
-- Module      : Network.AWS.MediaLive.Types.CdiInputResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.CdiInputResolution
  ( CdiInputResolution
      ( ..,
        CdiInputResolutionFHD,
        CdiInputResolutionHD,
        CdiInputResolutionSD,
        CdiInputResolutionUHD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Maximum CDI input resolution; SD is 480i and 576i up to 30
-- frames-per-second (fps), HD is 720p up to 60 fps \/ 1080i up to 30 fps,
-- FHD is 1080p up to 60 fps, UHD is 2160p up to 60 fps
newtype CdiInputResolution = CdiInputResolution'
  { fromCdiInputResolution ::
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

pattern CdiInputResolutionFHD :: CdiInputResolution
pattern CdiInputResolutionFHD = CdiInputResolution' "FHD"

pattern CdiInputResolutionHD :: CdiInputResolution
pattern CdiInputResolutionHD = CdiInputResolution' "HD"

pattern CdiInputResolutionSD :: CdiInputResolution
pattern CdiInputResolutionSD = CdiInputResolution' "SD"

pattern CdiInputResolutionUHD :: CdiInputResolution
pattern CdiInputResolutionUHD = CdiInputResolution' "UHD"

{-# COMPLETE
  CdiInputResolutionFHD,
  CdiInputResolutionHD,
  CdiInputResolutionSD,
  CdiInputResolutionUHD,
  CdiInputResolution'
  #-}

instance Prelude.FromText CdiInputResolution where
  parser = CdiInputResolution' Prelude.<$> Prelude.takeText

instance Prelude.ToText CdiInputResolution where
  toText (CdiInputResolution' x) = x

instance Prelude.Hashable CdiInputResolution

instance Prelude.NFData CdiInputResolution

instance Prelude.ToByteString CdiInputResolution

instance Prelude.ToQuery CdiInputResolution

instance Prelude.ToHeader CdiInputResolution

instance Prelude.ToJSON CdiInputResolution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CdiInputResolution where
  parseJSON = Prelude.parseJSONText "CdiInputResolution"
