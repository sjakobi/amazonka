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
-- Module      : Network.AWS.MediaLive.Types.HlsStreamInfResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsStreamInfResolution
  ( HlsStreamInfResolution
      ( ..,
        HlsStreamInfResolutionEXCLUDE,
        HlsStreamInfResolutionINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Stream Inf Resolution
newtype HlsStreamInfResolution = HlsStreamInfResolution'
  { fromHlsStreamInfResolution ::
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

pattern HlsStreamInfResolutionEXCLUDE :: HlsStreamInfResolution
pattern HlsStreamInfResolutionEXCLUDE = HlsStreamInfResolution' "EXCLUDE"

pattern HlsStreamInfResolutionINCLUDE :: HlsStreamInfResolution
pattern HlsStreamInfResolutionINCLUDE = HlsStreamInfResolution' "INCLUDE"

{-# COMPLETE
  HlsStreamInfResolutionEXCLUDE,
  HlsStreamInfResolutionINCLUDE,
  HlsStreamInfResolution'
  #-}

instance Prelude.FromText HlsStreamInfResolution where
  parser = HlsStreamInfResolution' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsStreamInfResolution where
  toText (HlsStreamInfResolution' x) = x

instance Prelude.Hashable HlsStreamInfResolution

instance Prelude.NFData HlsStreamInfResolution

instance Prelude.ToByteString HlsStreamInfResolution

instance Prelude.ToQuery HlsStreamInfResolution

instance Prelude.ToHeader HlsStreamInfResolution

instance Prelude.ToJSON HlsStreamInfResolution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsStreamInfResolution where
  parseJSON = Prelude.parseJSONText "HlsStreamInfResolution"
