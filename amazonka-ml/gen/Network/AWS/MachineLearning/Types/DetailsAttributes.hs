{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.DetailsAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.DetailsAttributes
  ( DetailsAttributes
      ( ..,
        Algorithm,
        PredictiveModelType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Contains the key values of @DetailsMap@ : @PredictiveModelType@ - Indicates the type of the @MLModel@ . @Algorithm@ - Indicates the algorithm that was used for the @MLModel@ .
data DetailsAttributes = DetailsAttributes' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Algorithm :: DetailsAttributes
pattern Algorithm = DetailsAttributes' "Algorithm"

pattern PredictiveModelType :: DetailsAttributes
pattern PredictiveModelType = DetailsAttributes' "PredictiveModelType"

{-# COMPLETE
  Algorithm,
  PredictiveModelType,
  DetailsAttributes'
  #-}

instance FromText DetailsAttributes where
  parser = (DetailsAttributes' . mk) <$> takeText

instance ToText DetailsAttributes where
  toText (DetailsAttributes' ci) = original ci

instance Hashable DetailsAttributes

instance NFData DetailsAttributes

instance ToByteString DetailsAttributes

instance ToQuery DetailsAttributes

instance ToHeader DetailsAttributes

instance FromJSON DetailsAttributes where
  parseJSON = parseJSONText "DetailsAttributes"
