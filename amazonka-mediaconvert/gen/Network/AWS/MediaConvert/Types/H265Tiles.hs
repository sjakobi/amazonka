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
-- Module      : Network.AWS.MediaConvert.Types.H265Tiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265Tiles
  ( H265Tiles
      ( ..,
        H265TilesDISABLED,
        H265TilesENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable use of tiles, allowing horizontal as well as vertical subdivision
-- of the encoded pictures.
newtype H265Tiles = H265Tiles'
  { fromH265Tiles ::
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

pattern H265TilesDISABLED :: H265Tiles
pattern H265TilesDISABLED = H265Tiles' "DISABLED"

pattern H265TilesENABLED :: H265Tiles
pattern H265TilesENABLED = H265Tiles' "ENABLED"

{-# COMPLETE
  H265TilesDISABLED,
  H265TilesENABLED,
  H265Tiles'
  #-}

instance Prelude.FromText H265Tiles where
  parser = H265Tiles' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265Tiles where
  toText (H265Tiles' x) = x

instance Prelude.Hashable H265Tiles

instance Prelude.NFData H265Tiles

instance Prelude.ToByteString H265Tiles

instance Prelude.ToQuery H265Tiles

instance Prelude.ToHeader H265Tiles

instance Prelude.ToJSON H265Tiles where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265Tiles where
  parseJSON = Prelude.parseJSONText "H265Tiles"
