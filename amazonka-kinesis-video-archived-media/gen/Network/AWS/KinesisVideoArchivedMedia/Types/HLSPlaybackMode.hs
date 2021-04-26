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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.HLSPlaybackMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.HLSPlaybackMode
  ( HLSPlaybackMode
      ( ..,
        HLSPlaybackModeLIVE,
        HLSPlaybackModeLIVEREPLAY,
        HLSPlaybackModeONDEMAND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HLSPlaybackMode = HLSPlaybackMode'
  { fromHLSPlaybackMode ::
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

pattern HLSPlaybackModeLIVE :: HLSPlaybackMode
pattern HLSPlaybackModeLIVE = HLSPlaybackMode' "LIVE"

pattern HLSPlaybackModeLIVEREPLAY :: HLSPlaybackMode
pattern HLSPlaybackModeLIVEREPLAY = HLSPlaybackMode' "LIVE_REPLAY"

pattern HLSPlaybackModeONDEMAND :: HLSPlaybackMode
pattern HLSPlaybackModeONDEMAND = HLSPlaybackMode' "ON_DEMAND"

{-# COMPLETE
  HLSPlaybackModeLIVE,
  HLSPlaybackModeLIVEREPLAY,
  HLSPlaybackModeONDEMAND,
  HLSPlaybackMode'
  #-}

instance Prelude.FromText HLSPlaybackMode where
  parser = HLSPlaybackMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText HLSPlaybackMode where
  toText (HLSPlaybackMode' x) = x

instance Prelude.Hashable HLSPlaybackMode

instance Prelude.NFData HLSPlaybackMode

instance Prelude.ToByteString HLSPlaybackMode

instance Prelude.ToQuery HLSPlaybackMode

instance Prelude.ToHeader HLSPlaybackMode

instance Prelude.ToJSON HLSPlaybackMode where
  toJSON = Prelude.toJSONText
