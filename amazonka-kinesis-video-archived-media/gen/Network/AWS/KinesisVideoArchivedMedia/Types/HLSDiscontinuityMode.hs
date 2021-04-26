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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSDiscontinuityMode
  ( HLSDiscontinuityMode
      ( ..,
        HLSDiscontinuityModeALWAYS,
        HLSDiscontinuityModeNEVER,
        HLSDiscontinuityModeONDISCONTINUITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HLSDiscontinuityMode = HLSDiscontinuityMode'
  { fromHLSDiscontinuityMode ::
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

pattern HLSDiscontinuityModeALWAYS :: HLSDiscontinuityMode
pattern HLSDiscontinuityModeALWAYS = HLSDiscontinuityMode' "ALWAYS"

pattern HLSDiscontinuityModeNEVER :: HLSDiscontinuityMode
pattern HLSDiscontinuityModeNEVER = HLSDiscontinuityMode' "NEVER"

pattern HLSDiscontinuityModeONDISCONTINUITY :: HLSDiscontinuityMode
pattern HLSDiscontinuityModeONDISCONTINUITY = HLSDiscontinuityMode' "ON_DISCONTINUITY"

{-# COMPLETE
  HLSDiscontinuityModeALWAYS,
  HLSDiscontinuityModeNEVER,
  HLSDiscontinuityModeONDISCONTINUITY,
  HLSDiscontinuityMode'
  #-}

instance Prelude.FromText HLSDiscontinuityMode where
  parser = HLSDiscontinuityMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HLSDiscontinuityMode where
  toText (HLSDiscontinuityMode' x) = x

instance Prelude.Hashable HLSDiscontinuityMode

instance Prelude.NFData HLSDiscontinuityMode

instance Prelude.ToByteString HLSDiscontinuityMode

instance Prelude.ToQuery HLSDiscontinuityMode

instance Prelude.ToHeader HLSDiscontinuityMode

instance Prelude.ToJSON HLSDiscontinuityMode where
  toJSON = Prelude.toJSONText
