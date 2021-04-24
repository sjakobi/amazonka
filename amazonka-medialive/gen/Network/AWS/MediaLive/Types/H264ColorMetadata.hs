{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H264ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264ColorMetadata
  ( H264ColorMetadata
      ( ..,
        HCMIgnore,
        HCMInsert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H264 Color Metadata
data H264ColorMetadata = H264ColorMetadata' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCMIgnore :: H264ColorMetadata
pattern HCMIgnore = H264ColorMetadata' "IGNORE"

pattern HCMInsert :: H264ColorMetadata
pattern HCMInsert = H264ColorMetadata' "INSERT"

{-# COMPLETE
  HCMIgnore,
  HCMInsert,
  H264ColorMetadata'
  #-}

instance FromText H264ColorMetadata where
  parser = (H264ColorMetadata' . mk) <$> takeText

instance ToText H264ColorMetadata where
  toText (H264ColorMetadata' ci) = original ci

instance Hashable H264ColorMetadata

instance NFData H264ColorMetadata

instance ToByteString H264ColorMetadata

instance ToQuery H264ColorMetadata

instance ToHeader H264ColorMetadata

instance ToJSON H264ColorMetadata where
  toJSON = toJSONText

instance FromJSON H264ColorMetadata where
  parseJSON = parseJSONText "H264ColorMetadata"
