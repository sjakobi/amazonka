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
-- Module      : Network.AWS.MediaConvert.Types.MpdCaptionContainerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdCaptionContainerType
  ( MpdCaptionContainerType
      ( ..,
        MpdCaptionContainerTypeFRAGMENTEDMP4,
        MpdCaptionContainerTypeRAW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this setting only in DASH output groups that include sidecar TTML or
-- IMSC captions. You specify sidecar captions in a separate output from
-- your audio and video. Choose Raw (RAW) for captions in a single XML file
-- in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for
-- captions in XML format contained within fragmented MP4 files. This set
-- of fragmented MP4 files is separate from your video and audio fragmented
-- MP4 files.
newtype MpdCaptionContainerType = MpdCaptionContainerType'
  { fromMpdCaptionContainerType ::
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

pattern MpdCaptionContainerTypeFRAGMENTEDMP4 :: MpdCaptionContainerType
pattern MpdCaptionContainerTypeFRAGMENTEDMP4 = MpdCaptionContainerType' "FRAGMENTED_MP4"

pattern MpdCaptionContainerTypeRAW :: MpdCaptionContainerType
pattern MpdCaptionContainerTypeRAW = MpdCaptionContainerType' "RAW"

{-# COMPLETE
  MpdCaptionContainerTypeFRAGMENTEDMP4,
  MpdCaptionContainerTypeRAW,
  MpdCaptionContainerType'
  #-}

instance Prelude.FromText MpdCaptionContainerType where
  parser = MpdCaptionContainerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MpdCaptionContainerType where
  toText (MpdCaptionContainerType' x) = x

instance Prelude.Hashable MpdCaptionContainerType

instance Prelude.NFData MpdCaptionContainerType

instance Prelude.ToByteString MpdCaptionContainerType

instance Prelude.ToQuery MpdCaptionContainerType

instance Prelude.ToHeader MpdCaptionContainerType

instance Prelude.ToJSON MpdCaptionContainerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MpdCaptionContainerType where
  parseJSON = Prelude.parseJSONText "MpdCaptionContainerType"
