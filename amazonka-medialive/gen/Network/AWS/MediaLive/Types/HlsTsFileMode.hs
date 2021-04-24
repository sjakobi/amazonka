{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsTsFileMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsTsFileMode
  ( HlsTsFileMode
      ( ..,
        SegmentedFiles,
        SingleFile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Ts File Mode
data HlsTsFileMode = HlsTsFileMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SegmentedFiles :: HlsTsFileMode
pattern SegmentedFiles = HlsTsFileMode' "SEGMENTED_FILES"

pattern SingleFile :: HlsTsFileMode
pattern SingleFile = HlsTsFileMode' "SINGLE_FILE"

{-# COMPLETE
  SegmentedFiles,
  SingleFile,
  HlsTsFileMode'
  #-}

instance FromText HlsTsFileMode where
  parser = (HlsTsFileMode' . mk) <$> takeText

instance ToText HlsTsFileMode where
  toText (HlsTsFileMode' ci) = original ci

instance Hashable HlsTsFileMode

instance NFData HlsTsFileMode

instance ToByteString HlsTsFileMode

instance ToQuery HlsTsFileMode

instance ToHeader HlsTsFileMode

instance ToJSON HlsTsFileMode where
  toJSON = toJSONText

instance FromJSON HlsTsFileMode where
  parseJSON = parseJSONText "HlsTsFileMode"
