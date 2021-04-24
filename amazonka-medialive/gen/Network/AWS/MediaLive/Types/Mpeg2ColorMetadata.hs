{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Mpeg2ColorMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2ColorMetadata
  ( Mpeg2ColorMetadata
      ( ..,
        Ignore,
        Insert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Mpeg2 Color Metadata
data Mpeg2ColorMetadata
  = Mpeg2ColorMetadata'
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

pattern Ignore :: Mpeg2ColorMetadata
pattern Ignore = Mpeg2ColorMetadata' "IGNORE"

pattern Insert :: Mpeg2ColorMetadata
pattern Insert = Mpeg2ColorMetadata' "INSERT"

{-# COMPLETE
  Ignore,
  Insert,
  Mpeg2ColorMetadata'
  #-}

instance FromText Mpeg2ColorMetadata where
  parser = (Mpeg2ColorMetadata' . mk) <$> takeText

instance ToText Mpeg2ColorMetadata where
  toText (Mpeg2ColorMetadata' ci) = original ci

instance Hashable Mpeg2ColorMetadata

instance NFData Mpeg2ColorMetadata

instance ToByteString Mpeg2ColorMetadata

instance ToQuery Mpeg2ColorMetadata

instance ToHeader Mpeg2ColorMetadata

instance ToJSON Mpeg2ColorMetadata where
  toJSON = toJSONText

instance FromJSON Mpeg2ColorMetadata where
  parseJSON = parseJSONText "Mpeg2ColorMetadata"
