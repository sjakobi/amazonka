{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.SentimentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SentimentType
  ( SentimentType
      ( ..,
        Mixed,
        Negative,
        Neutral,
        Positive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SentimentType = SentimentType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Mixed :: SentimentType
pattern Mixed = SentimentType' "MIXED"

pattern Negative :: SentimentType
pattern Negative = SentimentType' "NEGATIVE"

pattern Neutral :: SentimentType
pattern Neutral = SentimentType' "NEUTRAL"

pattern Positive :: SentimentType
pattern Positive = SentimentType' "POSITIVE"

{-# COMPLETE
  Mixed,
  Negative,
  Neutral,
  Positive,
  SentimentType'
  #-}

instance FromText SentimentType where
  parser = (SentimentType' . mk) <$> takeText

instance ToText SentimentType where
  toText (SentimentType' ci) = original ci

instance Hashable SentimentType

instance NFData SentimentType

instance ToByteString SentimentType

instance ToQuery SentimentType

instance ToHeader SentimentType

instance FromJSON SentimentType where
  parseJSON = parseJSONText "SentimentType"
