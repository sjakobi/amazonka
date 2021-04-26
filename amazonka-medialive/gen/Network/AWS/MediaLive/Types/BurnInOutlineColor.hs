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
-- Module      : Network.AWS.MediaLive.Types.BurnInOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInOutlineColor
  ( BurnInOutlineColor
      ( ..,
        BurnInOutlineColorBLACK,
        BurnInOutlineColorBLUE,
        BurnInOutlineColorGREEN,
        BurnInOutlineColorRED,
        BurnInOutlineColorWHITE,
        BurnInOutlineColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Outline Color
newtype BurnInOutlineColor = BurnInOutlineColor'
  { fromBurnInOutlineColor ::
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

pattern BurnInOutlineColorBLACK :: BurnInOutlineColor
pattern BurnInOutlineColorBLACK = BurnInOutlineColor' "BLACK"

pattern BurnInOutlineColorBLUE :: BurnInOutlineColor
pattern BurnInOutlineColorBLUE = BurnInOutlineColor' "BLUE"

pattern BurnInOutlineColorGREEN :: BurnInOutlineColor
pattern BurnInOutlineColorGREEN = BurnInOutlineColor' "GREEN"

pattern BurnInOutlineColorRED :: BurnInOutlineColor
pattern BurnInOutlineColorRED = BurnInOutlineColor' "RED"

pattern BurnInOutlineColorWHITE :: BurnInOutlineColor
pattern BurnInOutlineColorWHITE = BurnInOutlineColor' "WHITE"

pattern BurnInOutlineColorYELLOW :: BurnInOutlineColor
pattern BurnInOutlineColorYELLOW = BurnInOutlineColor' "YELLOW"

{-# COMPLETE
  BurnInOutlineColorBLACK,
  BurnInOutlineColorBLUE,
  BurnInOutlineColorGREEN,
  BurnInOutlineColorRED,
  BurnInOutlineColorWHITE,
  BurnInOutlineColorYELLOW,
  BurnInOutlineColor'
  #-}

instance Prelude.FromText BurnInOutlineColor where
  parser = BurnInOutlineColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurnInOutlineColor where
  toText (BurnInOutlineColor' x) = x

instance Prelude.Hashable BurnInOutlineColor

instance Prelude.NFData BurnInOutlineColor

instance Prelude.ToByteString BurnInOutlineColor

instance Prelude.ToQuery BurnInOutlineColor

instance Prelude.ToHeader BurnInOutlineColor

instance Prelude.ToJSON BurnInOutlineColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurnInOutlineColor where
  parseJSON = Prelude.parseJSONText "BurnInOutlineColor"
