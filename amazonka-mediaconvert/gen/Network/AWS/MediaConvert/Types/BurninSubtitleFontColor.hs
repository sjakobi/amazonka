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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
  ( BurninSubtitleFontColor
      ( ..,
        BurninSubtitleFontColorBLACK,
        BurninSubtitleFontColorBLUE,
        BurninSubtitleFontColorGREEN,
        BurninSubtitleFontColorRED,
        BurninSubtitleFontColorWHITE,
        BurninSubtitleFontColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the burned-in captions. This option is not valid
-- for source captions that are STL, 608\/embedded or teletext. These
-- source settings are already pre-defined by the caption stream. All
-- burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleFontColor = BurninSubtitleFontColor'
  { fromBurninSubtitleFontColor ::
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

pattern BurninSubtitleFontColorBLACK :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorBLACK = BurninSubtitleFontColor' "BLACK"

pattern BurninSubtitleFontColorBLUE :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorBLUE = BurninSubtitleFontColor' "BLUE"

pattern BurninSubtitleFontColorGREEN :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorGREEN = BurninSubtitleFontColor' "GREEN"

pattern BurninSubtitleFontColorRED :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorRED = BurninSubtitleFontColor' "RED"

pattern BurninSubtitleFontColorWHITE :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorWHITE = BurninSubtitleFontColor' "WHITE"

pattern BurninSubtitleFontColorYELLOW :: BurninSubtitleFontColor
pattern BurninSubtitleFontColorYELLOW = BurninSubtitleFontColor' "YELLOW"

{-# COMPLETE
  BurninSubtitleFontColorBLACK,
  BurninSubtitleFontColorBLUE,
  BurninSubtitleFontColorGREEN,
  BurninSubtitleFontColorRED,
  BurninSubtitleFontColorWHITE,
  BurninSubtitleFontColorYELLOW,
  BurninSubtitleFontColor'
  #-}

instance Prelude.FromText BurninSubtitleFontColor where
  parser = BurninSubtitleFontColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleFontColor where
  toText (BurninSubtitleFontColor' x) = x

instance Prelude.Hashable BurninSubtitleFontColor

instance Prelude.NFData BurninSubtitleFontColor

instance Prelude.ToByteString BurninSubtitleFontColor

instance Prelude.ToQuery BurninSubtitleFontColor

instance Prelude.ToHeader BurninSubtitleFontColor

instance Prelude.ToJSON BurninSubtitleFontColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleFontColor where
  parseJSON = Prelude.parseJSONText "BurninSubtitleFontColor"
