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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
  ( BurninSubtitleOutlineColor
      ( ..,
        BurninSubtitleOutlineColorBLACK,
        BurninSubtitleOutlineColorBLUE,
        BurninSubtitleOutlineColorGREEN,
        BurninSubtitleOutlineColorRED,
        BurninSubtitleOutlineColorWHITE,
        BurninSubtitleOutlineColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies font outline color. This option is not valid for source
-- captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
newtype BurninSubtitleOutlineColor = BurninSubtitleOutlineColor'
  { fromBurninSubtitleOutlineColor ::
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

pattern BurninSubtitleOutlineColorBLACK :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorBLACK = BurninSubtitleOutlineColor' "BLACK"

pattern BurninSubtitleOutlineColorBLUE :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorBLUE = BurninSubtitleOutlineColor' "BLUE"

pattern BurninSubtitleOutlineColorGREEN :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorGREEN = BurninSubtitleOutlineColor' "GREEN"

pattern BurninSubtitleOutlineColorRED :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorRED = BurninSubtitleOutlineColor' "RED"

pattern BurninSubtitleOutlineColorWHITE :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorWHITE = BurninSubtitleOutlineColor' "WHITE"

pattern BurninSubtitleOutlineColorYELLOW :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColorYELLOW = BurninSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  BurninSubtitleOutlineColorBLACK,
  BurninSubtitleOutlineColorBLUE,
  BurninSubtitleOutlineColorGREEN,
  BurninSubtitleOutlineColorRED,
  BurninSubtitleOutlineColorWHITE,
  BurninSubtitleOutlineColorYELLOW,
  BurninSubtitleOutlineColor'
  #-}

instance Prelude.FromText BurninSubtitleOutlineColor where
  parser = BurninSubtitleOutlineColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleOutlineColor where
  toText (BurninSubtitleOutlineColor' x) = x

instance Prelude.Hashable BurninSubtitleOutlineColor

instance Prelude.NFData BurninSubtitleOutlineColor

instance Prelude.ToByteString BurninSubtitleOutlineColor

instance Prelude.ToQuery BurninSubtitleOutlineColor

instance Prelude.ToHeader BurninSubtitleOutlineColor

instance Prelude.ToJSON BurninSubtitleOutlineColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleOutlineColor where
  parseJSON = Prelude.parseJSONText "BurninSubtitleOutlineColor"
