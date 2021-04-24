{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OpsItemDataValue
import Network.AWS.SSM.Types.OpsItemStatus

-- | A count of OpsItems.
--
--
--
-- /See:/ 'opsItemSummary' smart constructor.
data OpsItemSummary = OpsItemSummary'
  { _oisStatus ::
      !(Maybe OpsItemStatus),
    _oisPlannedEndTime :: !(Maybe POSIX),
    _oisSeverity :: !(Maybe Text),
    _oisActualStartTime :: !(Maybe POSIX),
    _oisCategory :: !(Maybe Text),
    _oisOperationalData ::
      !(Maybe (Map Text OpsItemDataValue)),
    _oisTitle :: !(Maybe Text),
    _oisSource :: !(Maybe Text),
    _oisCreatedTime :: !(Maybe POSIX),
    _oisPriority :: !(Maybe Nat),
    _oisActualEndTime :: !(Maybe POSIX),
    _oisOpsItemId :: !(Maybe Text),
    _oisOpsItemType :: !(Maybe Text),
    _oisPlannedStartTime :: !(Maybe POSIX),
    _oisLastModifiedTime :: !(Maybe POSIX),
    _oisCreatedBy :: !(Maybe Text),
    _oisLastModifiedBy :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsItemSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oisStatus' - The OpsItem status. Status can be @Open@ , @In Progress@ , or @Resolved@ .
--
-- * 'oisPlannedEndTime' - The time specified in a change request for a runbook workflow to end. Currently supported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oisSeverity' - A list of OpsItems by severity.
--
-- * 'oisActualStartTime' - The time a runbook workflow started. Currently reported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oisCategory' - A list of OpsItems by category.
--
-- * 'oisOperationalData' - Operational data is custom data that provides useful reference details about the OpsItem.
--
-- * 'oisTitle' - A short heading that describes the nature of the OpsItem and the impacted resource.
--
-- * 'oisSource' - The impacted AWS resource.
--
-- * 'oisCreatedTime' - The date and time the OpsItem was created.
--
-- * 'oisPriority' - The importance of this OpsItem in relation to other OpsItems in the system.
--
-- * 'oisActualEndTime' - The time a runbook workflow ended. Currently reported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oisOpsItemId' - The ID of the OpsItem.
--
-- * 'oisOpsItemType' - The type of OpsItem. Currently, the only valid values are @/aws/changerequest@ and @/aws/issue@ .
--
-- * 'oisPlannedStartTime' - The time specified in a change request for a runbook workflow to start. Currently supported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oisLastModifiedTime' - The date and time the OpsItem was last updated.
--
-- * 'oisCreatedBy' - The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.
--
-- * 'oisLastModifiedBy' - The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.
opsItemSummary ::
  OpsItemSummary
opsItemSummary =
  OpsItemSummary'
    { _oisStatus = Nothing,
      _oisPlannedEndTime = Nothing,
      _oisSeverity = Nothing,
      _oisActualStartTime = Nothing,
      _oisCategory = Nothing,
      _oisOperationalData = Nothing,
      _oisTitle = Nothing,
      _oisSource = Nothing,
      _oisCreatedTime = Nothing,
      _oisPriority = Nothing,
      _oisActualEndTime = Nothing,
      _oisOpsItemId = Nothing,
      _oisOpsItemType = Nothing,
      _oisPlannedStartTime = Nothing,
      _oisLastModifiedTime = Nothing,
      _oisCreatedBy = Nothing,
      _oisLastModifiedBy = Nothing
    }

-- | The OpsItem status. Status can be @Open@ , @In Progress@ , or @Resolved@ .
oisStatus :: Lens' OpsItemSummary (Maybe OpsItemStatus)
oisStatus = lens _oisStatus (\s a -> s {_oisStatus = a})

-- | The time specified in a change request for a runbook workflow to end. Currently supported only for the OpsItem type @/aws/changerequest@ .
oisPlannedEndTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisPlannedEndTime = lens _oisPlannedEndTime (\s a -> s {_oisPlannedEndTime = a}) . mapping _Time

-- | A list of OpsItems by severity.
oisSeverity :: Lens' OpsItemSummary (Maybe Text)
oisSeverity = lens _oisSeverity (\s a -> s {_oisSeverity = a})

-- | The time a runbook workflow started. Currently reported only for the OpsItem type @/aws/changerequest@ .
oisActualStartTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisActualStartTime = lens _oisActualStartTime (\s a -> s {_oisActualStartTime = a}) . mapping _Time

-- | A list of OpsItems by category.
oisCategory :: Lens' OpsItemSummary (Maybe Text)
oisCategory = lens _oisCategory (\s a -> s {_oisCategory = a})

-- | Operational data is custom data that provides useful reference details about the OpsItem.
oisOperationalData :: Lens' OpsItemSummary (HashMap Text OpsItemDataValue)
oisOperationalData = lens _oisOperationalData (\s a -> s {_oisOperationalData = a}) . _Default . _Map

-- | A short heading that describes the nature of the OpsItem and the impacted resource.
oisTitle :: Lens' OpsItemSummary (Maybe Text)
oisTitle = lens _oisTitle (\s a -> s {_oisTitle = a})

-- | The impacted AWS resource.
oisSource :: Lens' OpsItemSummary (Maybe Text)
oisSource = lens _oisSource (\s a -> s {_oisSource = a})

-- | The date and time the OpsItem was created.
oisCreatedTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisCreatedTime = lens _oisCreatedTime (\s a -> s {_oisCreatedTime = a}) . mapping _Time

-- | The importance of this OpsItem in relation to other OpsItems in the system.
oisPriority :: Lens' OpsItemSummary (Maybe Natural)
oisPriority = lens _oisPriority (\s a -> s {_oisPriority = a}) . mapping _Nat

-- | The time a runbook workflow ended. Currently reported only for the OpsItem type @/aws/changerequest@ .
oisActualEndTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisActualEndTime = lens _oisActualEndTime (\s a -> s {_oisActualEndTime = a}) . mapping _Time

-- | The ID of the OpsItem.
oisOpsItemId :: Lens' OpsItemSummary (Maybe Text)
oisOpsItemId = lens _oisOpsItemId (\s a -> s {_oisOpsItemId = a})

-- | The type of OpsItem. Currently, the only valid values are @/aws/changerequest@ and @/aws/issue@ .
oisOpsItemType :: Lens' OpsItemSummary (Maybe Text)
oisOpsItemType = lens _oisOpsItemType (\s a -> s {_oisOpsItemType = a})

-- | The time specified in a change request for a runbook workflow to start. Currently supported only for the OpsItem type @/aws/changerequest@ .
oisPlannedStartTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisPlannedStartTime = lens _oisPlannedStartTime (\s a -> s {_oisPlannedStartTime = a}) . mapping _Time

-- | The date and time the OpsItem was last updated.
oisLastModifiedTime :: Lens' OpsItemSummary (Maybe UTCTime)
oisLastModifiedTime = lens _oisLastModifiedTime (\s a -> s {_oisLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.
oisCreatedBy :: Lens' OpsItemSummary (Maybe Text)
oisCreatedBy = lens _oisCreatedBy (\s a -> s {_oisCreatedBy = a})

-- | The Amazon Resource Name (ARN) of the IAM entity that created the OpsItem.
oisLastModifiedBy :: Lens' OpsItemSummary (Maybe Text)
oisLastModifiedBy = lens _oisLastModifiedBy (\s a -> s {_oisLastModifiedBy = a})

instance FromJSON OpsItemSummary where
  parseJSON =
    withObject
      "OpsItemSummary"
      ( \x ->
          OpsItemSummary'
            <$> (x .:? "Status")
            <*> (x .:? "PlannedEndTime")
            <*> (x .:? "Severity")
            <*> (x .:? "ActualStartTime")
            <*> (x .:? "Category")
            <*> (x .:? "OperationalData" .!= mempty)
            <*> (x .:? "Title")
            <*> (x .:? "Source")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "Priority")
            <*> (x .:? "ActualEndTime")
            <*> (x .:? "OpsItemId")
            <*> (x .:? "OpsItemType")
            <*> (x .:? "PlannedStartTime")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
      )

instance Hashable OpsItemSummary

instance NFData OpsItemSummary
