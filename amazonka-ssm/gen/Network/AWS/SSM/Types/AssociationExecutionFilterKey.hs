{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionFilterKey
  ( AssociationExecutionFilterKey
      ( ..,
        AEFKCreatedTime,
        AEFKExecutionId,
        AEFKStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AssociationExecutionFilterKey
  = AssociationExecutionFilterKey'
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

pattern AEFKCreatedTime :: AssociationExecutionFilterKey
pattern AEFKCreatedTime = AssociationExecutionFilterKey' "CreatedTime"

pattern AEFKExecutionId :: AssociationExecutionFilterKey
pattern AEFKExecutionId = AssociationExecutionFilterKey' "ExecutionId"

pattern AEFKStatus :: AssociationExecutionFilterKey
pattern AEFKStatus = AssociationExecutionFilterKey' "Status"

{-# COMPLETE
  AEFKCreatedTime,
  AEFKExecutionId,
  AEFKStatus,
  AssociationExecutionFilterKey'
  #-}

instance FromText AssociationExecutionFilterKey where
  parser = (AssociationExecutionFilterKey' . mk) <$> takeText

instance ToText AssociationExecutionFilterKey where
  toText (AssociationExecutionFilterKey' ci) = original ci

instance Hashable AssociationExecutionFilterKey

instance NFData AssociationExecutionFilterKey

instance ToByteString AssociationExecutionFilterKey

instance ToQuery AssociationExecutionFilterKey

instance ToHeader AssociationExecutionFilterKey

instance ToJSON AssociationExecutionFilterKey where
  toJSON = toJSONText
