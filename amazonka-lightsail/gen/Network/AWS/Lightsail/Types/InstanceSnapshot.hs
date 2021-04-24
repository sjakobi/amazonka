{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceSnapshot where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.Disk
import Network.AWS.Lightsail.Types.InstanceSnapshotState
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes an instance snapshot.
--
--
--
-- /See:/ 'instanceSnapshot' smart constructor.
data InstanceSnapshot = InstanceSnapshot'
  { _insIsFromAutoSnapshot ::
      !(Maybe Bool),
    _insCreatedAt :: !(Maybe POSIX),
    _insArn :: !(Maybe Text),
    _insFromInstanceARN :: !(Maybe Text),
    _insResourceType ::
      !(Maybe ResourceType),
    _insSupportCode :: !(Maybe Text),
    _insSizeInGb :: !(Maybe Int),
    _insFromBundleId :: !(Maybe Text),
    _insState ::
      !(Maybe InstanceSnapshotState),
    _insName :: !(Maybe Text),
    _insFromBlueprintId :: !(Maybe Text),
    _insTags :: !(Maybe [Tag]),
    _insFromInstanceName :: !(Maybe Text),
    _insLocation ::
      !(Maybe ResourceLocation),
    _insProgress :: !(Maybe Text),
    _insFromAttachedDisks ::
      !(Maybe [Disk])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insIsFromAutoSnapshot' - A Boolean value indicating whether the snapshot was created from an automatic snapshot.
--
-- * 'insCreatedAt' - The timestamp when the snapshot was created (e.g., @1479907467.024@ ).
--
-- * 'insArn' - The Amazon Resource Name (ARN) of the snapshot (e.g., @arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE@ ).
--
-- * 'insFromInstanceARN' - The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., @arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE@ ).
--
-- * 'insResourceType' - The type of resource (usually @InstanceSnapshot@ ).
--
-- * 'insSupportCode' - The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'insSizeInGb' - The size in GB of the SSD.
--
-- * 'insFromBundleId' - The bundle ID from which you created the snapshot (e.g., @micro_1_0@ ).
--
-- * 'insState' - The state the snapshot is in.
--
-- * 'insName' - The name of the snapshot.
--
-- * 'insFromBlueprintId' - The blueprint ID from which you created the snapshot (e.g., @os_debian_8_3@ ). A blueprint is a virtual private server (or /instance/ ) image used to create instances quickly.
--
-- * 'insTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'insFromInstanceName' - The instance from which the snapshot was created.
--
-- * 'insLocation' - The region name and Availability Zone where you created the snapshot.
--
-- * 'insProgress' - The progress of the snapshot.
--
-- * 'insFromAttachedDisks' - An array of disk objects containing information about all block storage disks.
instanceSnapshot ::
  InstanceSnapshot
instanceSnapshot =
  InstanceSnapshot'
    { _insIsFromAutoSnapshot = Nothing,
      _insCreatedAt = Nothing,
      _insArn = Nothing,
      _insFromInstanceARN = Nothing,
      _insResourceType = Nothing,
      _insSupportCode = Nothing,
      _insSizeInGb = Nothing,
      _insFromBundleId = Nothing,
      _insState = Nothing,
      _insName = Nothing,
      _insFromBlueprintId = Nothing,
      _insTags = Nothing,
      _insFromInstanceName = Nothing,
      _insLocation = Nothing,
      _insProgress = Nothing,
      _insFromAttachedDisks = Nothing
    }

-- | A Boolean value indicating whether the snapshot was created from an automatic snapshot.
insIsFromAutoSnapshot :: Lens' InstanceSnapshot (Maybe Bool)
insIsFromAutoSnapshot = lens _insIsFromAutoSnapshot (\s a -> s {_insIsFromAutoSnapshot = a})

-- | The timestamp when the snapshot was created (e.g., @1479907467.024@ ).
insCreatedAt :: Lens' InstanceSnapshot (Maybe UTCTime)
insCreatedAt = lens _insCreatedAt (\s a -> s {_insCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the snapshot (e.g., @arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE@ ).
insArn :: Lens' InstanceSnapshot (Maybe Text)
insArn = lens _insArn (\s a -> s {_insArn = a})

-- | The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g., @arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE@ ).
insFromInstanceARN :: Lens' InstanceSnapshot (Maybe Text)
insFromInstanceARN = lens _insFromInstanceARN (\s a -> s {_insFromInstanceARN = a})

-- | The type of resource (usually @InstanceSnapshot@ ).
insResourceType :: Lens' InstanceSnapshot (Maybe ResourceType)
insResourceType = lens _insResourceType (\s a -> s {_insResourceType = a})

-- | The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
insSupportCode :: Lens' InstanceSnapshot (Maybe Text)
insSupportCode = lens _insSupportCode (\s a -> s {_insSupportCode = a})

-- | The size in GB of the SSD.
insSizeInGb :: Lens' InstanceSnapshot (Maybe Int)
insSizeInGb = lens _insSizeInGb (\s a -> s {_insSizeInGb = a})

-- | The bundle ID from which you created the snapshot (e.g., @micro_1_0@ ).
insFromBundleId :: Lens' InstanceSnapshot (Maybe Text)
insFromBundleId = lens _insFromBundleId (\s a -> s {_insFromBundleId = a})

-- | The state the snapshot is in.
insState :: Lens' InstanceSnapshot (Maybe InstanceSnapshotState)
insState = lens _insState (\s a -> s {_insState = a})

-- | The name of the snapshot.
insName :: Lens' InstanceSnapshot (Maybe Text)
insName = lens _insName (\s a -> s {_insName = a})

-- | The blueprint ID from which you created the snapshot (e.g., @os_debian_8_3@ ). A blueprint is a virtual private server (or /instance/ ) image used to create instances quickly.
insFromBlueprintId :: Lens' InstanceSnapshot (Maybe Text)
insFromBlueprintId = lens _insFromBlueprintId (\s a -> s {_insFromBlueprintId = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
insTags :: Lens' InstanceSnapshot [Tag]
insTags = lens _insTags (\s a -> s {_insTags = a}) . _Default . _Coerce

-- | The instance from which the snapshot was created.
insFromInstanceName :: Lens' InstanceSnapshot (Maybe Text)
insFromInstanceName = lens _insFromInstanceName (\s a -> s {_insFromInstanceName = a})

-- | The region name and Availability Zone where you created the snapshot.
insLocation :: Lens' InstanceSnapshot (Maybe ResourceLocation)
insLocation = lens _insLocation (\s a -> s {_insLocation = a})

-- | The progress of the snapshot.
insProgress :: Lens' InstanceSnapshot (Maybe Text)
insProgress = lens _insProgress (\s a -> s {_insProgress = a})

-- | An array of disk objects containing information about all block storage disks.
insFromAttachedDisks :: Lens' InstanceSnapshot [Disk]
insFromAttachedDisks = lens _insFromAttachedDisks (\s a -> s {_insFromAttachedDisks = a}) . _Default . _Coerce

instance FromJSON InstanceSnapshot where
  parseJSON =
    withObject
      "InstanceSnapshot"
      ( \x ->
          InstanceSnapshot'
            <$> (x .:? "isFromAutoSnapshot")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "fromInstanceArn")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "sizeInGb")
            <*> (x .:? "fromBundleId")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "fromBlueprintId")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "fromInstanceName")
            <*> (x .:? "location")
            <*> (x .:? "progress")
            <*> (x .:? "fromAttachedDisks" .!= mempty)
      )

instance Hashable InstanceSnapshot

instance NFData InstanceSnapshot
