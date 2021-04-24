{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsSegmentControl
  ( HlsSegmentControl
      ( ..,
        SegmentedFiles,
        SingleFile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
data HlsSegmentControl = HlsSegmentControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SegmentedFiles :: HlsSegmentControl
pattern SegmentedFiles = HlsSegmentControl' "SEGMENTED_FILES"

pattern SingleFile :: HlsSegmentControl
pattern SingleFile = HlsSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  SegmentedFiles,
  SingleFile,
  HlsSegmentControl'
  #-}

instance FromText HlsSegmentControl where
  parser = (HlsSegmentControl' . mk) <$> takeText

instance ToText HlsSegmentControl where
  toText (HlsSegmentControl' ci) = original ci

instance Hashable HlsSegmentControl

instance NFData HlsSegmentControl

instance ToByteString HlsSegmentControl

instance ToQuery HlsSegmentControl

instance ToHeader HlsSegmentControl

instance ToJSON HlsSegmentControl where
  toJSON = toJSONText

instance FromJSON HlsSegmentControl where
  parseJSON = parseJSONText "HlsSegmentControl"
