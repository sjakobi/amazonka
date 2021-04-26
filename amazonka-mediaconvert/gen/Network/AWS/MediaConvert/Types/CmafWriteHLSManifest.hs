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
-- Module      : Network.AWS.MediaConvert.Types.CmafWriteHLSManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafWriteHLSManifest
  ( CmafWriteHLSManifest
      ( ..,
        CmafWriteHLSManifestDISABLED,
        CmafWriteHLSManifestENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to ENABLED, an Apple HLS manifest will be generated for this
-- output.
newtype CmafWriteHLSManifest = CmafWriteHLSManifest'
  { fromCmafWriteHLSManifest ::
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

pattern CmafWriteHLSManifestDISABLED :: CmafWriteHLSManifest
pattern CmafWriteHLSManifestDISABLED = CmafWriteHLSManifest' "DISABLED"

pattern CmafWriteHLSManifestENABLED :: CmafWriteHLSManifest
pattern CmafWriteHLSManifestENABLED = CmafWriteHLSManifest' "ENABLED"

{-# COMPLETE
  CmafWriteHLSManifestDISABLED,
  CmafWriteHLSManifestENABLED,
  CmafWriteHLSManifest'
  #-}

instance Prelude.FromText CmafWriteHLSManifest where
  parser = CmafWriteHLSManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafWriteHLSManifest where
  toText (CmafWriteHLSManifest' x) = x

instance Prelude.Hashable CmafWriteHLSManifest

instance Prelude.NFData CmafWriteHLSManifest

instance Prelude.ToByteString CmafWriteHLSManifest

instance Prelude.ToQuery CmafWriteHLSManifest

instance Prelude.ToHeader CmafWriteHLSManifest

instance Prelude.ToJSON CmafWriteHLSManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafWriteHLSManifest where
  parseJSON = Prelude.parseJSONText "CmafWriteHLSManifest"
