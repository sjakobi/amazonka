{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItem where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.OpsItemDataValue
import Network.AWS.SSM.Types.OpsItemNotification
import Network.AWS.SSM.Types.OpsItemStatus
import Network.AWS.SSM.Types.RelatedOpsItem

-- | Operations engineers and IT professionals use OpsCenter to view, investigate, and remediate operational issues impacting the performance and health of their AWS resources. For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter.html AWS Systems Manager OpsCenter> in the /AWS Systems Manager User Guide/ .
--
--
--
-- /See:/ 'opsItem' smart constructor.
data OpsItem = OpsItem'
  { _oiStatus ::
      !(Maybe OpsItemStatus),
    _oiPlannedEndTime :: !(Maybe POSIX),
    _oiSeverity :: !(Maybe Text),
    _oiActualStartTime :: !(Maybe POSIX),
    _oiCategory :: !(Maybe Text),
    _oiOperationalData ::
      !(Maybe (Map Text OpsItemDataValue)),
    _oiTitle :: !(Maybe Text),
    _oiSource :: !(Maybe Text),
    _oiCreatedTime :: !(Maybe POSIX),
    _oiVersion :: !(Maybe Text),
    _oiPriority :: !(Maybe Nat),
    _oiActualEndTime :: !(Maybe POSIX),
    _oiOpsItemId :: !(Maybe Text),
    _oiOpsItemType :: !(Maybe Text),
    _oiPlannedStartTime :: !(Maybe POSIX),
    _oiLastModifiedTime :: !(Maybe POSIX),
    _oiNotifications :: !(Maybe [OpsItemNotification]),
    _oiDescription :: !(Maybe Text),
    _oiCreatedBy :: !(Maybe Text),
    _oiLastModifiedBy :: !(Maybe Text),
    _oiRelatedOpsItems :: !(Maybe [RelatedOpsItem])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'OpsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oiStatus' - The OpsItem status. Status can be @Open@ , @In Progress@ , or @Resolved@ . For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html Editing OpsItem details> in the /AWS Systems Manager User Guide/ .
--
-- * 'oiPlannedEndTime' - The time specified in a change request for a runbook workflow to end. Currently supported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oiSeverity' - The severity of the OpsItem. Severity options range from 1 to 4.
--
-- * 'oiActualStartTime' - The time a runbook workflow started. Currently reported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oiCategory' - An OpsItem category. Category options include: Availability, Cost, Performance, Recovery, Security.
--
-- * 'oiOperationalData' - Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB. /Important:/ Operational data keys /can't/ begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm. You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the 'DescribeOpsItems' API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the 'GetOpsItem' API action). Use the @/aws/resources@ key in OperationalData to specify a related resource in the request. Use the @/aws/automations@ key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems Creating OpsItems manually> in the /AWS Systems Manager User Guide/ .
--
-- * 'oiTitle' - A short heading that describes the nature of the OpsItem and the impacted resource.
--
-- * 'oiSource' - The origin of the OpsItem, such as Amazon EC2 or Systems Manager. The impacted resource is a subset of source.
--
-- * 'oiCreatedTime' - The date and time the OpsItem was created.
--
-- * 'oiVersion' - The version of this OpsItem. Each time the OpsItem is edited the version number increments by one.
--
-- * 'oiPriority' - The importance of this OpsItem in relation to other OpsItems in the system.
--
-- * 'oiActualEndTime' - The time a runbook workflow ended. Currently reported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oiOpsItemId' - The ID of the OpsItem.
--
-- * 'oiOpsItemType' - The type of OpsItem. Currently, the only valid values are @/aws/changerequest@ and @/aws/issue@ .
--
-- * 'oiPlannedStartTime' - The time specified in a change request for a runbook workflow to start. Currently supported only for the OpsItem type @/aws/changerequest@ .
--
-- * 'oiLastModifiedTime' - The date and time the OpsItem was last updated.
--
-- * 'oiNotifications' - The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.
--
-- * 'oiDescription' - The OpsItem description.
--
-- * 'oiCreatedBy' - The ARN of the AWS account that created the OpsItem.
--
-- * 'oiLastModifiedBy' - The ARN of the AWS account that last updated the OpsItem.
--
-- * 'oiRelatedOpsItems' - One or more OpsItems that share something in common with the current OpsItem. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.
opsItem ::
  OpsItem
opsItem =
  OpsItem'
    { _oiStatus = Nothing,
      _oiPlannedEndTime = Nothing,
      _oiSeverity = Nothing,
      _oiActualStartTime = Nothing,
      _oiCategory = Nothing,
      _oiOperationalData = Nothing,
      _oiTitle = Nothing,
      _oiSource = Nothing,
      _oiCreatedTime = Nothing,
      _oiVersion = Nothing,
      _oiPriority = Nothing,
      _oiActualEndTime = Nothing,
      _oiOpsItemId = Nothing,
      _oiOpsItemType = Nothing,
      _oiPlannedStartTime = Nothing,
      _oiLastModifiedTime = Nothing,
      _oiNotifications = Nothing,
      _oiDescription = Nothing,
      _oiCreatedBy = Nothing,
      _oiLastModifiedBy = Nothing,
      _oiRelatedOpsItems = Nothing
    }

-- | The OpsItem status. Status can be @Open@ , @In Progress@ , or @Resolved@ . For more information, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-working-with-OpsItems-editing-details.html Editing OpsItem details> in the /AWS Systems Manager User Guide/ .
oiStatus :: Lens' OpsItem (Maybe OpsItemStatus)
oiStatus = lens _oiStatus (\s a -> s {_oiStatus = a})

-- | The time specified in a change request for a runbook workflow to end. Currently supported only for the OpsItem type @/aws/changerequest@ .
oiPlannedEndTime :: Lens' OpsItem (Maybe UTCTime)
oiPlannedEndTime = lens _oiPlannedEndTime (\s a -> s {_oiPlannedEndTime = a}) . mapping _Time

-- | The severity of the OpsItem. Severity options range from 1 to 4.
oiSeverity :: Lens' OpsItem (Maybe Text)
oiSeverity = lens _oiSeverity (\s a -> s {_oiSeverity = a})

-- | The time a runbook workflow started. Currently reported only for the OpsItem type @/aws/changerequest@ .
oiActualStartTime :: Lens' OpsItem (Maybe UTCTime)
oiActualStartTime = lens _oiActualStartTime (\s a -> s {_oiActualStartTime = a}) . mapping _Time

-- | An OpsItem category. Category options include: Availability, Cost, Performance, Recovery, Security.
oiCategory :: Lens' OpsItem (Maybe Text)
oiCategory = lens _oiCategory (\s a -> s {_oiCategory = a})

-- | Operational data is custom data that provides useful reference details about the OpsItem. For example, you can specify log files, error strings, license keys, troubleshooting tips, or other relevant data. You enter operational data as key-value pairs. The key has a maximum length of 128 characters. The value has a maximum size of 20 KB. /Important:/ Operational data keys /can't/ begin with the following: amazon, aws, amzn, ssm, /amazon, /aws, /amzn, /ssm. You can choose to make the data searchable by other users in the account or you can restrict search access. Searchable data means that all users with access to the OpsItem Overview page (as provided by the 'DescribeOpsItems' API action) can view and search on the specified data. Operational data that is not searchable is only viewable by users who have access to the OpsItem (as provided by the 'GetOpsItem' API action). Use the @/aws/resources@ key in OperationalData to specify a related resource in the request. Use the @/aws/automations@ key in OperationalData to associate an Automation runbook with the OpsItem. To view AWS CLI example commands that use these keys, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/OpsCenter-creating-OpsItems.html#OpsCenter-manually-create-OpsItems Creating OpsItems manually> in the /AWS Systems Manager User Guide/ .
oiOperationalData :: Lens' OpsItem (HashMap Text OpsItemDataValue)
oiOperationalData = lens _oiOperationalData (\s a -> s {_oiOperationalData = a}) . _Default . _Map

-- | A short heading that describes the nature of the OpsItem and the impacted resource.
oiTitle :: Lens' OpsItem (Maybe Text)
oiTitle = lens _oiTitle (\s a -> s {_oiTitle = a})

-- | The origin of the OpsItem, such as Amazon EC2 or Systems Manager. The impacted resource is a subset of source.
oiSource :: Lens' OpsItem (Maybe Text)
oiSource = lens _oiSource (\s a -> s {_oiSource = a})

-- | The date and time the OpsItem was created.
oiCreatedTime :: Lens' OpsItem (Maybe UTCTime)
oiCreatedTime = lens _oiCreatedTime (\s a -> s {_oiCreatedTime = a}) . mapping _Time

-- | The version of this OpsItem. Each time the OpsItem is edited the version number increments by one.
oiVersion :: Lens' OpsItem (Maybe Text)
oiVersion = lens _oiVersion (\s a -> s {_oiVersion = a})

-- | The importance of this OpsItem in relation to other OpsItems in the system.
oiPriority :: Lens' OpsItem (Maybe Natural)
oiPriority = lens _oiPriority (\s a -> s {_oiPriority = a}) . mapping _Nat

-- | The time a runbook workflow ended. Currently reported only for the OpsItem type @/aws/changerequest@ .
oiActualEndTime :: Lens' OpsItem (Maybe UTCTime)
oiActualEndTime = lens _oiActualEndTime (\s a -> s {_oiActualEndTime = a}) . mapping _Time

-- | The ID of the OpsItem.
oiOpsItemId :: Lens' OpsItem (Maybe Text)
oiOpsItemId = lens _oiOpsItemId (\s a -> s {_oiOpsItemId = a})

-- | The type of OpsItem. Currently, the only valid values are @/aws/changerequest@ and @/aws/issue@ .
oiOpsItemType :: Lens' OpsItem (Maybe Text)
oiOpsItemType = lens _oiOpsItemType (\s a -> s {_oiOpsItemType = a})

-- | The time specified in a change request for a runbook workflow to start. Currently supported only for the OpsItem type @/aws/changerequest@ .
oiPlannedStartTime :: Lens' OpsItem (Maybe UTCTime)
oiPlannedStartTime = lens _oiPlannedStartTime (\s a -> s {_oiPlannedStartTime = a}) . mapping _Time

-- | The date and time the OpsItem was last updated.
oiLastModifiedTime :: Lens' OpsItem (Maybe UTCTime)
oiLastModifiedTime = lens _oiLastModifiedTime (\s a -> s {_oiLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of an SNS topic where notifications are sent when this OpsItem is edited or changed.
oiNotifications :: Lens' OpsItem [OpsItemNotification]
oiNotifications = lens _oiNotifications (\s a -> s {_oiNotifications = a}) . _Default . _Coerce

-- | The OpsItem description.
oiDescription :: Lens' OpsItem (Maybe Text)
oiDescription = lens _oiDescription (\s a -> s {_oiDescription = a})

-- | The ARN of the AWS account that created the OpsItem.
oiCreatedBy :: Lens' OpsItem (Maybe Text)
oiCreatedBy = lens _oiCreatedBy (\s a -> s {_oiCreatedBy = a})

-- | The ARN of the AWS account that last updated the OpsItem.
oiLastModifiedBy :: Lens' OpsItem (Maybe Text)
oiLastModifiedBy = lens _oiLastModifiedBy (\s a -> s {_oiLastModifiedBy = a})

-- | One or more OpsItems that share something in common with the current OpsItem. For example, related OpsItems can include OpsItems with similar error messages, impacted resources, or statuses for the impacted resource.
oiRelatedOpsItems :: Lens' OpsItem [RelatedOpsItem]
oiRelatedOpsItems = lens _oiRelatedOpsItems (\s a -> s {_oiRelatedOpsItems = a}) . _Default . _Coerce

instance FromJSON OpsItem where
  parseJSON =
    withObject
      "OpsItem"
      ( \x ->
          OpsItem'
            <$> (x .:? "Status")
            <*> (x .:? "PlannedEndTime")
            <*> (x .:? "Severity")
            <*> (x .:? "ActualStartTime")
            <*> (x .:? "Category")
            <*> (x .:? "OperationalData" .!= mempty)
            <*> (x .:? "Title")
            <*> (x .:? "Source")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "Version")
            <*> (x .:? "Priority")
            <*> (x .:? "ActualEndTime")
            <*> (x .:? "OpsItemId")
            <*> (x .:? "OpsItemType")
            <*> (x .:? "PlannedStartTime")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "Notifications" .!= mempty)
            <*> (x .:? "Description")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "RelatedOpsItems" .!= mempty)
      )

instance Hashable OpsItem

instance NFData OpsItem
