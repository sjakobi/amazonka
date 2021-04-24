{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsDirectoryStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsDirectoryStructure
  ( HlsDirectoryStructure
      ( ..,
        SingleDirectory,
        SubdirectoryPerStream
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Indicates whether segments should be placed in subdirectories.
data HlsDirectoryStructure
  = HlsDirectoryStructure'
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

pattern SingleDirectory :: HlsDirectoryStructure
pattern SingleDirectory = HlsDirectoryStructure' "SINGLE_DIRECTORY"

pattern SubdirectoryPerStream :: HlsDirectoryStructure
pattern SubdirectoryPerStream = HlsDirectoryStructure' "SUBDIRECTORY_PER_STREAM"

{-# COMPLETE
  SingleDirectory,
  SubdirectoryPerStream,
  HlsDirectoryStructure'
  #-}

instance FromText HlsDirectoryStructure where
  parser = (HlsDirectoryStructure' . mk) <$> takeText

instance ToText HlsDirectoryStructure where
  toText (HlsDirectoryStructure' ci) = original ci

instance Hashable HlsDirectoryStructure

instance NFData HlsDirectoryStructure

instance ToByteString HlsDirectoryStructure

instance ToQuery HlsDirectoryStructure

instance ToHeader HlsDirectoryStructure

instance ToJSON HlsDirectoryStructure where
  toJSON = toJSONText

instance FromJSON HlsDirectoryStructure where
  parseJSON = parseJSONText "HlsDirectoryStructure"
