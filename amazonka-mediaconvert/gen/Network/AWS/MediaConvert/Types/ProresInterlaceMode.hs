{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.ProresInterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresInterlaceMode
  ( ProresInterlaceMode
      ( ..,
        PIMBottomField,
        PIMFollowBottomField,
        PIMFollowTopField,
        PIMProgressive,
        PIMTopField
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
data ProresInterlaceMode
  = ProresInterlaceMode'
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

pattern PIMBottomField :: ProresInterlaceMode
pattern PIMBottomField = ProresInterlaceMode' "BOTTOM_FIELD"

pattern PIMFollowBottomField :: ProresInterlaceMode
pattern PIMFollowBottomField = ProresInterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern PIMFollowTopField :: ProresInterlaceMode
pattern PIMFollowTopField = ProresInterlaceMode' "FOLLOW_TOP_FIELD"

pattern PIMProgressive :: ProresInterlaceMode
pattern PIMProgressive = ProresInterlaceMode' "PROGRESSIVE"

pattern PIMTopField :: ProresInterlaceMode
pattern PIMTopField = ProresInterlaceMode' "TOP_FIELD"

{-# COMPLETE
  PIMBottomField,
  PIMFollowBottomField,
  PIMFollowTopField,
  PIMProgressive,
  PIMTopField,
  ProresInterlaceMode'
  #-}

instance FromText ProresInterlaceMode where
  parser = (ProresInterlaceMode' . mk) <$> takeText

instance ToText ProresInterlaceMode where
  toText (ProresInterlaceMode' ci) = original ci

instance Hashable ProresInterlaceMode

instance NFData ProresInterlaceMode

instance ToByteString ProresInterlaceMode

instance ToQuery ProresInterlaceMode

instance ToHeader ProresInterlaceMode

instance ToJSON ProresInterlaceMode where
  toJSON = toJSONText

instance FromJSON ProresInterlaceMode where
  parseJSON = parseJSONText "ProresInterlaceMode"
