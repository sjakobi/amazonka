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
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.DASHPlaybackMode
  ( DASHPlaybackMode
      ( ..,
        DASHPlaybackModeLIVE,
        DASHPlaybackModeLIVEREPLAY,
        DASHPlaybackModeONDEMAND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DASHPlaybackMode = DASHPlaybackMode'
  { fromDASHPlaybackMode ::
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

pattern DASHPlaybackModeLIVE :: DASHPlaybackMode
pattern DASHPlaybackModeLIVE = DASHPlaybackMode' "LIVE"

pattern DASHPlaybackModeLIVEREPLAY :: DASHPlaybackMode
pattern DASHPlaybackModeLIVEREPLAY = DASHPlaybackMode' "LIVE_REPLAY"

pattern DASHPlaybackModeONDEMAND :: DASHPlaybackMode
pattern DASHPlaybackModeONDEMAND = DASHPlaybackMode' "ON_DEMAND"

{-# COMPLETE
  DASHPlaybackModeLIVE,
  DASHPlaybackModeLIVEREPLAY,
  DASHPlaybackModeONDEMAND,
  DASHPlaybackMode'
  #-}

instance Prelude.FromText DASHPlaybackMode where
  parser = DASHPlaybackMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DASHPlaybackMode where
  toText (DASHPlaybackMode' x) = x

instance Prelude.Hashable DASHPlaybackMode

instance Prelude.NFData DASHPlaybackMode

instance Prelude.ToByteString DASHPlaybackMode

instance Prelude.ToQuery DASHPlaybackMode

instance Prelude.ToHeader DASHPlaybackMode

instance Prelude.ToJSON DASHPlaybackMode where
  toJSON = Prelude.toJSONText
