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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
  ( BurninSubtitleShadowColor
      ( ..,
        BurninSubtitleShadowColorBLACK,
        BurninSubtitleShadowColorNONE,
        BurninSubtitleShadowColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the shadow cast by the captions. All burn-in and
-- DVB-Sub font settings must match.
newtype BurninSubtitleShadowColor = BurninSubtitleShadowColor'
  { fromBurninSubtitleShadowColor ::
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

pattern BurninSubtitleShadowColorBLACK :: BurninSubtitleShadowColor
pattern BurninSubtitleShadowColorBLACK = BurninSubtitleShadowColor' "BLACK"

pattern BurninSubtitleShadowColorNONE :: BurninSubtitleShadowColor
pattern BurninSubtitleShadowColorNONE = BurninSubtitleShadowColor' "NONE"

pattern BurninSubtitleShadowColorWHITE :: BurninSubtitleShadowColor
pattern BurninSubtitleShadowColorWHITE = BurninSubtitleShadowColor' "WHITE"

{-# COMPLETE
  BurninSubtitleShadowColorBLACK,
  BurninSubtitleShadowColorNONE,
  BurninSubtitleShadowColorWHITE,
  BurninSubtitleShadowColor'
  #-}

instance Prelude.FromText BurninSubtitleShadowColor where
  parser = BurninSubtitleShadowColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleShadowColor where
  toText (BurninSubtitleShadowColor' x) = x

instance Prelude.Hashable BurninSubtitleShadowColor

instance Prelude.NFData BurninSubtitleShadowColor

instance Prelude.ToByteString BurninSubtitleShadowColor

instance Prelude.ToQuery BurninSubtitleShadowColor

instance Prelude.ToHeader BurninSubtitleShadowColor

instance Prelude.ToJSON BurninSubtitleShadowColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleShadowColor where
  parseJSON = Prelude.parseJSONText "BurninSubtitleShadowColor"
