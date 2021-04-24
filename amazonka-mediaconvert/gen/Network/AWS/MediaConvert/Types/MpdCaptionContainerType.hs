{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FragmentedMP4,
        Raw
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
data MpdCaptionContainerType
  = MpdCaptionContainerType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FragmentedMP4 :: MpdCaptionContainerType
pattern FragmentedMP4 = MpdCaptionContainerType' "FRAGMENTED_MP4"

pattern Raw :: MpdCaptionContainerType
pattern Raw = MpdCaptionContainerType' "RAW"

{-# COMPLETE
  FragmentedMP4,
  Raw,
  MpdCaptionContainerType'
  #-}

instance FromText MpdCaptionContainerType where
  parser = (MpdCaptionContainerType' . mk) <$> takeText

instance ToText MpdCaptionContainerType where
  toText (MpdCaptionContainerType' ci) = original ci

instance Hashable MpdCaptionContainerType

instance NFData MpdCaptionContainerType

instance ToByteString MpdCaptionContainerType

instance ToQuery MpdCaptionContainerType

instance ToHeader MpdCaptionContainerType

instance ToJSON MpdCaptionContainerType where
  toJSON = toJSONText

instance FromJSON MpdCaptionContainerType where
  parseJSON = parseJSONText "MpdCaptionContainerType"
