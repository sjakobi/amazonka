{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProjectSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectSortOrder
  ( ProjectSortOrder
      ( ..,
        PSOAscending,
        PSODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectSortOrder = ProjectSortOrder' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSOAscending :: ProjectSortOrder
pattern PSOAscending = ProjectSortOrder' "Ascending"

pattern PSODescending :: ProjectSortOrder
pattern PSODescending = ProjectSortOrder' "Descending"

{-# COMPLETE
  PSOAscending,
  PSODescending,
  ProjectSortOrder'
  #-}

instance FromText ProjectSortOrder where
  parser = (ProjectSortOrder' . mk) <$> takeText

instance ToText ProjectSortOrder where
  toText (ProjectSortOrder' ci) = original ci

instance Hashable ProjectSortOrder

instance NFData ProjectSortOrder

instance ToByteString ProjectSortOrder

instance ToQuery ProjectSortOrder

instance ToHeader ProjectSortOrder

instance ToJSON ProjectSortOrder where
  toJSON = toJSONText
