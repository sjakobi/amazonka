{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
  ( HlsIFrameOnlyManifest
      ( ..,
        HIFOMExclude,
        HIFOMInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose Include (INCLUDE) to have MediaConvert generate a child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
data HlsIFrameOnlyManifest
  = HlsIFrameOnlyManifest'
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

pattern HIFOMExclude :: HlsIFrameOnlyManifest
pattern HIFOMExclude = HlsIFrameOnlyManifest' "EXCLUDE"

pattern HIFOMInclude :: HlsIFrameOnlyManifest
pattern HIFOMInclude = HlsIFrameOnlyManifest' "INCLUDE"

{-# COMPLETE
  HIFOMExclude,
  HIFOMInclude,
  HlsIFrameOnlyManifest'
  #-}

instance FromText HlsIFrameOnlyManifest where
  parser = (HlsIFrameOnlyManifest' . mk) <$> takeText

instance ToText HlsIFrameOnlyManifest where
  toText (HlsIFrameOnlyManifest' ci) = original ci

instance Hashable HlsIFrameOnlyManifest

instance NFData HlsIFrameOnlyManifest

instance ToByteString HlsIFrameOnlyManifest

instance ToQuery HlsIFrameOnlyManifest

instance ToHeader HlsIFrameOnlyManifest

instance ToJSON HlsIFrameOnlyManifest where
  toJSON = toJSONText

instance FromJSON HlsIFrameOnlyManifest where
  parseJSON = parseJSONText "HlsIFrameOnlyManifest"
