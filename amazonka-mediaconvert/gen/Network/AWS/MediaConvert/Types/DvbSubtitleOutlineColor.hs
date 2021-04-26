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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleOutlineColor
  ( DvbSubtitleOutlineColor
      ( ..,
        DvbSubtitleOutlineColorBLACK,
        DvbSubtitleOutlineColorBLUE,
        DvbSubtitleOutlineColorGREEN,
        DvbSubtitleOutlineColorRED,
        DvbSubtitleOutlineColorWHITE,
        DvbSubtitleOutlineColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies font outline color. This option is not valid for source
-- captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
newtype DvbSubtitleOutlineColor = DvbSubtitleOutlineColor'
  { fromDvbSubtitleOutlineColor ::
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

pattern DvbSubtitleOutlineColorBLACK :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorBLACK = DvbSubtitleOutlineColor' "BLACK"

pattern DvbSubtitleOutlineColorBLUE :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorBLUE = DvbSubtitleOutlineColor' "BLUE"

pattern DvbSubtitleOutlineColorGREEN :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorGREEN = DvbSubtitleOutlineColor' "GREEN"

pattern DvbSubtitleOutlineColorRED :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorRED = DvbSubtitleOutlineColor' "RED"

pattern DvbSubtitleOutlineColorWHITE :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorWHITE = DvbSubtitleOutlineColor' "WHITE"

pattern DvbSubtitleOutlineColorYELLOW :: DvbSubtitleOutlineColor
pattern DvbSubtitleOutlineColorYELLOW = DvbSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  DvbSubtitleOutlineColorBLACK,
  DvbSubtitleOutlineColorBLUE,
  DvbSubtitleOutlineColorGREEN,
  DvbSubtitleOutlineColorRED,
  DvbSubtitleOutlineColorWHITE,
  DvbSubtitleOutlineColorYELLOW,
  DvbSubtitleOutlineColor'
  #-}

instance Prelude.FromText DvbSubtitleOutlineColor where
  parser = DvbSubtitleOutlineColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitleOutlineColor where
  toText (DvbSubtitleOutlineColor' x) = x

instance Prelude.Hashable DvbSubtitleOutlineColor

instance Prelude.NFData DvbSubtitleOutlineColor

instance Prelude.ToByteString DvbSubtitleOutlineColor

instance Prelude.ToQuery DvbSubtitleOutlineColor

instance Prelude.ToHeader DvbSubtitleOutlineColor

instance Prelude.ToJSON DvbSubtitleOutlineColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitleOutlineColor where
  parseJSON = Prelude.parseJSONText "DvbSubtitleOutlineColor"
