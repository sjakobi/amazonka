{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
  ( CmfcIFrameOnlyManifest
      ( ..,
        CIFOMExclude,
        CIFOMInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose Include (INCLUDE) to have MediaConvert generate an HLS child manifest that lists only the I-frames for this rendition, in addition to your regular manifest for this rendition. You might use this manifest as part of a workflow that creates preview functions for your video. MediaConvert adds both the I-frame only child manifest and the regular child manifest to the parent manifest. When you don't need the I-frame only child manifest, keep the default value Exclude (EXCLUDE).
data CmfcIFrameOnlyManifest
  = CmfcIFrameOnlyManifest'
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

pattern CIFOMExclude :: CmfcIFrameOnlyManifest
pattern CIFOMExclude = CmfcIFrameOnlyManifest' "EXCLUDE"

pattern CIFOMInclude :: CmfcIFrameOnlyManifest
pattern CIFOMInclude = CmfcIFrameOnlyManifest' "INCLUDE"

{-# COMPLETE
  CIFOMExclude,
  CIFOMInclude,
  CmfcIFrameOnlyManifest'
  #-}

instance FromText CmfcIFrameOnlyManifest where
  parser = (CmfcIFrameOnlyManifest' . mk) <$> takeText

instance ToText CmfcIFrameOnlyManifest where
  toText (CmfcIFrameOnlyManifest' ci) = original ci

instance Hashable CmfcIFrameOnlyManifest

instance NFData CmfcIFrameOnlyManifest

instance ToByteString CmfcIFrameOnlyManifest

instance ToQuery CmfcIFrameOnlyManifest

instance ToHeader CmfcIFrameOnlyManifest

instance ToJSON CmfcIFrameOnlyManifest where
  toJSON = toJSONText

instance FromJSON CmfcIFrameOnlyManifest where
  parseJSON = parseJSONText "CmfcIFrameOnlyManifest"
