{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelSortKey
  ( ModelSortKey
      ( ..,
        MSKCreationTime,
        MSKName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelSortKey = ModelSortKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MSKCreationTime :: ModelSortKey
pattern MSKCreationTime = ModelSortKey' "CreationTime"

pattern MSKName :: ModelSortKey
pattern MSKName = ModelSortKey' "Name"

{-# COMPLETE
  MSKCreationTime,
  MSKName,
  ModelSortKey'
  #-}

instance FromText ModelSortKey where
  parser = (ModelSortKey' . mk) <$> takeText

instance ToText ModelSortKey where
  toText (ModelSortKey' ci) = original ci

instance Hashable ModelSortKey

instance NFData ModelSortKey

instance ToByteString ModelSortKey

instance ToQuery ModelSortKey

instance ToHeader ModelSortKey

instance ToJSON ModelSortKey where
  toJSON = toJSONText
