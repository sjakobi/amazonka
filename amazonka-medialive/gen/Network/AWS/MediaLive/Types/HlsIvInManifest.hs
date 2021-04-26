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
-- Module      : Network.AWS.MediaLive.Types.HlsIvInManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIvInManifest
  ( HlsIvInManifest
      ( ..,
        HlsIvInManifestEXCLUDE,
        HlsIvInManifestINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Iv In Manifest
newtype HlsIvInManifest = HlsIvInManifest'
  { fromHlsIvInManifest ::
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

pattern HlsIvInManifestEXCLUDE :: HlsIvInManifest
pattern HlsIvInManifestEXCLUDE = HlsIvInManifest' "EXCLUDE"

pattern HlsIvInManifestINCLUDE :: HlsIvInManifest
pattern HlsIvInManifestINCLUDE = HlsIvInManifest' "INCLUDE"

{-# COMPLETE
  HlsIvInManifestEXCLUDE,
  HlsIvInManifestINCLUDE,
  HlsIvInManifest'
  #-}

instance Prelude.FromText HlsIvInManifest where
  parser = HlsIvInManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsIvInManifest where
  toText (HlsIvInManifest' x) = x

instance Prelude.Hashable HlsIvInManifest

instance Prelude.NFData HlsIvInManifest

instance Prelude.ToByteString HlsIvInManifest

instance Prelude.ToQuery HlsIvInManifest

instance Prelude.ToHeader HlsIvInManifest

instance Prelude.ToJSON HlsIvInManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsIvInManifest where
  parseJSON = Prelude.parseJSONText "HlsIvInManifest"
