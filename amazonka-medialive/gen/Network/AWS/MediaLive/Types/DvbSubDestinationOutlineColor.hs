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
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
  ( DvbSubDestinationOutlineColor
      ( ..,
        DvbSubDestinationOutlineColorBLACK,
        DvbSubDestinationOutlineColorBLUE,
        DvbSubDestinationOutlineColorGREEN,
        DvbSubDestinationOutlineColorRED,
        DvbSubDestinationOutlineColorWHITE,
        DvbSubDestinationOutlineColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Dvb Sub Destination Outline Color
newtype DvbSubDestinationOutlineColor = DvbSubDestinationOutlineColor'
  { fromDvbSubDestinationOutlineColor ::
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

pattern DvbSubDestinationOutlineColorBLACK :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorBLACK = DvbSubDestinationOutlineColor' "BLACK"

pattern DvbSubDestinationOutlineColorBLUE :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorBLUE = DvbSubDestinationOutlineColor' "BLUE"

pattern DvbSubDestinationOutlineColorGREEN :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorGREEN = DvbSubDestinationOutlineColor' "GREEN"

pattern DvbSubDestinationOutlineColorRED :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorRED = DvbSubDestinationOutlineColor' "RED"

pattern DvbSubDestinationOutlineColorWHITE :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorWHITE = DvbSubDestinationOutlineColor' "WHITE"

pattern DvbSubDestinationOutlineColorYELLOW :: DvbSubDestinationOutlineColor
pattern DvbSubDestinationOutlineColorYELLOW = DvbSubDestinationOutlineColor' "YELLOW"

{-# COMPLETE
  DvbSubDestinationOutlineColorBLACK,
  DvbSubDestinationOutlineColorBLUE,
  DvbSubDestinationOutlineColorGREEN,
  DvbSubDestinationOutlineColorRED,
  DvbSubDestinationOutlineColorWHITE,
  DvbSubDestinationOutlineColorYELLOW,
  DvbSubDestinationOutlineColor'
  #-}

instance Prelude.FromText DvbSubDestinationOutlineColor where
  parser = DvbSubDestinationOutlineColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubDestinationOutlineColor where
  toText (DvbSubDestinationOutlineColor' x) = x

instance Prelude.Hashable DvbSubDestinationOutlineColor

instance Prelude.NFData DvbSubDestinationOutlineColor

instance Prelude.ToByteString DvbSubDestinationOutlineColor

instance Prelude.ToQuery DvbSubDestinationOutlineColor

instance Prelude.ToHeader DvbSubDestinationOutlineColor

instance Prelude.ToJSON DvbSubDestinationOutlineColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubDestinationOutlineColor where
  parseJSON = Prelude.parseJSONText "DvbSubDestinationOutlineColor"
