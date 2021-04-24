{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.BaseConfigurationItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.BaseConfigurationItem where

import Network.AWS.Config.Types.ConfigurationItemStatus
import Network.AWS.Config.Types.ResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The detailed configuration of a specified resource.
--
--
--
-- /See:/ 'baseConfigurationItem' smart constructor.
data BaseConfigurationItem = BaseConfigurationItem'
  { _bciResourceId ::
      !(Maybe Text),
    _bciAccountId ::
      !(Maybe Text),
    _bciConfiguration ::
      !(Maybe Text),
    _bciArn :: !(Maybe Text),
    _bciVersion ::
      !(Maybe Text),
    _bciConfigurationStateId ::
      !(Maybe Text),
    _bciResourceType ::
      !(Maybe ResourceType),
    _bciSupplementaryConfiguration ::
      !(Maybe (Map Text Text)),
    _bciAvailabilityZone ::
      !(Maybe Text),
    _bciConfigurationItemCaptureTime ::
      !(Maybe POSIX),
    _bciConfigurationItemStatus ::
      !( Maybe
           ConfigurationItemStatus
       ),
    _bciResourceCreationTime ::
      !(Maybe POSIX),
    _bciAwsRegion ::
      !(Maybe Text),
    _bciResourceName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BaseConfigurationItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bciResourceId' - The ID of the resource (for example., sg-xxxxxx).
--
-- * 'bciAccountId' - The 12-digit AWS account ID associated with the resource.
--
-- * 'bciConfiguration' - The description of the resource configuration.
--
-- * 'bciArn' - The Amazon Resource Name (ARN) of the resource.
--
-- * 'bciVersion' - The version number of the resource configuration.
--
-- * 'bciConfigurationStateId' - An identifier that indicates the ordering of the configuration items of a resource.
--
-- * 'bciResourceType' - The type of AWS resource.
--
-- * 'bciSupplementaryConfiguration' - Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.
--
-- * 'bciAvailabilityZone' - The Availability Zone associated with the resource.
--
-- * 'bciConfigurationItemCaptureTime' - The time when the configuration recording was initiated.
--
-- * 'bciConfigurationItemStatus' - The configuration item status. The valid values are:     * OK – The resource configuration has been updated     * ResourceDiscovered – The resource was newly discovered     * ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type     * ResourceDeleted – The resource was deleted     * ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type
--
-- * 'bciResourceCreationTime' - The time stamp when the resource was created.
--
-- * 'bciAwsRegion' - The region where the resource resides.
--
-- * 'bciResourceName' - The custom name of the resource, if available.
baseConfigurationItem ::
  BaseConfigurationItem
baseConfigurationItem =
  BaseConfigurationItem'
    { _bciResourceId = Nothing,
      _bciAccountId = Nothing,
      _bciConfiguration = Nothing,
      _bciArn = Nothing,
      _bciVersion = Nothing,
      _bciConfigurationStateId = Nothing,
      _bciResourceType = Nothing,
      _bciSupplementaryConfiguration = Nothing,
      _bciAvailabilityZone = Nothing,
      _bciConfigurationItemCaptureTime = Nothing,
      _bciConfigurationItemStatus = Nothing,
      _bciResourceCreationTime = Nothing,
      _bciAwsRegion = Nothing,
      _bciResourceName = Nothing
    }

-- | The ID of the resource (for example., sg-xxxxxx).
bciResourceId :: Lens' BaseConfigurationItem (Maybe Text)
bciResourceId = lens _bciResourceId (\s a -> s {_bciResourceId = a})

-- | The 12-digit AWS account ID associated with the resource.
bciAccountId :: Lens' BaseConfigurationItem (Maybe Text)
bciAccountId = lens _bciAccountId (\s a -> s {_bciAccountId = a})

-- | The description of the resource configuration.
bciConfiguration :: Lens' BaseConfigurationItem (Maybe Text)
bciConfiguration = lens _bciConfiguration (\s a -> s {_bciConfiguration = a})

-- | The Amazon Resource Name (ARN) of the resource.
bciArn :: Lens' BaseConfigurationItem (Maybe Text)
bciArn = lens _bciArn (\s a -> s {_bciArn = a})

-- | The version number of the resource configuration.
bciVersion :: Lens' BaseConfigurationItem (Maybe Text)
bciVersion = lens _bciVersion (\s a -> s {_bciVersion = a})

-- | An identifier that indicates the ordering of the configuration items of a resource.
bciConfigurationStateId :: Lens' BaseConfigurationItem (Maybe Text)
bciConfigurationStateId = lens _bciConfigurationStateId (\s a -> s {_bciConfigurationStateId = a})

-- | The type of AWS resource.
bciResourceType :: Lens' BaseConfigurationItem (Maybe ResourceType)
bciResourceType = lens _bciResourceType (\s a -> s {_bciResourceType = a})

-- | Configuration attributes that AWS Config returns for certain resource types to supplement the information returned for the configuration parameter.
bciSupplementaryConfiguration :: Lens' BaseConfigurationItem (HashMap Text Text)
bciSupplementaryConfiguration = lens _bciSupplementaryConfiguration (\s a -> s {_bciSupplementaryConfiguration = a}) . _Default . _Map

-- | The Availability Zone associated with the resource.
bciAvailabilityZone :: Lens' BaseConfigurationItem (Maybe Text)
bciAvailabilityZone = lens _bciAvailabilityZone (\s a -> s {_bciAvailabilityZone = a})

-- | The time when the configuration recording was initiated.
bciConfigurationItemCaptureTime :: Lens' BaseConfigurationItem (Maybe UTCTime)
bciConfigurationItemCaptureTime = lens _bciConfigurationItemCaptureTime (\s a -> s {_bciConfigurationItemCaptureTime = a}) . mapping _Time

-- | The configuration item status. The valid values are:     * OK – The resource configuration has been updated     * ResourceDiscovered – The resource was newly discovered     * ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type     * ResourceDeleted – The resource was deleted     * ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type
bciConfigurationItemStatus :: Lens' BaseConfigurationItem (Maybe ConfigurationItemStatus)
bciConfigurationItemStatus = lens _bciConfigurationItemStatus (\s a -> s {_bciConfigurationItemStatus = a})

-- | The time stamp when the resource was created.
bciResourceCreationTime :: Lens' BaseConfigurationItem (Maybe UTCTime)
bciResourceCreationTime = lens _bciResourceCreationTime (\s a -> s {_bciResourceCreationTime = a}) . mapping _Time

-- | The region where the resource resides.
bciAwsRegion :: Lens' BaseConfigurationItem (Maybe Text)
bciAwsRegion = lens _bciAwsRegion (\s a -> s {_bciAwsRegion = a})

-- | The custom name of the resource, if available.
bciResourceName :: Lens' BaseConfigurationItem (Maybe Text)
bciResourceName = lens _bciResourceName (\s a -> s {_bciResourceName = a})

instance FromJSON BaseConfigurationItem where
  parseJSON =
    withObject
      "BaseConfigurationItem"
      ( \x ->
          BaseConfigurationItem'
            <$> (x .:? "resourceId")
            <*> (x .:? "accountId")
            <*> (x .:? "configuration")
            <*> (x .:? "arn")
            <*> (x .:? "version")
            <*> (x .:? "configurationStateId")
            <*> (x .:? "resourceType")
            <*> (x .:? "supplementaryConfiguration" .!= mempty)
            <*> (x .:? "availabilityZone")
            <*> (x .:? "configurationItemCaptureTime")
            <*> (x .:? "configurationItemStatus")
            <*> (x .:? "resourceCreationTime")
            <*> (x .:? "awsRegion")
            <*> (x .:? "resourceName")
      )

instance Hashable BaseConfigurationItem

instance NFData BaseConfigurationItem
