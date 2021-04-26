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
-- Module      : Network.AWS.MediaLive.Types.BurnInFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInFontColor
  ( BurnInFontColor
      ( ..,
        BurnInFontColorBLACK,
        BurnInFontColorBLUE,
        BurnInFontColorGREEN,
        BurnInFontColorRED,
        BurnInFontColorWHITE,
        BurnInFontColorYELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Font Color
newtype BurnInFontColor = BurnInFontColor'
  { fromBurnInFontColor ::
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

pattern BurnInFontColorBLACK :: BurnInFontColor
pattern BurnInFontColorBLACK = BurnInFontColor' "BLACK"

pattern BurnInFontColorBLUE :: BurnInFontColor
pattern BurnInFontColorBLUE = BurnInFontColor' "BLUE"

pattern BurnInFontColorGREEN :: BurnInFontColor
pattern BurnInFontColorGREEN = BurnInFontColor' "GREEN"

pattern BurnInFontColorRED :: BurnInFontColor
pattern BurnInFontColorRED = BurnInFontColor' "RED"

pattern BurnInFontColorWHITE :: BurnInFontColor
pattern BurnInFontColorWHITE = BurnInFontColor' "WHITE"

pattern BurnInFontColorYELLOW :: BurnInFontColor
pattern BurnInFontColorYELLOW = BurnInFontColor' "YELLOW"

{-# COMPLETE
  BurnInFontColorBLACK,
  BurnInFontColorBLUE,
  BurnInFontColorGREEN,
  BurnInFontColorRED,
  BurnInFontColorWHITE,
  BurnInFontColorYELLOW,
  BurnInFontColor'
  #-}

instance Prelude.FromText BurnInFontColor where
  parser = BurnInFontColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurnInFontColor where
  toText (BurnInFontColor' x) = x

instance Prelude.Hashable BurnInFontColor

instance Prelude.NFData BurnInFontColor

instance Prelude.ToByteString BurnInFontColor

instance Prelude.ToQuery BurnInFontColor

instance Prelude.ToHeader BurnInFontColor

instance Prelude.ToJSON BurnInFontColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurnInFontColor where
  parseJSON = Prelude.parseJSONText "BurnInFontColor"
