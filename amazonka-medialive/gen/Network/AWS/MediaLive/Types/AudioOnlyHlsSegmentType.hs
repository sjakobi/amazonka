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
-- Module      : Network.AWS.MediaLive.Types.AudioOnlyHlsSegmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioOnlyHlsSegmentType
  ( AudioOnlyHlsSegmentType
      ( ..,
        AudioOnlyHlsSegmentTypeAAC,
        AudioOnlyHlsSegmentTypeFMP4
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Only Hls Segment Type
newtype AudioOnlyHlsSegmentType = AudioOnlyHlsSegmentType'
  { fromAudioOnlyHlsSegmentType ::
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

pattern AudioOnlyHlsSegmentTypeAAC :: AudioOnlyHlsSegmentType
pattern AudioOnlyHlsSegmentTypeAAC = AudioOnlyHlsSegmentType' "AAC"

pattern AudioOnlyHlsSegmentTypeFMP4 :: AudioOnlyHlsSegmentType
pattern AudioOnlyHlsSegmentTypeFMP4 = AudioOnlyHlsSegmentType' "FMP4"

{-# COMPLETE
  AudioOnlyHlsSegmentTypeAAC,
  AudioOnlyHlsSegmentTypeFMP4,
  AudioOnlyHlsSegmentType'
  #-}

instance Prelude.FromText AudioOnlyHlsSegmentType where
  parser = AudioOnlyHlsSegmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioOnlyHlsSegmentType where
  toText (AudioOnlyHlsSegmentType' x) = x

instance Prelude.Hashable AudioOnlyHlsSegmentType

instance Prelude.NFData AudioOnlyHlsSegmentType

instance Prelude.ToByteString AudioOnlyHlsSegmentType

instance Prelude.ToQuery AudioOnlyHlsSegmentType

instance Prelude.ToHeader AudioOnlyHlsSegmentType

instance Prelude.ToJSON AudioOnlyHlsSegmentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioOnlyHlsSegmentType where
  parseJSON = Prelude.parseJSONText "AudioOnlyHlsSegmentType"
