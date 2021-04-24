{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DescribePackagesFilterName
  ( DescribePackagesFilterName
      ( ..,
        PackageId,
        PackageName,
        PackageStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DescribePackagesFilterName
  = DescribePackagesFilterName'
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

pattern PackageId :: DescribePackagesFilterName
pattern PackageId = DescribePackagesFilterName' "PackageID"

pattern PackageName :: DescribePackagesFilterName
pattern PackageName = DescribePackagesFilterName' "PackageName"

pattern PackageStatus :: DescribePackagesFilterName
pattern PackageStatus = DescribePackagesFilterName' "PackageStatus"

{-# COMPLETE
  PackageId,
  PackageName,
  PackageStatus,
  DescribePackagesFilterName'
  #-}

instance FromText DescribePackagesFilterName where
  parser = (DescribePackagesFilterName' . mk) <$> takeText

instance ToText DescribePackagesFilterName where
  toText (DescribePackagesFilterName' ci) = original ci

instance Hashable DescribePackagesFilterName

instance NFData DescribePackagesFilterName

instance ToByteString DescribePackagesFilterName

instance ToQuery DescribePackagesFilterName

instance ToHeader DescribePackagesFilterName

instance ToJSON DescribePackagesFilterName where
  toJSON = toJSONText
