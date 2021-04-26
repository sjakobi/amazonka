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
-- Module      : Network.AWS.MediaLive.Types.IFrameOnlyPlaylistType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.IFrameOnlyPlaylistType
  ( IFrameOnlyPlaylistType
      ( ..,
        IFrameOnlyPlaylistTypeDISABLED,
        IFrameOnlyPlaylistTypeSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to \"standard\", an I-Frame only playlist will be written out
-- for each video output in the output group. This I-Frame only playlist
-- will contain byte range offsets pointing to the I-frame(s) in each
-- segment.
newtype IFrameOnlyPlaylistType = IFrameOnlyPlaylistType'
  { fromIFrameOnlyPlaylistType ::
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

pattern IFrameOnlyPlaylistTypeDISABLED :: IFrameOnlyPlaylistType
pattern IFrameOnlyPlaylistTypeDISABLED = IFrameOnlyPlaylistType' "DISABLED"

pattern IFrameOnlyPlaylistTypeSTANDARD :: IFrameOnlyPlaylistType
pattern IFrameOnlyPlaylistTypeSTANDARD = IFrameOnlyPlaylistType' "STANDARD"

{-# COMPLETE
  IFrameOnlyPlaylistTypeDISABLED,
  IFrameOnlyPlaylistTypeSTANDARD,
  IFrameOnlyPlaylistType'
  #-}

instance Prelude.FromText IFrameOnlyPlaylistType where
  parser = IFrameOnlyPlaylistType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IFrameOnlyPlaylistType where
  toText (IFrameOnlyPlaylistType' x) = x

instance Prelude.Hashable IFrameOnlyPlaylistType

instance Prelude.NFData IFrameOnlyPlaylistType

instance Prelude.ToByteString IFrameOnlyPlaylistType

instance Prelude.ToQuery IFrameOnlyPlaylistType

instance Prelude.ToHeader IFrameOnlyPlaylistType

instance Prelude.ToJSON IFrameOnlyPlaylistType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IFrameOnlyPlaylistType where
  parseJSON = Prelude.parseJSONText "IFrameOnlyPlaylistType"
