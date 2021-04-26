{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        DescribePackagesFilterNamePackageID,
        DescribePackagesFilterNamePackageName,
        DescribePackagesFilterNamePackageStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DescribePackagesFilterName = DescribePackagesFilterName'
  { fromDescribePackagesFilterName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern DescribePackagesFilterNamePackageID :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageID = DescribePackagesFilterName' "PackageID"

pattern DescribePackagesFilterNamePackageName :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageName = DescribePackagesFilterName' "PackageName"

pattern DescribePackagesFilterNamePackageStatus :: DescribePackagesFilterName
pattern DescribePackagesFilterNamePackageStatus = DescribePackagesFilterName' "PackageStatus"

{-# COMPLETE
  DescribePackagesFilterNamePackageID,
  DescribePackagesFilterNamePackageName,
  DescribePackagesFilterNamePackageStatus,
  DescribePackagesFilterName'
  #-}

instance Prelude.FromText DescribePackagesFilterName where
  parser = DescribePackagesFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText DescribePackagesFilterName where
  toText (DescribePackagesFilterName' x) = x

instance Prelude.Hashable DescribePackagesFilterName

instance Prelude.NFData DescribePackagesFilterName

instance Prelude.ToByteString DescribePackagesFilterName

instance Prelude.ToQuery DescribePackagesFilterName

instance Prelude.ToHeader DescribePackagesFilterName

instance Prelude.ToJSON DescribePackagesFilterName where
  toJSON = Prelude.toJSONText
