{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationFilterKey
  ( AssociationFilterKey
      ( ..,
        AFKAssociationId,
        AFKAssociationName,
        AFKAssociationStatusName,
        AFKInstanceId,
        AFKLastExecutedAfter,
        AFKLastExecutedBefore,
        AFKName,
        AFKResourceGroupName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationFilterKey
  = AssociationFilterKey'
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

pattern AFKAssociationId :: AssociationFilterKey
pattern AFKAssociationId = AssociationFilterKey' "AssociationId"

pattern AFKAssociationName :: AssociationFilterKey
pattern AFKAssociationName = AssociationFilterKey' "AssociationName"

pattern AFKAssociationStatusName :: AssociationFilterKey
pattern AFKAssociationStatusName = AssociationFilterKey' "AssociationStatusName"

pattern AFKInstanceId :: AssociationFilterKey
pattern AFKInstanceId = AssociationFilterKey' "InstanceId"

pattern AFKLastExecutedAfter :: AssociationFilterKey
pattern AFKLastExecutedAfter = AssociationFilterKey' "LastExecutedAfter"

pattern AFKLastExecutedBefore :: AssociationFilterKey
pattern AFKLastExecutedBefore = AssociationFilterKey' "LastExecutedBefore"

pattern AFKName :: AssociationFilterKey
pattern AFKName = AssociationFilterKey' "Name"

pattern AFKResourceGroupName :: AssociationFilterKey
pattern AFKResourceGroupName = AssociationFilterKey' "ResourceGroupName"

{-# COMPLETE
  AFKAssociationId,
  AFKAssociationName,
  AFKAssociationStatusName,
  AFKInstanceId,
  AFKLastExecutedAfter,
  AFKLastExecutedBefore,
  AFKName,
  AFKResourceGroupName,
  AssociationFilterKey'
  #-}

instance FromText AssociationFilterKey where
  parser = (AssociationFilterKey' . mk) <$> takeText

instance ToText AssociationFilterKey where
  toText (AssociationFilterKey' ci) = original ci

instance Hashable AssociationFilterKey

instance NFData AssociationFilterKey

instance ToByteString AssociationFilterKey

instance ToQuery AssociationFilterKey

instance ToHeader AssociationFilterKey

instance ToJSON AssociationFilterKey where
  toJSON = toJSONText
