{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionFilterKey
  ( AutomationExecutionFilterKey
      ( ..,
        AutomationSubtype,
        AutomationType,
        CurrentAction,
        DocumentNamePrefix,
        ExecutionId,
        ExecutionStatus,
        OpsItemId,
        ParentExecutionId,
        StartTimeAfter,
        StartTimeBefore,
        TagKey,
        TargetResourceGroup
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutomationExecutionFilterKey
  = AutomationExecutionFilterKey'
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

pattern AutomationSubtype :: AutomationExecutionFilterKey
pattern AutomationSubtype = AutomationExecutionFilterKey' "AutomationSubtype"

pattern AutomationType :: AutomationExecutionFilterKey
pattern AutomationType = AutomationExecutionFilterKey' "AutomationType"

pattern CurrentAction :: AutomationExecutionFilterKey
pattern CurrentAction = AutomationExecutionFilterKey' "CurrentAction"

pattern DocumentNamePrefix :: AutomationExecutionFilterKey
pattern DocumentNamePrefix = AutomationExecutionFilterKey' "DocumentNamePrefix"

pattern ExecutionId :: AutomationExecutionFilterKey
pattern ExecutionId = AutomationExecutionFilterKey' "ExecutionId"

pattern ExecutionStatus :: AutomationExecutionFilterKey
pattern ExecutionStatus = AutomationExecutionFilterKey' "ExecutionStatus"

pattern OpsItemId :: AutomationExecutionFilterKey
pattern OpsItemId = AutomationExecutionFilterKey' "OpsItemId"

pattern ParentExecutionId :: AutomationExecutionFilterKey
pattern ParentExecutionId = AutomationExecutionFilterKey' "ParentExecutionId"

pattern StartTimeAfter :: AutomationExecutionFilterKey
pattern StartTimeAfter = AutomationExecutionFilterKey' "StartTimeAfter"

pattern StartTimeBefore :: AutomationExecutionFilterKey
pattern StartTimeBefore = AutomationExecutionFilterKey' "StartTimeBefore"

pattern TagKey :: AutomationExecutionFilterKey
pattern TagKey = AutomationExecutionFilterKey' "TagKey"

pattern TargetResourceGroup :: AutomationExecutionFilterKey
pattern TargetResourceGroup = AutomationExecutionFilterKey' "TargetResourceGroup"

{-# COMPLETE
  AutomationSubtype,
  AutomationType,
  CurrentAction,
  DocumentNamePrefix,
  ExecutionId,
  ExecutionStatus,
  OpsItemId,
  ParentExecutionId,
  StartTimeAfter,
  StartTimeBefore,
  TagKey,
  TargetResourceGroup,
  AutomationExecutionFilterKey'
  #-}

instance FromText AutomationExecutionFilterKey where
  parser = (AutomationExecutionFilterKey' . mk) <$> takeText

instance ToText AutomationExecutionFilterKey where
  toText (AutomationExecutionFilterKey' ci) = original ci

instance Hashable AutomationExecutionFilterKey

instance NFData AutomationExecutionFilterKey

instance ToByteString AutomationExecutionFilterKey

instance ToQuery AutomationExecutionFilterKey

instance ToHeader AutomationExecutionFilterKey

instance ToJSON AutomationExecutionFilterKey where
  toJSON = toJSONText
