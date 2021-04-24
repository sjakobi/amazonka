{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265InterlaceMode
  ( H265InterlaceMode
      ( ..,
        HBottomField,
        HFollowBottomField,
        HFollowTopField,
        HProgressive,
        HTopField
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
data H265InterlaceMode = H265InterlaceMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HBottomField :: H265InterlaceMode
pattern HBottomField = H265InterlaceMode' "BOTTOM_FIELD"

pattern HFollowBottomField :: H265InterlaceMode
pattern HFollowBottomField = H265InterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern HFollowTopField :: H265InterlaceMode
pattern HFollowTopField = H265InterlaceMode' "FOLLOW_TOP_FIELD"

pattern HProgressive :: H265InterlaceMode
pattern HProgressive = H265InterlaceMode' "PROGRESSIVE"

pattern HTopField :: H265InterlaceMode
pattern HTopField = H265InterlaceMode' "TOP_FIELD"

{-# COMPLETE
  HBottomField,
  HFollowBottomField,
  HFollowTopField,
  HProgressive,
  HTopField,
  H265InterlaceMode'
  #-}

instance FromText H265InterlaceMode where
  parser = (H265InterlaceMode' . mk) <$> takeText

instance ToText H265InterlaceMode where
  toText (H265InterlaceMode' ci) = original ci

instance Hashable H265InterlaceMode

instance NFData H265InterlaceMode

instance ToByteString H265InterlaceMode

instance ToQuery H265InterlaceMode

instance ToHeader H265InterlaceMode

instance ToJSON H265InterlaceMode where
  toJSON = toJSONText

instance FromJSON H265InterlaceMode where
  parseJSON = parseJSONText "H265InterlaceMode"
