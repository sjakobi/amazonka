{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageSortBy
  ( ModelPackageSortBy
      ( ..,
        MPSBCreationTime,
        MPSBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelPackageSortBy
  = ModelPackageSortBy'
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

pattern MPSBCreationTime :: ModelPackageSortBy
pattern MPSBCreationTime = ModelPackageSortBy' "CreationTime"

pattern MPSBName :: ModelPackageSortBy
pattern MPSBName = ModelPackageSortBy' "Name"

{-# COMPLETE
  MPSBCreationTime,
  MPSBName,
  ModelPackageSortBy'
  #-}

instance FromText ModelPackageSortBy where
  parser = (ModelPackageSortBy' . mk) <$> takeText

instance ToText ModelPackageSortBy where
  toText (ModelPackageSortBy' ci) = original ci

instance Hashable ModelPackageSortBy

instance NFData ModelPackageSortBy

instance ToByteString ModelPackageSortBy

instance ToQuery ModelPackageSortBy

instance ToHeader ModelPackageSortBy

instance ToJSON ModelPackageSortBy where
  toJSON = toJSONText
