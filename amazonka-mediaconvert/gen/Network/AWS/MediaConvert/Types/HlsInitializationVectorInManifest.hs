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
-- Module      : Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsInitializationVectorInManifest
  ( HlsInitializationVectorInManifest
      ( ..,
        HlsInitializationVectorInManifestEXCLUDE,
        HlsInitializationVectorInManifestINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The Initialization Vector is a 128-bit number used in conjunction with
-- the key for encrypting blocks. If set to INCLUDE, Initialization Vector
-- is listed in the manifest. Otherwise Initialization Vector is not in the
-- manifest.
newtype HlsInitializationVectorInManifest = HlsInitializationVectorInManifest'
  { fromHlsInitializationVectorInManifest ::
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

pattern HlsInitializationVectorInManifestEXCLUDE :: HlsInitializationVectorInManifest
pattern HlsInitializationVectorInManifestEXCLUDE = HlsInitializationVectorInManifest' "EXCLUDE"

pattern HlsInitializationVectorInManifestINCLUDE :: HlsInitializationVectorInManifest
pattern HlsInitializationVectorInManifestINCLUDE = HlsInitializationVectorInManifest' "INCLUDE"

{-# COMPLETE
  HlsInitializationVectorInManifestEXCLUDE,
  HlsInitializationVectorInManifestINCLUDE,
  HlsInitializationVectorInManifest'
  #-}

instance Prelude.FromText HlsInitializationVectorInManifest where
  parser = HlsInitializationVectorInManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsInitializationVectorInManifest where
  toText (HlsInitializationVectorInManifest' x) = x

instance Prelude.Hashable HlsInitializationVectorInManifest

instance Prelude.NFData HlsInitializationVectorInManifest

instance Prelude.ToByteString HlsInitializationVectorInManifest

instance Prelude.ToQuery HlsInitializationVectorInManifest

instance Prelude.ToHeader HlsInitializationVectorInManifest

instance Prelude.ToJSON HlsInitializationVectorInManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsInitializationVectorInManifest where
  parseJSON = Prelude.parseJSONText "HlsInitializationVectorInManifest"
