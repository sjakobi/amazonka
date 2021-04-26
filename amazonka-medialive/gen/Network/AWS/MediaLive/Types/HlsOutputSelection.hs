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
-- Module      : Network.AWS.MediaLive.Types.HlsOutputSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsOutputSelection
  ( HlsOutputSelection
      ( ..,
        HlsOutputSelectionMANIFESTSANDSEGMENTS,
        HlsOutputSelectionSEGMENTSONLY,
        HlsOutputSelectionVARIANTMANIFESTSANDSEGMENTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Output Selection
newtype HlsOutputSelection = HlsOutputSelection'
  { fromHlsOutputSelection ::
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

pattern HlsOutputSelectionMANIFESTSANDSEGMENTS :: HlsOutputSelection
pattern HlsOutputSelectionMANIFESTSANDSEGMENTS = HlsOutputSelection' "MANIFESTS_AND_SEGMENTS"

pattern HlsOutputSelectionSEGMENTSONLY :: HlsOutputSelection
pattern HlsOutputSelectionSEGMENTSONLY = HlsOutputSelection' "SEGMENTS_ONLY"

pattern HlsOutputSelectionVARIANTMANIFESTSANDSEGMENTS :: HlsOutputSelection
pattern HlsOutputSelectionVARIANTMANIFESTSANDSEGMENTS = HlsOutputSelection' "VARIANT_MANIFESTS_AND_SEGMENTS"

{-# COMPLETE
  HlsOutputSelectionMANIFESTSANDSEGMENTS,
  HlsOutputSelectionSEGMENTSONLY,
  HlsOutputSelectionVARIANTMANIFESTSANDSEGMENTS,
  HlsOutputSelection'
  #-}

instance Prelude.FromText HlsOutputSelection where
  parser = HlsOutputSelection' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsOutputSelection where
  toText (HlsOutputSelection' x) = x

instance Prelude.Hashable HlsOutputSelection

instance Prelude.NFData HlsOutputSelection

instance Prelude.ToByteString HlsOutputSelection

instance Prelude.ToQuery HlsOutputSelection

instance Prelude.ToHeader HlsOutputSelection

instance Prelude.ToJSON HlsOutputSelection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsOutputSelection where
  parseJSON = Prelude.parseJSONText "HlsOutputSelection"
