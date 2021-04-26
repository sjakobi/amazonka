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
-- Module      : Network.AWS.MediaLive.Types.HlsMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsMode
  ( HlsMode
      ( ..,
        HlsModeLIVE,
        HlsModeVOD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Mode
newtype HlsMode = HlsMode'
  { fromHlsMode ::
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

pattern HlsModeLIVE :: HlsMode
pattern HlsModeLIVE = HlsMode' "LIVE"

pattern HlsModeVOD :: HlsMode
pattern HlsModeVOD = HlsMode' "VOD"

{-# COMPLETE
  HlsModeLIVE,
  HlsModeVOD,
  HlsMode'
  #-}

instance Prelude.FromText HlsMode where
  parser = HlsMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsMode where
  toText (HlsMode' x) = x

instance Prelude.Hashable HlsMode

instance Prelude.NFData HlsMode

instance Prelude.ToByteString HlsMode

instance Prelude.ToQuery HlsMode

instance Prelude.ToHeader HlsMode

instance Prelude.ToJSON HlsMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsMode where
  parseJSON = Prelude.parseJSONText "HlsMode"
