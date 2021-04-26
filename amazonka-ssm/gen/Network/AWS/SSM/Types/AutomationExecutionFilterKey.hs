{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        AutomationExecutionFilterKeyAutomationSubtype,
        AutomationExecutionFilterKeyAutomationType,
        AutomationExecutionFilterKeyCurrentAction,
        AutomationExecutionFilterKeyDocumentNamePrefix,
        AutomationExecutionFilterKeyExecutionId,
        AutomationExecutionFilterKeyExecutionStatus,
        AutomationExecutionFilterKeyOpsItemId,
        AutomationExecutionFilterKeyParentExecutionId,
        AutomationExecutionFilterKeyStartTimeAfter,
        AutomationExecutionFilterKeyStartTimeBefore,
        AutomationExecutionFilterKeyTagKey,
        AutomationExecutionFilterKeyTargetResourceGroup
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutomationExecutionFilterKey = AutomationExecutionFilterKey'
  { fromAutomationExecutionFilterKey ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AutomationExecutionFilterKeyAutomationSubtype :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyAutomationSubtype = AutomationExecutionFilterKey' "AutomationSubtype"

pattern AutomationExecutionFilterKeyAutomationType :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyAutomationType = AutomationExecutionFilterKey' "AutomationType"

pattern AutomationExecutionFilterKeyCurrentAction :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyCurrentAction = AutomationExecutionFilterKey' "CurrentAction"

pattern AutomationExecutionFilterKeyDocumentNamePrefix :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyDocumentNamePrefix = AutomationExecutionFilterKey' "DocumentNamePrefix"

pattern AutomationExecutionFilterKeyExecutionId :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyExecutionId = AutomationExecutionFilterKey' "ExecutionId"

pattern AutomationExecutionFilterKeyExecutionStatus :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyExecutionStatus = AutomationExecutionFilterKey' "ExecutionStatus"

pattern AutomationExecutionFilterKeyOpsItemId :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyOpsItemId = AutomationExecutionFilterKey' "OpsItemId"

pattern AutomationExecutionFilterKeyParentExecutionId :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyParentExecutionId = AutomationExecutionFilterKey' "ParentExecutionId"

pattern AutomationExecutionFilterKeyStartTimeAfter :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyStartTimeAfter = AutomationExecutionFilterKey' "StartTimeAfter"

pattern AutomationExecutionFilterKeyStartTimeBefore :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyStartTimeBefore = AutomationExecutionFilterKey' "StartTimeBefore"

pattern AutomationExecutionFilterKeyTagKey :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyTagKey = AutomationExecutionFilterKey' "TagKey"

pattern AutomationExecutionFilterKeyTargetResourceGroup :: AutomationExecutionFilterKey
pattern AutomationExecutionFilterKeyTargetResourceGroup = AutomationExecutionFilterKey' "TargetResourceGroup"

{-# COMPLETE
  AutomationExecutionFilterKeyAutomationSubtype,
  AutomationExecutionFilterKeyAutomationType,
  AutomationExecutionFilterKeyCurrentAction,
  AutomationExecutionFilterKeyDocumentNamePrefix,
  AutomationExecutionFilterKeyExecutionId,
  AutomationExecutionFilterKeyExecutionStatus,
  AutomationExecutionFilterKeyOpsItemId,
  AutomationExecutionFilterKeyParentExecutionId,
  AutomationExecutionFilterKeyStartTimeAfter,
  AutomationExecutionFilterKeyStartTimeBefore,
  AutomationExecutionFilterKeyTagKey,
  AutomationExecutionFilterKeyTargetResourceGroup,
  AutomationExecutionFilterKey'
  #-}

instance Prelude.FromText AutomationExecutionFilterKey where
  parser = AutomationExecutionFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutomationExecutionFilterKey where
  toText (AutomationExecutionFilterKey' x) = x

instance Prelude.Hashable AutomationExecutionFilterKey

instance Prelude.NFData AutomationExecutionFilterKey

instance Prelude.ToByteString AutomationExecutionFilterKey

instance Prelude.ToQuery AutomationExecutionFilterKey

instance Prelude.ToHeader AutomationExecutionFilterKey

instance Prelude.ToJSON AutomationExecutionFilterKey where
  toJSON = Prelude.toJSONText
