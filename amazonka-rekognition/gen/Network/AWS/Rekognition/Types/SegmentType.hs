{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.SegmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.SegmentType
  ( SegmentType
      ( ..,
        Shot,
        TechnicalCue
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SegmentType = SegmentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Shot :: SegmentType
pattern Shot = SegmentType' "SHOT"

pattern TechnicalCue :: SegmentType
pattern TechnicalCue = SegmentType' "TECHNICAL_CUE"

{-# COMPLETE
  Shot,
  TechnicalCue,
  SegmentType'
  #-}

instance FromText SegmentType where
  parser = (SegmentType' . mk) <$> takeText

instance ToText SegmentType where
  toText (SegmentType' ci) = original ci

instance Hashable SegmentType

instance NFData SegmentType

instance ToByteString SegmentType

instance ToQuery SegmentType

instance ToHeader SegmentType

instance ToJSON SegmentType where
  toJSON = toJSONText

instance FromJSON SegmentType where
  parseJSON = parseJSONText "SegmentType"
