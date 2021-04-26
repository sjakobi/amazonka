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
-- Module      : Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmfcIFrameOnlyManifest
  ( CmfcIFrameOnlyManifest
      ( ..,
        CmfcIFrameOnlyManifestEXCLUDE,
        CmfcIFrameOnlyManifestINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose Include (INCLUDE) to have MediaConvert generate an HLS child
-- manifest that lists only the I-frames for this rendition, in addition to
-- your regular manifest for this rendition. You might use this manifest as
-- part of a workflow that creates preview functions for your video.
-- MediaConvert adds both the I-frame only child manifest and the regular
-- child manifest to the parent manifest. When you don\'t need the I-frame
-- only child manifest, keep the default value Exclude (EXCLUDE).
newtype CmfcIFrameOnlyManifest = CmfcIFrameOnlyManifest'
  { fromCmfcIFrameOnlyManifest ::
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

pattern CmfcIFrameOnlyManifestEXCLUDE :: CmfcIFrameOnlyManifest
pattern CmfcIFrameOnlyManifestEXCLUDE = CmfcIFrameOnlyManifest' "EXCLUDE"

pattern CmfcIFrameOnlyManifestINCLUDE :: CmfcIFrameOnlyManifest
pattern CmfcIFrameOnlyManifestINCLUDE = CmfcIFrameOnlyManifest' "INCLUDE"

{-# COMPLETE
  CmfcIFrameOnlyManifestEXCLUDE,
  CmfcIFrameOnlyManifestINCLUDE,
  CmfcIFrameOnlyManifest'
  #-}

instance Prelude.FromText CmfcIFrameOnlyManifest where
  parser = CmfcIFrameOnlyManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmfcIFrameOnlyManifest where
  toText (CmfcIFrameOnlyManifest' x) = x

instance Prelude.Hashable CmfcIFrameOnlyManifest

instance Prelude.NFData CmfcIFrameOnlyManifest

instance Prelude.ToByteString CmfcIFrameOnlyManifest

instance Prelude.ToQuery CmfcIFrameOnlyManifest

instance Prelude.ToHeader CmfcIFrameOnlyManifest

instance Prelude.ToJSON CmfcIFrameOnlyManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmfcIFrameOnlyManifest where
  parseJSON = Prelude.parseJSONText "CmfcIFrameOnlyManifest"
