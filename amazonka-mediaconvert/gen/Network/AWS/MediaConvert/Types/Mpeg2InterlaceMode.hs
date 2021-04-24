{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2InterlaceMode
  ( Mpeg2InterlaceMode
      ( ..,
        MIMBottomField,
        MIMFollowBottomField,
        MIMFollowTopField,
        MIMProgressive,
        MIMTopField
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
data Mpeg2InterlaceMode
  = Mpeg2InterlaceMode'
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

pattern MIMBottomField :: Mpeg2InterlaceMode
pattern MIMBottomField = Mpeg2InterlaceMode' "BOTTOM_FIELD"

pattern MIMFollowBottomField :: Mpeg2InterlaceMode
pattern MIMFollowBottomField = Mpeg2InterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern MIMFollowTopField :: Mpeg2InterlaceMode
pattern MIMFollowTopField = Mpeg2InterlaceMode' "FOLLOW_TOP_FIELD"

pattern MIMProgressive :: Mpeg2InterlaceMode
pattern MIMProgressive = Mpeg2InterlaceMode' "PROGRESSIVE"

pattern MIMTopField :: Mpeg2InterlaceMode
pattern MIMTopField = Mpeg2InterlaceMode' "TOP_FIELD"

{-# COMPLETE
  MIMBottomField,
  MIMFollowBottomField,
  MIMFollowTopField,
  MIMProgressive,
  MIMTopField,
  Mpeg2InterlaceMode'
  #-}

instance FromText Mpeg2InterlaceMode where
  parser = (Mpeg2InterlaceMode' . mk) <$> takeText

instance ToText Mpeg2InterlaceMode where
  toText (Mpeg2InterlaceMode' ci) = original ci

instance Hashable Mpeg2InterlaceMode

instance NFData Mpeg2InterlaceMode

instance ToByteString Mpeg2InterlaceMode

instance ToQuery Mpeg2InterlaceMode

instance ToHeader Mpeg2InterlaceMode

instance ToJSON Mpeg2InterlaceMode where
  toJSON = toJSONText

instance FromJSON Mpeg2InterlaceMode where
  parseJSON = parseJSONText "Mpeg2InterlaceMode"
