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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleTeletextSpacing
  ( BurninSubtitleTeletextSpacing
      ( ..,
        BurninSubtitleTeletextSpacingFIXEDGRID,
        BurninSubtitleTeletextSpacingPROPORTIONAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Only applies to jobs with input captions in Teletext or STL formats.
-- Specify whether the spacing between letters in your captions is set by
-- the captions grid or varies depending on letter width. Choose fixed grid
-- to conform to the spacing specified in the captions file more
-- accurately. Choose proportional to make the text easier to read if the
-- captions are closed caption.
newtype BurninSubtitleTeletextSpacing = BurninSubtitleTeletextSpacing'
  { fromBurninSubtitleTeletextSpacing ::
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

pattern BurninSubtitleTeletextSpacingFIXEDGRID :: BurninSubtitleTeletextSpacing
pattern BurninSubtitleTeletextSpacingFIXEDGRID = BurninSubtitleTeletextSpacing' "FIXED_GRID"

pattern BurninSubtitleTeletextSpacingPROPORTIONAL :: BurninSubtitleTeletextSpacing
pattern BurninSubtitleTeletextSpacingPROPORTIONAL = BurninSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  BurninSubtitleTeletextSpacingFIXEDGRID,
  BurninSubtitleTeletextSpacingPROPORTIONAL,
  BurninSubtitleTeletextSpacing'
  #-}

instance Prelude.FromText BurninSubtitleTeletextSpacing where
  parser = BurninSubtitleTeletextSpacing' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurninSubtitleTeletextSpacing where
  toText (BurninSubtitleTeletextSpacing' x) = x

instance Prelude.Hashable BurninSubtitleTeletextSpacing

instance Prelude.NFData BurninSubtitleTeletextSpacing

instance Prelude.ToByteString BurninSubtitleTeletextSpacing

instance Prelude.ToQuery BurninSubtitleTeletextSpacing

instance Prelude.ToHeader BurninSubtitleTeletextSpacing

instance Prelude.ToJSON BurninSubtitleTeletextSpacing where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurninSubtitleTeletextSpacing where
  parseJSON = Prelude.parseJSONText "BurninSubtitleTeletextSpacing"
