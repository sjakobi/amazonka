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
-- Module      : Network.AWS.MediaConvert.Types.HlsProgramDateTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsProgramDateTime
  ( HlsProgramDateTime
      ( ..,
        HlsProgramDateTimeEXCLUDE,
        HlsProgramDateTimeINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest
-- files. The value is calculated as follows: either the program date and
-- time are initialized using the input timecode source, or the time is
-- initialized using the input timecode source and the date is initialized
-- using the timestamp_offset.
newtype HlsProgramDateTime = HlsProgramDateTime'
  { fromHlsProgramDateTime ::
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

pattern HlsProgramDateTimeEXCLUDE :: HlsProgramDateTime
pattern HlsProgramDateTimeEXCLUDE = HlsProgramDateTime' "EXCLUDE"

pattern HlsProgramDateTimeINCLUDE :: HlsProgramDateTime
pattern HlsProgramDateTimeINCLUDE = HlsProgramDateTime' "INCLUDE"

{-# COMPLETE
  HlsProgramDateTimeEXCLUDE,
  HlsProgramDateTimeINCLUDE,
  HlsProgramDateTime'
  #-}

instance Prelude.FromText HlsProgramDateTime where
  parser = HlsProgramDateTime' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsProgramDateTime where
  toText (HlsProgramDateTime' x) = x

instance Prelude.Hashable HlsProgramDateTime

instance Prelude.NFData HlsProgramDateTime

instance Prelude.ToByteString HlsProgramDateTime

instance Prelude.ToQuery HlsProgramDateTime

instance Prelude.ToHeader HlsProgramDateTime

instance Prelude.ToJSON HlsProgramDateTime where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsProgramDateTime where
  parseJSON = Prelude.parseJSONText "HlsProgramDateTime"
