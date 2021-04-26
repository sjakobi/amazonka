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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleBackgroundColor
  ( DvbSubtitleBackgroundColor
      ( ..,
        DvbSubtitleBackgroundColorBLACK,
        DvbSubtitleBackgroundColorNONE,
        DvbSubtitleBackgroundColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the color of the rectangle behind the captions. All burn-in
-- and DVB-Sub font settings must match.
newtype DvbSubtitleBackgroundColor = DvbSubtitleBackgroundColor'
  { fromDvbSubtitleBackgroundColor ::
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

pattern DvbSubtitleBackgroundColorBLACK :: DvbSubtitleBackgroundColor
pattern DvbSubtitleBackgroundColorBLACK = DvbSubtitleBackgroundColor' "BLACK"

pattern DvbSubtitleBackgroundColorNONE :: DvbSubtitleBackgroundColor
pattern DvbSubtitleBackgroundColorNONE = DvbSubtitleBackgroundColor' "NONE"

pattern DvbSubtitleBackgroundColorWHITE :: DvbSubtitleBackgroundColor
pattern DvbSubtitleBackgroundColorWHITE = DvbSubtitleBackgroundColor' "WHITE"

{-# COMPLETE
  DvbSubtitleBackgroundColorBLACK,
  DvbSubtitleBackgroundColorNONE,
  DvbSubtitleBackgroundColorWHITE,
  DvbSubtitleBackgroundColor'
  #-}

instance Prelude.FromText DvbSubtitleBackgroundColor where
  parser = DvbSubtitleBackgroundColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitleBackgroundColor where
  toText (DvbSubtitleBackgroundColor' x) = x

instance Prelude.Hashable DvbSubtitleBackgroundColor

instance Prelude.NFData DvbSubtitleBackgroundColor

instance Prelude.ToByteString DvbSubtitleBackgroundColor

instance Prelude.ToQuery DvbSubtitleBackgroundColor

instance Prelude.ToHeader DvbSubtitleBackgroundColor

instance Prelude.ToJSON DvbSubtitleBackgroundColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitleBackgroundColor where
  parseJSON = Prelude.parseJSONText "DvbSubtitleBackgroundColor"
