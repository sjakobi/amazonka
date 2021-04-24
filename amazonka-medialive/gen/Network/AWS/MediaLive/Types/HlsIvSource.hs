{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsIvSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIvSource
  ( HlsIvSource
      ( ..,
        Explicit,
        FollowsSegmentNumber
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Iv Source
data HlsIvSource = HlsIvSource' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Explicit :: HlsIvSource
pattern Explicit = HlsIvSource' "EXPLICIT"

pattern FollowsSegmentNumber :: HlsIvSource
pattern FollowsSegmentNumber = HlsIvSource' "FOLLOWS_SEGMENT_NUMBER"

{-# COMPLETE
  Explicit,
  FollowsSegmentNumber,
  HlsIvSource'
  #-}

instance FromText HlsIvSource where
  parser = (HlsIvSource' . mk) <$> takeText

instance ToText HlsIvSource where
  toText (HlsIvSource' ci) = original ci

instance Hashable HlsIvSource

instance NFData HlsIvSource

instance ToByteString HlsIvSource

instance ToQuery HlsIvSource

instance ToHeader HlsIvSource

instance ToJSON HlsIvSource where
  toJSON = toJSONText

instance FromJSON HlsIvSource where
  parseJSON = parseJSONText "HlsIvSource"
