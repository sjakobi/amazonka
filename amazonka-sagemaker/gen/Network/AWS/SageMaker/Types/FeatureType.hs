{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureType
  ( FeatureType
      ( ..,
        Fractional,
        Integral,
        String
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FeatureType = FeatureType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fractional :: FeatureType
pattern Fractional = FeatureType' "Fractional"

pattern Integral :: FeatureType
pattern Integral = FeatureType' "Integral"

pattern String :: FeatureType
pattern String = FeatureType' "String"

{-# COMPLETE
  Fractional,
  Integral,
  String,
  FeatureType'
  #-}

instance FromText FeatureType where
  parser = (FeatureType' . mk) <$> takeText

instance ToText FeatureType where
  toText (FeatureType' ci) = original ci

instance Hashable FeatureType

instance NFData FeatureType

instance ToByteString FeatureType

instance ToQuery FeatureType

instance ToHeader FeatureType

instance ToJSON FeatureType where
  toJSON = toJSONText

instance FromJSON FeatureType where
  parseJSON = parseJSONText "FeatureType"
