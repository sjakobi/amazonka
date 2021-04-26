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
-- Module      : Network.AWS.MediaConvert.Types.CmafInitializationVectorInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafInitializationVectorInManifest
  ( CmafInitializationVectorInManifest
      ( ..,
        CmafInitializationVectorInManifestEXCLUDE,
        CmafInitializationVectorInManifestINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you use DRM with CMAF outputs, choose whether the service writes
-- the 128-bit encryption initialization vector in the HLS and DASH
-- manifests.
newtype CmafInitializationVectorInManifest = CmafInitializationVectorInManifest'
  { fromCmafInitializationVectorInManifest ::
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

pattern CmafInitializationVectorInManifestEXCLUDE :: CmafInitializationVectorInManifest
pattern CmafInitializationVectorInManifestEXCLUDE = CmafInitializationVectorInManifest' "EXCLUDE"

pattern CmafInitializationVectorInManifestINCLUDE :: CmafInitializationVectorInManifest
pattern CmafInitializationVectorInManifestINCLUDE = CmafInitializationVectorInManifest' "INCLUDE"

{-# COMPLETE
  CmafInitializationVectorInManifestEXCLUDE,
  CmafInitializationVectorInManifestINCLUDE,
  CmafInitializationVectorInManifest'
  #-}

instance Prelude.FromText CmafInitializationVectorInManifest where
  parser = CmafInitializationVectorInManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafInitializationVectorInManifest where
  toText (CmafInitializationVectorInManifest' x) = x

instance Prelude.Hashable CmafInitializationVectorInManifest

instance Prelude.NFData CmafInitializationVectorInManifest

instance Prelude.ToByteString CmafInitializationVectorInManifest

instance Prelude.ToQuery CmafInitializationVectorInManifest

instance Prelude.ToHeader CmafInitializationVectorInManifest

instance Prelude.ToJSON CmafInitializationVectorInManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafInitializationVectorInManifest where
  parseJSON = Prelude.parseJSONText "CmafInitializationVectorInManifest"
