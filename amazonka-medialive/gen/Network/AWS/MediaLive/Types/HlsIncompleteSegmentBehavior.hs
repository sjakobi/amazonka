{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsIncompleteSegmentBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsIncompleteSegmentBehavior
  ( HlsIncompleteSegmentBehavior
      ( ..,
        HISBAuto,
        HISBSuppress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Incomplete Segment Behavior
data HlsIncompleteSegmentBehavior
  = HlsIncompleteSegmentBehavior'
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

pattern HISBAuto :: HlsIncompleteSegmentBehavior
pattern HISBAuto = HlsIncompleteSegmentBehavior' "AUTO"

pattern HISBSuppress :: HlsIncompleteSegmentBehavior
pattern HISBSuppress = HlsIncompleteSegmentBehavior' "SUPPRESS"

{-# COMPLETE
  HISBAuto,
  HISBSuppress,
  HlsIncompleteSegmentBehavior'
  #-}

instance FromText HlsIncompleteSegmentBehavior where
  parser = (HlsIncompleteSegmentBehavior' . mk) <$> takeText

instance ToText HlsIncompleteSegmentBehavior where
  toText (HlsIncompleteSegmentBehavior' ci) = original ci

instance Hashable HlsIncompleteSegmentBehavior

instance NFData HlsIncompleteSegmentBehavior

instance ToByteString HlsIncompleteSegmentBehavior

instance ToQuery HlsIncompleteSegmentBehavior

instance ToHeader HlsIncompleteSegmentBehavior

instance ToJSON HlsIncompleteSegmentBehavior where
  toJSON = toJSONText

instance FromJSON HlsIncompleteSegmentBehavior where
  parseJSON = parseJSONText "HlsIncompleteSegmentBehavior"
