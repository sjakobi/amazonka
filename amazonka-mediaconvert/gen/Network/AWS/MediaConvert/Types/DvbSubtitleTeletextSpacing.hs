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
-- Module      : Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbSubtitleTeletextSpacing
  ( DvbSubtitleTeletextSpacing
      ( ..,
        DvbSubtitleTeletextSpacingFIXEDGRID,
        DvbSubtitleTeletextSpacingPROPORTIONAL
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
newtype DvbSubtitleTeletextSpacing = DvbSubtitleTeletextSpacing'
  { fromDvbSubtitleTeletextSpacing ::
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

pattern DvbSubtitleTeletextSpacingFIXEDGRID :: DvbSubtitleTeletextSpacing
pattern DvbSubtitleTeletextSpacingFIXEDGRID = DvbSubtitleTeletextSpacing' "FIXED_GRID"

pattern DvbSubtitleTeletextSpacingPROPORTIONAL :: DvbSubtitleTeletextSpacing
pattern DvbSubtitleTeletextSpacingPROPORTIONAL = DvbSubtitleTeletextSpacing' "PROPORTIONAL"

{-# COMPLETE
  DvbSubtitleTeletextSpacingFIXEDGRID,
  DvbSubtitleTeletextSpacingPROPORTIONAL,
  DvbSubtitleTeletextSpacing'
  #-}

instance Prelude.FromText DvbSubtitleTeletextSpacing where
  parser = DvbSubtitleTeletextSpacing' Prelude.<$> Prelude.takeText

instance Prelude.ToText DvbSubtitleTeletextSpacing where
  toText (DvbSubtitleTeletextSpacing' x) = x

instance Prelude.Hashable DvbSubtitleTeletextSpacing

instance Prelude.NFData DvbSubtitleTeletextSpacing

instance Prelude.ToByteString DvbSubtitleTeletextSpacing

instance Prelude.ToQuery DvbSubtitleTeletextSpacing

instance Prelude.ToHeader DvbSubtitleTeletextSpacing

instance Prelude.ToJSON DvbSubtitleTeletextSpacing where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DvbSubtitleTeletextSpacing where
  parseJSON = Prelude.parseJSONText "DvbSubtitleTeletextSpacing"
