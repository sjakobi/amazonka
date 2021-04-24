{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroupsTagging.Types.GroupByAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroupsTagging.Types.GroupByAttribute
  ( GroupByAttribute
      ( ..,
        Region,
        ResourceType,
        TargetId
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GroupByAttribute = GroupByAttribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Region :: GroupByAttribute
pattern Region = GroupByAttribute' "REGION"

pattern ResourceType :: GroupByAttribute
pattern ResourceType = GroupByAttribute' "RESOURCE_TYPE"

pattern TargetId :: GroupByAttribute
pattern TargetId = GroupByAttribute' "TARGET_ID"

{-# COMPLETE
  Region,
  ResourceType,
  TargetId,
  GroupByAttribute'
  #-}

instance FromText GroupByAttribute where
  parser = (GroupByAttribute' . mk) <$> takeText

instance ToText GroupByAttribute where
  toText (GroupByAttribute' ci) = original ci

instance Hashable GroupByAttribute

instance NFData GroupByAttribute

instance ToByteString GroupByAttribute

instance ToQuery GroupByAttribute

instance ToHeader GroupByAttribute

instance ToJSON GroupByAttribute where
  toJSON = toJSONText
