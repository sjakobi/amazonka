{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskDefinitionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionStatus
  ( TaskDefinitionStatus
      ( ..,
        TDSActive,
        TDSInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaskDefinitionStatus
  = TaskDefinitionStatus'
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

pattern TDSActive :: TaskDefinitionStatus
pattern TDSActive = TaskDefinitionStatus' "ACTIVE"

pattern TDSInactive :: TaskDefinitionStatus
pattern TDSInactive = TaskDefinitionStatus' "INACTIVE"

{-# COMPLETE
  TDSActive,
  TDSInactive,
  TaskDefinitionStatus'
  #-}

instance FromText TaskDefinitionStatus where
  parser = (TaskDefinitionStatus' . mk) <$> takeText

instance ToText TaskDefinitionStatus where
  toText (TaskDefinitionStatus' ci) = original ci

instance Hashable TaskDefinitionStatus

instance NFData TaskDefinitionStatus

instance ToByteString TaskDefinitionStatus

instance ToQuery TaskDefinitionStatus

instance ToHeader TaskDefinitionStatus

instance ToJSON TaskDefinitionStatus where
  toJSON = toJSONText

instance FromJSON TaskDefinitionStatus where
  parseJSON = parseJSONText "TaskDefinitionStatus"
