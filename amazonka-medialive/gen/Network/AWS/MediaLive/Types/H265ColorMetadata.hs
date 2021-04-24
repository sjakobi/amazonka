{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.H265ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265ColorMetadata
  ( H265ColorMetadata
      ( ..,
        HIgnore,
        HInsert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H265 Color Metadata
data H265ColorMetadata = H265ColorMetadata' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HIgnore :: H265ColorMetadata
pattern HIgnore = H265ColorMetadata' "IGNORE"

pattern HInsert :: H265ColorMetadata
pattern HInsert = H265ColorMetadata' "INSERT"

{-# COMPLETE
  HIgnore,
  HInsert,
  H265ColorMetadata'
  #-}

instance FromText H265ColorMetadata where
  parser = (H265ColorMetadata' . mk) <$> takeText

instance ToText H265ColorMetadata where
  toText (H265ColorMetadata' ci) = original ci

instance Hashable H265ColorMetadata

instance NFData H265ColorMetadata

instance ToByteString H265ColorMetadata

instance ToQuery H265ColorMetadata

instance ToHeader H265ColorMetadata

instance ToJSON H265ColorMetadata where
  toJSON = toJSONText

instance FromJSON H265ColorMetadata where
  parseJSON = parseJSONText "H265ColorMetadata"
