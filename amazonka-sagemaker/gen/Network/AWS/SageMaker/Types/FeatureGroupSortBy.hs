{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSortBy
  ( FeatureGroupSortBy
      ( ..,
        FGSBCreationTime,
        FGSBFeatureGroupStatus,
        FGSBName,
        FGSBOfflineStoreStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FeatureGroupSortBy
  = FeatureGroupSortBy'
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

pattern FGSBCreationTime :: FeatureGroupSortBy
pattern FGSBCreationTime = FeatureGroupSortBy' "CreationTime"

pattern FGSBFeatureGroupStatus :: FeatureGroupSortBy
pattern FGSBFeatureGroupStatus = FeatureGroupSortBy' "FeatureGroupStatus"

pattern FGSBName :: FeatureGroupSortBy
pattern FGSBName = FeatureGroupSortBy' "Name"

pattern FGSBOfflineStoreStatus :: FeatureGroupSortBy
pattern FGSBOfflineStoreStatus = FeatureGroupSortBy' "OfflineStoreStatus"

{-# COMPLETE
  FGSBCreationTime,
  FGSBFeatureGroupStatus,
  FGSBName,
  FGSBOfflineStoreStatus,
  FeatureGroupSortBy'
  #-}

instance FromText FeatureGroupSortBy where
  parser = (FeatureGroupSortBy' . mk) <$> takeText

instance ToText FeatureGroupSortBy where
  toText (FeatureGroupSortBy' ci) = original ci

instance Hashable FeatureGroupSortBy

instance NFData FeatureGroupSortBy

instance ToByteString FeatureGroupSortBy

instance ToQuery FeatureGroupSortBy

instance ToHeader FeatureGroupSortBy

instance ToJSON FeatureGroupSortBy where
  toJSON = toJSONText
