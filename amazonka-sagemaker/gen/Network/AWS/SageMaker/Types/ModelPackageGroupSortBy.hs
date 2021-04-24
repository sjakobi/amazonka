{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroupSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroupSortBy
  ( ModelPackageGroupSortBy
      ( ..,
        MPGSBCreationTime,
        MPGSBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelPackageGroupSortBy
  = ModelPackageGroupSortBy'
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

pattern MPGSBCreationTime :: ModelPackageGroupSortBy
pattern MPGSBCreationTime = ModelPackageGroupSortBy' "CreationTime"

pattern MPGSBName :: ModelPackageGroupSortBy
pattern MPGSBName = ModelPackageGroupSortBy' "Name"

{-# COMPLETE
  MPGSBCreationTime,
  MPGSBName,
  ModelPackageGroupSortBy'
  #-}

instance FromText ModelPackageGroupSortBy where
  parser = (ModelPackageGroupSortBy' . mk) <$> takeText

instance ToText ModelPackageGroupSortBy where
  toText (ModelPackageGroupSortBy' ci) = original ci

instance Hashable ModelPackageGroupSortBy

instance NFData ModelPackageGroupSortBy

instance ToByteString ModelPackageGroupSortBy

instance ToQuery ModelPackageGroupSortBy

instance ToHeader ModelPackageGroupSortBy

instance ToJSON ModelPackageGroupSortBy where
  toJSON = toJSONText
