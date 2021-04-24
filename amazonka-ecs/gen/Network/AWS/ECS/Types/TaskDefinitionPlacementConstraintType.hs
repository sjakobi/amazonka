{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinitionPlacementConstraintType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionPlacementConstraintType
  ( TaskDefinitionPlacementConstraintType
      ( ..,
        MemberOf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskDefinitionPlacementConstraintType
  = TaskDefinitionPlacementConstraintType'
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

pattern MemberOf :: TaskDefinitionPlacementConstraintType
pattern MemberOf = TaskDefinitionPlacementConstraintType' "memberOf"

{-# COMPLETE
  MemberOf,
  TaskDefinitionPlacementConstraintType'
  #-}

instance FromText TaskDefinitionPlacementConstraintType where
  parser = (TaskDefinitionPlacementConstraintType' . mk) <$> takeText

instance ToText TaskDefinitionPlacementConstraintType where
  toText (TaskDefinitionPlacementConstraintType' ci) = original ci

instance Hashable TaskDefinitionPlacementConstraintType

instance NFData TaskDefinitionPlacementConstraintType

instance ToByteString TaskDefinitionPlacementConstraintType

instance ToQuery TaskDefinitionPlacementConstraintType

instance ToHeader TaskDefinitionPlacementConstraintType

instance ToJSON TaskDefinitionPlacementConstraintType where
  toJSON = toJSONText

instance FromJSON TaskDefinitionPlacementConstraintType where
  parseJSON = parseJSONText "TaskDefinitionPlacementConstraintType"
