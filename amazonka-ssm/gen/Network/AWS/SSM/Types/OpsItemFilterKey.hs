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
-- Module      : Network.AWS.SSM.Types.OpsItemFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemFilterKey
  ( OpsItemFilterKey
      ( ..,
        OpsItemFilterKeyActualEndTime,
        OpsItemFilterKeyActualStartTime,
        OpsItemFilterKeyAutomationId,
        OpsItemFilterKeyCategory,
        OpsItemFilterKeyChangeRequestByApproverArn,
        OpsItemFilterKeyChangeRequestByApproverName,
        OpsItemFilterKeyChangeRequestByRequesterArn,
        OpsItemFilterKeyChangeRequestByRequesterName,
        OpsItemFilterKeyChangeRequestByTargetsResourceGroup,
        OpsItemFilterKeyChangeRequestByTemplate,
        OpsItemFilterKeyCreatedBy,
        OpsItemFilterKeyCreatedTime,
        OpsItemFilterKeyLastModifiedTime,
        OpsItemFilterKeyOperationalData,
        OpsItemFilterKeyOperationalDataKey,
        OpsItemFilterKeyOperationalDataValue,
        OpsItemFilterKeyOpsItemId,
        OpsItemFilterKeyOpsItemType,
        OpsItemFilterKeyPlannedEndTime,
        OpsItemFilterKeyPlannedStartTime,
        OpsItemFilterKeyPriority,
        OpsItemFilterKeyResourceId,
        OpsItemFilterKeySeverity,
        OpsItemFilterKeySource,
        OpsItemFilterKeyStatus',
        OpsItemFilterKeyTitle
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OpsItemFilterKey = OpsItemFilterKey'
  { fromOpsItemFilterKey ::
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

pattern OpsItemFilterKeyActualEndTime :: OpsItemFilterKey
pattern OpsItemFilterKeyActualEndTime = OpsItemFilterKey' "ActualEndTime"

pattern OpsItemFilterKeyActualStartTime :: OpsItemFilterKey
pattern OpsItemFilterKeyActualStartTime = OpsItemFilterKey' "ActualStartTime"

pattern OpsItemFilterKeyAutomationId :: OpsItemFilterKey
pattern OpsItemFilterKeyAutomationId = OpsItemFilterKey' "AutomationId"

pattern OpsItemFilterKeyCategory :: OpsItemFilterKey
pattern OpsItemFilterKeyCategory = OpsItemFilterKey' "Category"

pattern OpsItemFilterKeyChangeRequestByApproverArn :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByApproverArn = OpsItemFilterKey' "ChangeRequestByApproverArn"

pattern OpsItemFilterKeyChangeRequestByApproverName :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByApproverName = OpsItemFilterKey' "ChangeRequestByApproverName"

pattern OpsItemFilterKeyChangeRequestByRequesterArn :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByRequesterArn = OpsItemFilterKey' "ChangeRequestByRequesterArn"

pattern OpsItemFilterKeyChangeRequestByRequesterName :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByRequesterName = OpsItemFilterKey' "ChangeRequestByRequesterName"

pattern OpsItemFilterKeyChangeRequestByTargetsResourceGroup :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByTargetsResourceGroup = OpsItemFilterKey' "ChangeRequestByTargetsResourceGroup"

pattern OpsItemFilterKeyChangeRequestByTemplate :: OpsItemFilterKey
pattern OpsItemFilterKeyChangeRequestByTemplate = OpsItemFilterKey' "ChangeRequestByTemplate"

pattern OpsItemFilterKeyCreatedBy :: OpsItemFilterKey
pattern OpsItemFilterKeyCreatedBy = OpsItemFilterKey' "CreatedBy"

pattern OpsItemFilterKeyCreatedTime :: OpsItemFilterKey
pattern OpsItemFilterKeyCreatedTime = OpsItemFilterKey' "CreatedTime"

pattern OpsItemFilterKeyLastModifiedTime :: OpsItemFilterKey
pattern OpsItemFilterKeyLastModifiedTime = OpsItemFilterKey' "LastModifiedTime"

pattern OpsItemFilterKeyOperationalData :: OpsItemFilterKey
pattern OpsItemFilterKeyOperationalData = OpsItemFilterKey' "OperationalData"

pattern OpsItemFilterKeyOperationalDataKey :: OpsItemFilterKey
pattern OpsItemFilterKeyOperationalDataKey = OpsItemFilterKey' "OperationalDataKey"

pattern OpsItemFilterKeyOperationalDataValue :: OpsItemFilterKey
pattern OpsItemFilterKeyOperationalDataValue = OpsItemFilterKey' "OperationalDataValue"

pattern OpsItemFilterKeyOpsItemId :: OpsItemFilterKey
pattern OpsItemFilterKeyOpsItemId = OpsItemFilterKey' "OpsItemId"

pattern OpsItemFilterKeyOpsItemType :: OpsItemFilterKey
pattern OpsItemFilterKeyOpsItemType = OpsItemFilterKey' "OpsItemType"

pattern OpsItemFilterKeyPlannedEndTime :: OpsItemFilterKey
pattern OpsItemFilterKeyPlannedEndTime = OpsItemFilterKey' "PlannedEndTime"

pattern OpsItemFilterKeyPlannedStartTime :: OpsItemFilterKey
pattern OpsItemFilterKeyPlannedStartTime = OpsItemFilterKey' "PlannedStartTime"

pattern OpsItemFilterKeyPriority :: OpsItemFilterKey
pattern OpsItemFilterKeyPriority = OpsItemFilterKey' "Priority"

pattern OpsItemFilterKeyResourceId :: OpsItemFilterKey
pattern OpsItemFilterKeyResourceId = OpsItemFilterKey' "ResourceId"

pattern OpsItemFilterKeySeverity :: OpsItemFilterKey
pattern OpsItemFilterKeySeverity = OpsItemFilterKey' "Severity"

pattern OpsItemFilterKeySource :: OpsItemFilterKey
pattern OpsItemFilterKeySource = OpsItemFilterKey' "Source"

pattern OpsItemFilterKeyStatus' :: OpsItemFilterKey
pattern OpsItemFilterKeyStatus' = OpsItemFilterKey' "Status"

pattern OpsItemFilterKeyTitle :: OpsItemFilterKey
pattern OpsItemFilterKeyTitle = OpsItemFilterKey' "Title"

{-# COMPLETE
  OpsItemFilterKeyActualEndTime,
  OpsItemFilterKeyActualStartTime,
  OpsItemFilterKeyAutomationId,
  OpsItemFilterKeyCategory,
  OpsItemFilterKeyChangeRequestByApproverArn,
  OpsItemFilterKeyChangeRequestByApproverName,
  OpsItemFilterKeyChangeRequestByRequesterArn,
  OpsItemFilterKeyChangeRequestByRequesterName,
  OpsItemFilterKeyChangeRequestByTargetsResourceGroup,
  OpsItemFilterKeyChangeRequestByTemplate,
  OpsItemFilterKeyCreatedBy,
  OpsItemFilterKeyCreatedTime,
  OpsItemFilterKeyLastModifiedTime,
  OpsItemFilterKeyOperationalData,
  OpsItemFilterKeyOperationalDataKey,
  OpsItemFilterKeyOperationalDataValue,
  OpsItemFilterKeyOpsItemId,
  OpsItemFilterKeyOpsItemType,
  OpsItemFilterKeyPlannedEndTime,
  OpsItemFilterKeyPlannedStartTime,
  OpsItemFilterKeyPriority,
  OpsItemFilterKeyResourceId,
  OpsItemFilterKeySeverity,
  OpsItemFilterKeySource,
  OpsItemFilterKeyStatus',
  OpsItemFilterKeyTitle,
  OpsItemFilterKey'
  #-}

instance Prelude.FromText OpsItemFilterKey where
  parser = OpsItemFilterKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText OpsItemFilterKey where
  toText (OpsItemFilterKey' x) = x

instance Prelude.Hashable OpsItemFilterKey

instance Prelude.NFData OpsItemFilterKey

instance Prelude.ToByteString OpsItemFilterKey

instance Prelude.ToQuery OpsItemFilterKey

instance Prelude.ToHeader OpsItemFilterKey

instance Prelude.ToJSON OpsItemFilterKey where
  toJSON = Prelude.toJSONText
