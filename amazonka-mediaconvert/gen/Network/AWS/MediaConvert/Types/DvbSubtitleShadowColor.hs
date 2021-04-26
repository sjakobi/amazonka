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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleShadowColor
  ( DvbSubtitleShadowColor
      ( ..,
        DvbSubtitleShadowColorBLACK,
        DvbSubtitleShadowColorNONE,
        DvbSubtitleShadowColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the shadow cast by the captions. All burn-in and
-- DVB-Sub font settings must match.
newtype DvbSubtitleShadowColor = DvbSubtitleShadowColor'
  { fromDvbSubtitleShadowColor ::
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

pattern DvbSubtitleShadowColorBLACK :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColorBLACK = DvbSubtitleShadowColor' "BLACK"

pattern DvbSubtitleShadowColorNONE :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColorNONE = DvbSubtitleShadowColor' "NONE"

pattern DvbSubtitleShadowColorWHITE :: DvbSubtitleShadowColor
pattern DvbSubtitleShadowColorWHITE = DvbSubtitleShadowColor' "WHITE"

{-# COMPLETE
  DvbSubtitleShadowColorBLACK,
  DvbSubtitleShadowColorNONE,
  DvbSubtitleShadowColorWHITE,
  DvbSubtitleShadowColor'
  #-}

instance Prelude.FromText DvbSubtitleShadowColor where
  parser = DvbSubtitleShadowColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitleShadowColor where
  toText (DvbSubtitleShadowColor' x) = x

instance Prelude.Hashable DvbSubtitleShadowColor

instance Prelude.NFData DvbSubtitleShadowColor

instance Prelude.ToByteString DvbSubtitleShadowColor

instance Prelude.ToQuery DvbSubtitleShadowColor

instance Prelude.ToHeader DvbSubtitleShadowColor

instance Prelude.ToJSON DvbSubtitleShadowColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitleShadowColor where
  parseJSON = Prelude.parseJSONText "DvbSubtitleShadowColor"
