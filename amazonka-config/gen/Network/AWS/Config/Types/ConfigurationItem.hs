{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConfigurationItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConfigurationItem where

import Network.AWS.Config.Types.ConfigurationItemStatus
import Network.AWS.Config.Types.Relationship
import Network.AWS.Config.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A list that contains detailed configurations of a specified resource.
--
--
--
-- /See:/ 'configurationItem' smart constructor.
data ConfigurationItem = ConfigurationItem'
  { _ciRelationships ::
      !(Maybe [Relationship]),
    _ciResourceId :: !(Maybe Text),
    _ciAccountId :: !(Maybe Text),
    _ciRelatedEvents :: !(Maybe [Text]),
    _ciConfiguration :: !(Maybe Text),
    _ciArn :: !(Maybe Text),
    _ciVersion :: !(Maybe Text),
    _ciConfigurationStateId ::
      !(Maybe Text),
    _ciResourceType ::
      !(Maybe ResourceType),
    _ciSupplementaryConfiguration ::
      !(Maybe (Map Text Text)),
    _ciAvailabilityZone ::
      !(Maybe Text),
    _ciConfigurationItemCaptureTime ::
      !(Maybe POSIX),
    _ciConfigurationItemStatus ::
      !(Maybe ConfigurationItemStatus),
    _ciTags :: !(Maybe (Map Text Text)),
    _ciResourceCreationTime ::
      !(Maybe POSIX),
    _ciConfigurationItemMD5Hash ::
      !(Maybe Text),
    _ciAwsRegion :: !(Maybe Text),
    _ciResourceName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ConfigurationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciRelationships' - A list of related AWS resources.
--
-- * 'ciResourceId' - The ID of the resource (for example, @sg-xxxxxx@ ).
--
-- * 'ciAccountId' - The 12-digit AWS account ID associated with the resource.
--
-- * 'ciRelatedEvents' - A list of CloudTrail event IDs. A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html What Is AWS CloudTrail> . An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the <https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html LookupEvents API> in the /AWS CloudTrail API Reference/ to retrieve the events for the resource.
--
-- * 'ciConfiguration' - The description of the resource configuration.
--
-- * 'ciArn' - Amazon Resource Name (ARN) associated with the resource.
--
-- * 'ciVersion' - The version number of the resource configuration.
--
-- * 'ciConfigurationStateId' - An identifier that indicates the ordering of the configuration items of a resource.
--
-- * 'ciResourceType' - The type of AWS resource.
--
-- * 'ciSupplementaryConfiguration' - Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the @configuration@ parameter.
--
-- * 'ciAvailabilityZone' - The Availability Zone associated with the resource.
--
-- * 'ciConfigurationItemCaptureTime' - The time when the configuration recording was initiated.
--
-- * 'ciConfigurationItemStatus' - The configuration item status. The valid values are:     * OK – The resource configuration has been updated     * ResourceDiscovered – The resource was newly discovered     * ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type     * ResourceDeleted – The resource was deleted     * ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type
--
-- * 'ciTags' - A mapping of key value tags associated with the resource.
--
-- * 'ciResourceCreationTime' - The time stamp when the resource was created.
--
-- * 'ciConfigurationItemMD5Hash' - Unique MD5 hash that represents the configuration item's state. You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
--
-- * 'ciAwsRegion' - The region where the resource resides.
--
-- * 'ciResourceName' - The custom name of the resource, if available.
configurationItem ::
  ConfigurationItem
configurationItem =
  ConfigurationItem'
    { _ciRelationships = Nothing,
      _ciResourceId = Nothing,
      _ciAccountId = Nothing,
      _ciRelatedEvents = Nothing,
      _ciConfiguration = Nothing,
      _ciArn = Nothing,
      _ciVersion = Nothing,
      _ciConfigurationStateId = Nothing,
      _ciResourceType = Nothing,
      _ciSupplementaryConfiguration = Nothing,
      _ciAvailabilityZone = Nothing,
      _ciConfigurationItemCaptureTime = Nothing,
      _ciConfigurationItemStatus = Nothing,
      _ciTags = Nothing,
      _ciResourceCreationTime = Nothing,
      _ciConfigurationItemMD5Hash = Nothing,
      _ciAwsRegion = Nothing,
      _ciResourceName = Nothing
    }

-- | A list of related AWS resources.
ciRelationships :: Lens' ConfigurationItem [Relationship]
ciRelationships = lens _ciRelationships (\s a -> s {_ciRelationships = a}) . _Default . _Coerce

-- | The ID of the resource (for example, @sg-xxxxxx@ ).
ciResourceId :: Lens' ConfigurationItem (Maybe Text)
ciResourceId = lens _ciResourceId (\s a -> s {_ciResourceId = a})

-- | The 12-digit AWS account ID associated with the resource.
ciAccountId :: Lens' ConfigurationItem (Maybe Text)
ciAccountId = lens _ciAccountId (\s a -> s {_ciAccountId = a})

-- | A list of CloudTrail event IDs. A populated field indicates that the current configuration was initiated by the events recorded in the CloudTrail log. For more information about CloudTrail, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html What Is AWS CloudTrail> . An empty field indicates that the current configuration was not initiated by any event. As of Version 1.3, the relatedEvents field is empty. You can access the <https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html LookupEvents API> in the /AWS CloudTrail API Reference/ to retrieve the events for the resource.
ciRelatedEvents :: Lens' ConfigurationItem [Text]
ciRelatedEvents = lens _ciRelatedEvents (\s a -> s {_ciRelatedEvents = a}) . _Default . _Coerce

-- | The description of the resource configuration.
ciConfiguration :: Lens' ConfigurationItem (Maybe Text)
ciConfiguration = lens _ciConfiguration (\s a -> s {_ciConfiguration = a})

-- | Amazon Resource Name (ARN) associated with the resource.
ciArn :: Lens' ConfigurationItem (Maybe Text)
ciArn = lens _ciArn (\s a -> s {_ciArn = a})

-- | The version number of the resource configuration.
ciVersion :: Lens' ConfigurationItem (Maybe Text)
ciVersion = lens _ciVersion (\s a -> s {_ciVersion = a})

-- | An identifier that indicates the ordering of the configuration items of a resource.
ciConfigurationStateId :: Lens' ConfigurationItem (Maybe Text)
ciConfigurationStateId = lens _ciConfigurationStateId (\s a -> s {_ciConfigurationStateId = a})

-- | The type of AWS resource.
ciResourceType :: Lens' ConfigurationItem (Maybe ResourceType)
ciResourceType = lens _ciResourceType (\s a -> s {_ciResourceType = a})

-- | Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the @configuration@ parameter.
ciSupplementaryConfiguration :: Lens' ConfigurationItem (HashMap Text Text)
ciSupplementaryConfiguration = lens _ciSupplementaryConfiguration (\s a -> s {_ciSupplementaryConfiguration = a}) . _Default . _Map

-- | The Availability Zone associated with the resource.
ciAvailabilityZone :: Lens' ConfigurationItem (Maybe Text)
ciAvailabilityZone = lens _ciAvailabilityZone (\s a -> s {_ciAvailabilityZone = a})

-- | The time when the configuration recording was initiated.
ciConfigurationItemCaptureTime :: Lens' ConfigurationItem (Maybe UTCTime)
ciConfigurationItemCaptureTime = lens _ciConfigurationItemCaptureTime (\s a -> s {_ciConfigurationItemCaptureTime = a}) . mapping _Time

-- | The configuration item status. The valid values are:     * OK – The resource configuration has been updated     * ResourceDiscovered – The resource was newly discovered     * ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type     * ResourceDeleted – The resource was deleted     * ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type
ciConfigurationItemStatus :: Lens' ConfigurationItem (Maybe ConfigurationItemStatus)
ciConfigurationItemStatus = lens _ciConfigurationItemStatus (\s a -> s {_ciConfigurationItemStatus = a})

-- | A mapping of key value tags associated with the resource.
ciTags :: Lens' ConfigurationItem (HashMap Text Text)
ciTags = lens _ciTags (\s a -> s {_ciTags = a}) . _Default . _Map

-- | The time stamp when the resource was created.
ciResourceCreationTime :: Lens' ConfigurationItem (Maybe UTCTime)
ciResourceCreationTime = lens _ciResourceCreationTime (\s a -> s {_ciResourceCreationTime = a}) . mapping _Time

-- | Unique MD5 hash that represents the configuration item's state. You can use MD5 hash to compare the states of two or more configuration items that are associated with the same resource.
ciConfigurationItemMD5Hash :: Lens' ConfigurationItem (Maybe Text)
ciConfigurationItemMD5Hash = lens _ciConfigurationItemMD5Hash (\s a -> s {_ciConfigurationItemMD5Hash = a})

-- | The region where the resource resides.
ciAwsRegion :: Lens' ConfigurationItem (Maybe Text)
ciAwsRegion = lens _ciAwsRegion (\s a -> s {_ciAwsRegion = a})

-- | The custom name of the resource, if available.
ciResourceName :: Lens' ConfigurationItem (Maybe Text)
ciResourceName = lens _ciResourceName (\s a -> s {_ciResourceName = a})

instance FromJSON ConfigurationItem where
  parseJSON =
    withObject
      "ConfigurationItem"
      ( \x ->
          ConfigurationItem'
            <$> (x .:? "relationships" .!= mempty)
            <*> (x .:? "resourceId")
            <*> (x .:? "accountId")
            <*> (x .:? "relatedEvents" .!= mempty)
            <*> (x .:? "configuration")
            <*> (x .:? "arn")
            <*> (x .:? "version")
            <*> (x .:? "configurationStateId")
            <*> (x .:? "resourceType")
            <*> (x .:? "supplementaryConfiguration" .!= mempty)
            <*> (x .:? "availabilityZone")
            <*> (x .:? "configurationItemCaptureTime")
            <*> (x .:? "configurationItemStatus")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "resourceCreationTime")
            <*> (x .:? "configurationItemMD5Hash")
            <*> (x .:? "awsRegion")
            <*> (x .:? "resourceName")
      )

instance Hashable ConfigurationItem

instance NFData ConfigurationItem
