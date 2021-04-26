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
-- Module      : Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafWriteDASHManifest
  ( CmafWriteDASHManifest
      ( ..,
        CmafWriteDASHManifestDISABLED,
        CmafWriteDASHManifestENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to ENABLED, a DASH MPD manifest will be generated for this
-- output.
newtype CmafWriteDASHManifest = CmafWriteDASHManifest'
  { fromCmafWriteDASHManifest ::
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

pattern CmafWriteDASHManifestDISABLED :: CmafWriteDASHManifest
pattern CmafWriteDASHManifestDISABLED = CmafWriteDASHManifest' "DISABLED"

pattern CmafWriteDASHManifestENABLED :: CmafWriteDASHManifest
pattern CmafWriteDASHManifestENABLED = CmafWriteDASHManifest' "ENABLED"

{-# COMPLETE
  CmafWriteDASHManifestDISABLED,
  CmafWriteDASHManifestENABLED,
  CmafWriteDASHManifest'
  #-}

instance Prelude.FromText CmafWriteDASHManifest where
  parser = CmafWriteDASHManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafWriteDASHManifest where
  toText (CmafWriteDASHManifest' x) = x

instance Prelude.Hashable CmafWriteDASHManifest

instance Prelude.NFData CmafWriteDASHManifest

instance Prelude.ToByteString CmafWriteDASHManifest

instance Prelude.ToQuery CmafWriteDASHManifest

instance Prelude.ToHeader CmafWriteDASHManifest

instance Prelude.ToJSON CmafWriteDASHManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafWriteDASHManifest where
  parseJSON = Prelude.parseJSONText "CmafWriteDASHManifest"
