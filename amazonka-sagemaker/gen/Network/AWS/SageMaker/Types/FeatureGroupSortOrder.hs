{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSortOrder
  ( FeatureGroupSortOrder
      ( ..,
        FGSOAscending,
        FGSODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FeatureGroupSortOrder
  = FeatureGroupSortOrder'
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

pattern FGSOAscending :: FeatureGroupSortOrder
pattern FGSOAscending = FeatureGroupSortOrder' "Ascending"

pattern FGSODescending :: FeatureGroupSortOrder
pattern FGSODescending = FeatureGroupSortOrder' "Descending"

{-# COMPLETE
  FGSOAscending,
  FGSODescending,
  FeatureGroupSortOrder'
  #-}

instance FromText FeatureGroupSortOrder where
  parser = (FeatureGroupSortOrder' . mk) <$> takeText

instance ToText FeatureGroupSortOrder where
  toText (FeatureGroupSortOrder' ci) = original ci

instance Hashable FeatureGroupSortOrder

instance NFData FeatureGroupSortOrder

instance ToByteString FeatureGroupSortOrder

instance ToQuery FeatureGroupSortOrder

instance ToHeader FeatureGroupSortOrder

instance ToJSON FeatureGroupSortOrder where
  toJSON = toJSONText
