{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.GroupDefinitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.GroupDefinitionType
  ( GroupDefinitionType
      ( ..,
        CostCategory,
        Dimension,
        Tag
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GroupDefinitionType
  = GroupDefinitionType'
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

pattern CostCategory :: GroupDefinitionType
pattern CostCategory = GroupDefinitionType' "COST_CATEGORY"

pattern Dimension :: GroupDefinitionType
pattern Dimension = GroupDefinitionType' "DIMENSION"

pattern Tag :: GroupDefinitionType
pattern Tag = GroupDefinitionType' "TAG"

{-# COMPLETE
  CostCategory,
  Dimension,
  Tag,
  GroupDefinitionType'
  #-}

instance FromText GroupDefinitionType where
  parser = (GroupDefinitionType' . mk) <$> takeText

instance ToText GroupDefinitionType where
  toText (GroupDefinitionType' ci) = original ci

instance Hashable GroupDefinitionType

instance NFData GroupDefinitionType

instance ToByteString GroupDefinitionType

instance ToQuery GroupDefinitionType

instance ToHeader GroupDefinitionType

instance ToJSON GroupDefinitionType where
  toJSON = toJSONText

instance FromJSON GroupDefinitionType where
  parseJSON = parseJSONText "GroupDefinitionType"
