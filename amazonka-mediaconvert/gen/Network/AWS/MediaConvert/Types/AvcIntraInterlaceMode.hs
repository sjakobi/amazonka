{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.AvcIntraInterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AvcIntraInterlaceMode
  ( AvcIntraInterlaceMode
      ( ..,
        AIIMBottomField,
        AIIMFollowBottomField,
        AIIMFollowTopField,
        AIIMProgressive,
        AIIMTopField
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose the scan line type for the output. Keep the default value, Progressive (PROGRESSIVE) to create a progressive output, regardless of the scan type of your input. Use Top field first (TOP_FIELD) or Bottom field first (BOTTOM_FIELD) to create an output that's interlaced with the same field polarity throughout. Use Follow, default top (FOLLOW_TOP_FIELD) or Follow, default bottom (FOLLOW_BOTTOM_FIELD) to produce outputs with the same field polarity as the source. For jobs that have multiple inputs, the output field polarity might change over the course of the output. Follow behavior depends on the input scan type. If the source is interlaced, the output will be interlaced with the same polarity as the source. If the source is progressive, the output will be interlaced with top field bottom field first, depending on which of the Follow options you choose.
data AvcIntraInterlaceMode
  = AvcIntraInterlaceMode'
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

pattern AIIMBottomField :: AvcIntraInterlaceMode
pattern AIIMBottomField = AvcIntraInterlaceMode' "BOTTOM_FIELD"

pattern AIIMFollowBottomField :: AvcIntraInterlaceMode
pattern AIIMFollowBottomField = AvcIntraInterlaceMode' "FOLLOW_BOTTOM_FIELD"

pattern AIIMFollowTopField :: AvcIntraInterlaceMode
pattern AIIMFollowTopField = AvcIntraInterlaceMode' "FOLLOW_TOP_FIELD"

pattern AIIMProgressive :: AvcIntraInterlaceMode
pattern AIIMProgressive = AvcIntraInterlaceMode' "PROGRESSIVE"

pattern AIIMTopField :: AvcIntraInterlaceMode
pattern AIIMTopField = AvcIntraInterlaceMode' "TOP_FIELD"

{-# COMPLETE
  AIIMBottomField,
  AIIMFollowBottomField,
  AIIMFollowTopField,
  AIIMProgressive,
  AIIMTopField,
  AvcIntraInterlaceMode'
  #-}

instance FromText AvcIntraInterlaceMode where
  parser = (AvcIntraInterlaceMode' . mk) <$> takeText

instance ToText AvcIntraInterlaceMode where
  toText (AvcIntraInterlaceMode' ci) = original ci

instance Hashable AvcIntraInterlaceMode

instance NFData AvcIntraInterlaceMode

instance ToByteString AvcIntraInterlaceMode

instance ToQuery AvcIntraInterlaceMode

instance ToHeader AvcIntraInterlaceMode

instance ToJSON AvcIntraInterlaceMode where
  toJSON = toJSONText

instance FromJSON AvcIntraInterlaceMode where
  parseJSON = parseJSONText "AvcIntraInterlaceMode"
