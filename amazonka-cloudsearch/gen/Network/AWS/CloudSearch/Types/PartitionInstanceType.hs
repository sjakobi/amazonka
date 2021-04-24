{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.PartitionInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.PartitionInstanceType
  ( PartitionInstanceType
      ( ..,
        Search_2XLarge,
        Search_Large,
        Search_M1_Large,
        Search_M1_Small,
        Search_M2_2XLarge,
        Search_M2_XLarge,
        Search_M3_2XLarge,
        Search_M3_Large,
        Search_M3_Medium,
        Search_M3_XLarge,
        Search_Medium,
        Search_Small,
        Search_XLarge
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The instance type (such as @search.m1.small@ ) on which an index partition is hosted.
data PartitionInstanceType
  = PartitionInstanceType'
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

pattern Search_2XLarge :: PartitionInstanceType
pattern Search_2XLarge = PartitionInstanceType' "search.2xlarge"

pattern Search_Large :: PartitionInstanceType
pattern Search_Large = PartitionInstanceType' "search.large"

pattern Search_M1_Large :: PartitionInstanceType
pattern Search_M1_Large = PartitionInstanceType' "search.m1.large"

pattern Search_M1_Small :: PartitionInstanceType
pattern Search_M1_Small = PartitionInstanceType' "search.m1.small"

pattern Search_M2_2XLarge :: PartitionInstanceType
pattern Search_M2_2XLarge = PartitionInstanceType' "search.m2.2xlarge"

pattern Search_M2_XLarge :: PartitionInstanceType
pattern Search_M2_XLarge = PartitionInstanceType' "search.m2.xlarge"

pattern Search_M3_2XLarge :: PartitionInstanceType
pattern Search_M3_2XLarge = PartitionInstanceType' "search.m3.2xlarge"

pattern Search_M3_Large :: PartitionInstanceType
pattern Search_M3_Large = PartitionInstanceType' "search.m3.large"

pattern Search_M3_Medium :: PartitionInstanceType
pattern Search_M3_Medium = PartitionInstanceType' "search.m3.medium"

pattern Search_M3_XLarge :: PartitionInstanceType
pattern Search_M3_XLarge = PartitionInstanceType' "search.m3.xlarge"

pattern Search_Medium :: PartitionInstanceType
pattern Search_Medium = PartitionInstanceType' "search.medium"

pattern Search_Small :: PartitionInstanceType
pattern Search_Small = PartitionInstanceType' "search.small"

pattern Search_XLarge :: PartitionInstanceType
pattern Search_XLarge = PartitionInstanceType' "search.xlarge"

{-# COMPLETE
  Search_2XLarge,
  Search_Large,
  Search_M1_Large,
  Search_M1_Small,
  Search_M2_2XLarge,
  Search_M2_XLarge,
  Search_M3_2XLarge,
  Search_M3_Large,
  Search_M3_Medium,
  Search_M3_XLarge,
  Search_Medium,
  Search_Small,
  Search_XLarge,
  PartitionInstanceType'
  #-}

instance FromText PartitionInstanceType where
  parser = (PartitionInstanceType' . mk) <$> takeText

instance ToText PartitionInstanceType where
  toText (PartitionInstanceType' ci) = original ci

instance Hashable PartitionInstanceType

instance NFData PartitionInstanceType

instance ToByteString PartitionInstanceType

instance ToQuery PartitionInstanceType

instance ToHeader PartitionInstanceType

instance FromXML PartitionInstanceType where
  parseXML = parseXMLText "PartitionInstanceType"
