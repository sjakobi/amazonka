{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationExecutionTargetsFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionTargetsFilterKey
  ( AssociationExecutionTargetsFilterKey
      ( ..,
        ResourceId,
        ResourceType,
        Status
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationExecutionTargetsFilterKey
  = AssociationExecutionTargetsFilterKey'
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

pattern ResourceId :: AssociationExecutionTargetsFilterKey
pattern ResourceId = AssociationExecutionTargetsFilterKey' "ResourceId"

pattern ResourceType :: AssociationExecutionTargetsFilterKey
pattern ResourceType = AssociationExecutionTargetsFilterKey' "ResourceType"

pattern Status :: AssociationExecutionTargetsFilterKey
pattern Status = AssociationExecutionTargetsFilterKey' "Status"

{-# COMPLETE
  ResourceId,
  ResourceType,
  Status,
  AssociationExecutionTargetsFilterKey'
  #-}

instance FromText AssociationExecutionTargetsFilterKey where
  parser = (AssociationExecutionTargetsFilterKey' . mk) <$> takeText

instance ToText AssociationExecutionTargetsFilterKey where
  toText (AssociationExecutionTargetsFilterKey' ci) = original ci

instance Hashable AssociationExecutionTargetsFilterKey

instance NFData AssociationExecutionTargetsFilterKey

instance ToByteString AssociationExecutionTargetsFilterKey

instance ToQuery AssociationExecutionTargetsFilterKey

instance ToHeader AssociationExecutionTargetsFilterKey

instance ToJSON AssociationExecutionTargetsFilterKey where
  toJSON = toJSONText
