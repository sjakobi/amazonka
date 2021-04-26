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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleBackgroundColor
  ( BurninSubtitleBackgroundColor
      ( ..,
        BurninSubtitleBackgroundColorBLACK,
        BurninSubtitleBackgroundColorNONE,
        BurninSubtitleBackgroundColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the rectangle behind the captions. All burn-in
-- and DVB-Sub font settings must match.
newtype BurninSubtitleBackgroundColor = BurninSubtitleBackgroundColor'
  { fromBurninSubtitleBackgroundColor ::
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

pattern BurninSubtitleBackgroundColorBLACK :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColorBLACK = BurninSubtitleBackgroundColor' "BLACK"

pattern BurninSubtitleBackgroundColorNONE :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColorNONE = BurninSubtitleBackgroundColor' "NONE"

pattern BurninSubtitleBackgroundColorWHITE :: BurninSubtitleBackgroundColor
pattern BurninSubtitleBackgroundColorWHITE = BurninSubtitleBackgroundColor' "WHITE"

{-# COMPLETE
  BurninSubtitleBackgroundColorBLACK,
  BurninSubtitleBackgroundColorNONE,
  BurninSubtitleBackgroundColorWHITE,
  BurninSubtitleBackgroundColor'
  #-}

instance Prelude.FromText BurninSubtitleBackgroundColor where
  parser = BurninSubtitleBackgroundColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleBackgroundColor where
  toText (BurninSubtitleBackgroundColor' x) = x

instance Prelude.Hashable BurninSubtitleBackgroundColor

instance Prelude.NFData BurninSubtitleBackgroundColor

instance Prelude.ToByteString BurninSubtitleBackgroundColor

instance Prelude.ToQuery BurninSubtitleBackgroundColor

instance Prelude.ToHeader BurninSubtitleBackgroundColor

instance Prelude.ToJSON BurninSubtitleBackgroundColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleBackgroundColor where
  parseJSON = Prelude.parseJSONText "BurninSubtitleBackgroundColor"
