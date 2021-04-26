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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleAlignment
  ( BurninSubtitleAlignment
      ( ..,
        BurninSubtitleAlignmentCENTERED,
        BurninSubtitleAlignmentLEFT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If no explicit x_position or y_position is provided, setting alignment
-- to centered will place the captions at the bottom center of the output.
-- Similarly, setting a left alignment will align captions to the bottom
-- left of the output. If x and y positions are given in conjunction with
-- the alignment parameter, the font will be justified (either left or
-- centered) relative to those coordinates. This option is not valid for
-- source captions that are STL, 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
newtype BurninSubtitleAlignment = BurninSubtitleAlignment'
  { fromBurninSubtitleAlignment ::
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

pattern BurninSubtitleAlignmentCENTERED :: BurninSubtitleAlignment
pattern BurninSubtitleAlignmentCENTERED = BurninSubtitleAlignment' "CENTERED"

pattern BurninSubtitleAlignmentLEFT :: BurninSubtitleAlignment
pattern BurninSubtitleAlignmentLEFT = BurninSubtitleAlignment' "LEFT"

{-# COMPLETE
  BurninSubtitleAlignmentCENTERED,
  BurninSubtitleAlignmentLEFT,
  BurninSubtitleAlignment'
  #-}

instance Prelude.FromText BurninSubtitleAlignment where
  parser = BurninSubtitleAlignment' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleAlignment where
  toText (BurninSubtitleAlignment' x) = x

instance Prelude.Hashable BurninSubtitleAlignment

instance Prelude.NFData BurninSubtitleAlignment

instance Prelude.ToByteString BurninSubtitleAlignment

instance Prelude.ToQuery BurninSubtitleAlignment

instance Prelude.ToHeader BurninSubtitleAlignment

instance Prelude.ToJSON BurninSubtitleAlignment where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleAlignment where
  parseJSON = Prelude.parseJSONText "BurninSubtitleAlignment"
