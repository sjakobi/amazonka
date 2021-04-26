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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleFontColor
  ( DvbSubtitleFontColor
      ( ..,
        DvbSubtitleFontColorBLACK,
        DvbSubtitleFontColorBLUE,
        DvbSubtitleFontColorGREEN,
        DvbSubtitleFontColorRED,
        DvbSubtitleFontColorWHITE,
        DvbSubtitleFontColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the burned-in captions. This option is not valid
-- for source captions that are STL, 608\/embedded or teletext. These
-- source settings are already pre-defined by the caption stream. All
-- burn-in and DVB-Sub font settings must match.
newtype DvbSubtitleFontColor = DvbSubtitleFontColor'
  { fromDvbSubtitleFontColor ::
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

pattern DvbSubtitleFontColorBLACK :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorBLACK = DvbSubtitleFontColor' "BLACK"

pattern DvbSubtitleFontColorBLUE :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorBLUE = DvbSubtitleFontColor' "BLUE"

pattern DvbSubtitleFontColorGREEN :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorGREEN = DvbSubtitleFontColor' "GREEN"

pattern DvbSubtitleFontColorRED :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorRED = DvbSubtitleFontColor' "RED"

pattern DvbSubtitleFontColorWHITE :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorWHITE = DvbSubtitleFontColor' "WHITE"

pattern DvbSubtitleFontColorYELLOW :: DvbSubtitleFontColor
pattern DvbSubtitleFontColorYELLOW = DvbSubtitleFontColor' "YELLOW"

{-# COMPLETE
  DvbSubtitleFontColorBLACK,
  DvbSubtitleFontColorBLUE,
  DvbSubtitleFontColorGREEN,
  DvbSubtitleFontColorRED,
  DvbSubtitleFontColorWHITE,
  DvbSubtitleFontColorYELLOW,
  DvbSubtitleFontColor'
  #-}

instance Prelude.FromText DvbSubtitleFontColor where
  parser = DvbSubtitleFontColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitleFontColor where
  toText (DvbSubtitleFontColor' x) = x

instance Prelude.Hashable DvbSubtitleFontColor

instance Prelude.NFData DvbSubtitleFontColor

instance Prelude.ToByteString DvbSubtitleFontColor

instance Prelude.ToQuery DvbSubtitleFontColor

instance Prelude.ToHeader DvbSubtitleFontColor

instance Prelude.ToJSON DvbSubtitleFontColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitleFontColor where
  parseJSON = Prelude.parseJSONText "DvbSubtitleFontColor"
