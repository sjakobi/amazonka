{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        OIFKActualEndTime,
        OIFKActualStartTime,
        OIFKAutomationId,
        OIFKCategory,
        OIFKChangeRequestByApproverARN,
        OIFKChangeRequestByApproverName,
        OIFKChangeRequestByRequesterARN,
        OIFKChangeRequestByRequesterName,
        OIFKChangeRequestByTargetsResourceGroup,
        OIFKChangeRequestByTemplate,
        OIFKCreatedBy,
        OIFKCreatedTime,
        OIFKLastModifiedTime,
        OIFKOperationalData,
        OIFKOperationalDataKey,
        OIFKOperationalDataValue,
        OIFKOpsItemId,
        OIFKOpsItemType,
        OIFKPlannedEndTime,
        OIFKPlannedStartTime,
        OIFKPriority,
        OIFKResourceId,
        OIFKSeverity,
        OIFKSource,
        OIFKStatus,
        OIFKTitle
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemFilterKey = OpsItemFilterKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OIFKActualEndTime :: OpsItemFilterKey
pattern OIFKActualEndTime = OpsItemFilterKey' "ActualEndTime"

pattern OIFKActualStartTime :: OpsItemFilterKey
pattern OIFKActualStartTime = OpsItemFilterKey' "ActualStartTime"

pattern OIFKAutomationId :: OpsItemFilterKey
pattern OIFKAutomationId = OpsItemFilterKey' "AutomationId"

pattern OIFKCategory :: OpsItemFilterKey
pattern OIFKCategory = OpsItemFilterKey' "Category"

pattern OIFKChangeRequestByApproverARN :: OpsItemFilterKey
pattern OIFKChangeRequestByApproverARN = OpsItemFilterKey' "ChangeRequestByApproverArn"

pattern OIFKChangeRequestByApproverName :: OpsItemFilterKey
pattern OIFKChangeRequestByApproverName = OpsItemFilterKey' "ChangeRequestByApproverName"

pattern OIFKChangeRequestByRequesterARN :: OpsItemFilterKey
pattern OIFKChangeRequestByRequesterARN = OpsItemFilterKey' "ChangeRequestByRequesterArn"

pattern OIFKChangeRequestByRequesterName :: OpsItemFilterKey
pattern OIFKChangeRequestByRequesterName = OpsItemFilterKey' "ChangeRequestByRequesterName"

pattern OIFKChangeRequestByTargetsResourceGroup :: OpsItemFilterKey
pattern OIFKChangeRequestByTargetsResourceGroup = OpsItemFilterKey' "ChangeRequestByTargetsResourceGroup"

pattern OIFKChangeRequestByTemplate :: OpsItemFilterKey
pattern OIFKChangeRequestByTemplate = OpsItemFilterKey' "ChangeRequestByTemplate"

pattern OIFKCreatedBy :: OpsItemFilterKey
pattern OIFKCreatedBy = OpsItemFilterKey' "CreatedBy"

pattern OIFKCreatedTime :: OpsItemFilterKey
pattern OIFKCreatedTime = OpsItemFilterKey' "CreatedTime"

pattern OIFKLastModifiedTime :: OpsItemFilterKey
pattern OIFKLastModifiedTime = OpsItemFilterKey' "LastModifiedTime"

pattern OIFKOperationalData :: OpsItemFilterKey
pattern OIFKOperationalData = OpsItemFilterKey' "OperationalData"

pattern OIFKOperationalDataKey :: OpsItemFilterKey
pattern OIFKOperationalDataKey = OpsItemFilterKey' "OperationalDataKey"

pattern OIFKOperationalDataValue :: OpsItemFilterKey
pattern OIFKOperationalDataValue = OpsItemFilterKey' "OperationalDataValue"

pattern OIFKOpsItemId :: OpsItemFilterKey
pattern OIFKOpsItemId = OpsItemFilterKey' "OpsItemId"

pattern OIFKOpsItemType :: OpsItemFilterKey
pattern OIFKOpsItemType = OpsItemFilterKey' "OpsItemType"

pattern OIFKPlannedEndTime :: OpsItemFilterKey
pattern OIFKPlannedEndTime = OpsItemFilterKey' "PlannedEndTime"

pattern OIFKPlannedStartTime :: OpsItemFilterKey
pattern OIFKPlannedStartTime = OpsItemFilterKey' "PlannedStartTime"

pattern OIFKPriority :: OpsItemFilterKey
pattern OIFKPriority = OpsItemFilterKey' "Priority"

pattern OIFKResourceId :: OpsItemFilterKey
pattern OIFKResourceId = OpsItemFilterKey' "ResourceId"

pattern OIFKSeverity :: OpsItemFilterKey
pattern OIFKSeverity = OpsItemFilterKey' "Severity"

pattern OIFKSource :: OpsItemFilterKey
pattern OIFKSource = OpsItemFilterKey' "Source"

pattern OIFKStatus :: OpsItemFilterKey
pattern OIFKStatus = OpsItemFilterKey' "Status"

pattern OIFKTitle :: OpsItemFilterKey
pattern OIFKTitle = OpsItemFilterKey' "Title"

{-# COMPLETE
  OIFKActualEndTime,
  OIFKActualStartTime,
  OIFKAutomationId,
  OIFKCategory,
  OIFKChangeRequestByApproverARN,
  OIFKChangeRequestByApproverName,
  OIFKChangeRequestByRequesterARN,
  OIFKChangeRequestByRequesterName,
  OIFKChangeRequestByTargetsResourceGroup,
  OIFKChangeRequestByTemplate,
  OIFKCreatedBy,
  OIFKCreatedTime,
  OIFKLastModifiedTime,
  OIFKOperationalData,
  OIFKOperationalDataKey,
  OIFKOperationalDataValue,
  OIFKOpsItemId,
  OIFKOpsItemType,
  OIFKPlannedEndTime,
  OIFKPlannedStartTime,
  OIFKPriority,
  OIFKResourceId,
  OIFKSeverity,
  OIFKSource,
  OIFKStatus,
  OIFKTitle,
  OpsItemFilterKey'
  #-}

instance FromText OpsItemFilterKey where
  parser = (OpsItemFilterKey' . mk) <$> takeText

instance ToText OpsItemFilterKey where
  toText (OpsItemFilterKey' ci) = original ci

instance Hashable OpsItemFilterKey

instance NFData OpsItemFilterKey

instance ToByteString OpsItemFilterKey

instance ToQuery OpsItemFilterKey

instance ToHeader OpsItemFilterKey

instance ToJSON OpsItemFilterKey where
  toJSON = toJSONText
