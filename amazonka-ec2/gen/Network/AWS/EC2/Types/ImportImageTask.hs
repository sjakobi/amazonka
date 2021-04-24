{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImportImageTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImportImageTask where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ImportImageLicenseConfigurationResponse
import Network.AWS.EC2.Types.SnapshotDetail
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an import image task.
--
--
--
-- /See:/ 'importImageTask' smart constructor.
data ImportImageTask = ImportImageTask'
  { _iitHypervisor ::
      !(Maybe Text),
    _iitPlatform :: !(Maybe Text),
    _iitStatusMessage :: !(Maybe Text),
    _iitStatus :: !(Maybe Text),
    _iitSnapshotDetails ::
      !(Maybe [SnapshotDetail]),
    _iitEncrypted :: !(Maybe Bool),
    _iitImportTaskId :: !(Maybe Text),
    _iitLicenseSpecifications ::
      !( Maybe
           [ImportImageLicenseConfigurationResponse]
       ),
    _iitArchitecture :: !(Maybe Text),
    _iitImageId :: !(Maybe Text),
    _iitKMSKeyId :: !(Maybe Text),
    _iitTags :: !(Maybe [Tag]),
    _iitDescription :: !(Maybe Text),
    _iitLicenseType :: !(Maybe Text),
    _iitProgress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportImageTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iitHypervisor' - The target hypervisor for the import task. Valid values: @xen@
--
-- * 'iitPlatform' - The description string for the import image task.
--
-- * 'iitStatusMessage' - A descriptive status message for the import image task.
--
-- * 'iitStatus' - A brief status for the import image task.
--
-- * 'iitSnapshotDetails' - Information about the snapshots.
--
-- * 'iitEncrypted' - Indicates whether the image is encrypted.
--
-- * 'iitImportTaskId' - The ID of the import image task.
--
-- * 'iitLicenseSpecifications' - The ARNs of the license configurations that are associated with the import image task.
--
-- * 'iitArchitecture' - The architecture of the virtual machine. Valid values: @i386@ | @x86_64@ | @arm64@
--
-- * 'iitImageId' - The ID of the Amazon Machine Image (AMI) of the imported virtual machine.
--
-- * 'iitKMSKeyId' - The identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to create the encrypted image.
--
-- * 'iitTags' - The tags for the import image task.
--
-- * 'iitDescription' - A description of the import task.
--
-- * 'iitLicenseType' - The license type of the virtual machine.
--
-- * 'iitProgress' - The percentage of progress of the import image task.
importImageTask ::
  ImportImageTask
importImageTask =
  ImportImageTask'
    { _iitHypervisor = Nothing,
      _iitPlatform = Nothing,
      _iitStatusMessage = Nothing,
      _iitStatus = Nothing,
      _iitSnapshotDetails = Nothing,
      _iitEncrypted = Nothing,
      _iitImportTaskId = Nothing,
      _iitLicenseSpecifications = Nothing,
      _iitArchitecture = Nothing,
      _iitImageId = Nothing,
      _iitKMSKeyId = Nothing,
      _iitTags = Nothing,
      _iitDescription = Nothing,
      _iitLicenseType = Nothing,
      _iitProgress = Nothing
    }

-- | The target hypervisor for the import task. Valid values: @xen@
iitHypervisor :: Lens' ImportImageTask (Maybe Text)
iitHypervisor = lens _iitHypervisor (\s a -> s {_iitHypervisor = a})

-- | The description string for the import image task.
iitPlatform :: Lens' ImportImageTask (Maybe Text)
iitPlatform = lens _iitPlatform (\s a -> s {_iitPlatform = a})

-- | A descriptive status message for the import image task.
iitStatusMessage :: Lens' ImportImageTask (Maybe Text)
iitStatusMessage = lens _iitStatusMessage (\s a -> s {_iitStatusMessage = a})

-- | A brief status for the import image task.
iitStatus :: Lens' ImportImageTask (Maybe Text)
iitStatus = lens _iitStatus (\s a -> s {_iitStatus = a})

-- | Information about the snapshots.
iitSnapshotDetails :: Lens' ImportImageTask [SnapshotDetail]
iitSnapshotDetails = lens _iitSnapshotDetails (\s a -> s {_iitSnapshotDetails = a}) . _Default . _Coerce

-- | Indicates whether the image is encrypted.
iitEncrypted :: Lens' ImportImageTask (Maybe Bool)
iitEncrypted = lens _iitEncrypted (\s a -> s {_iitEncrypted = a})

-- | The ID of the import image task.
iitImportTaskId :: Lens' ImportImageTask (Maybe Text)
iitImportTaskId = lens _iitImportTaskId (\s a -> s {_iitImportTaskId = a})

-- | The ARNs of the license configurations that are associated with the import image task.
iitLicenseSpecifications :: Lens' ImportImageTask [ImportImageLicenseConfigurationResponse]
iitLicenseSpecifications = lens _iitLicenseSpecifications (\s a -> s {_iitLicenseSpecifications = a}) . _Default . _Coerce

-- | The architecture of the virtual machine. Valid values: @i386@ | @x86_64@ | @arm64@
iitArchitecture :: Lens' ImportImageTask (Maybe Text)
iitArchitecture = lens _iitArchitecture (\s a -> s {_iitArchitecture = a})

-- | The ID of the Amazon Machine Image (AMI) of the imported virtual machine.
iitImageId :: Lens' ImportImageTask (Maybe Text)
iitImageId = lens _iitImageId (\s a -> s {_iitImageId = a})

-- | The identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to create the encrypted image.
iitKMSKeyId :: Lens' ImportImageTask (Maybe Text)
iitKMSKeyId = lens _iitKMSKeyId (\s a -> s {_iitKMSKeyId = a})

-- | The tags for the import image task.
iitTags :: Lens' ImportImageTask [Tag]
iitTags = lens _iitTags (\s a -> s {_iitTags = a}) . _Default . _Coerce

-- | A description of the import task.
iitDescription :: Lens' ImportImageTask (Maybe Text)
iitDescription = lens _iitDescription (\s a -> s {_iitDescription = a})

-- | The license type of the virtual machine.
iitLicenseType :: Lens' ImportImageTask (Maybe Text)
iitLicenseType = lens _iitLicenseType (\s a -> s {_iitLicenseType = a})

-- | The percentage of progress of the import image task.
iitProgress :: Lens' ImportImageTask (Maybe Text)
iitProgress = lens _iitProgress (\s a -> s {_iitProgress = a})

instance FromXML ImportImageTask where
  parseXML x =
    ImportImageTask'
      <$> (x .@? "hypervisor")
      <*> (x .@? "platform")
      <*> (x .@? "statusMessage")
      <*> (x .@? "status")
      <*> ( x .@? "snapshotDetailSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "encrypted")
      <*> (x .@? "importTaskId")
      <*> ( x .@? "licenseSpecifications" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "architecture")
      <*> (x .@? "imageId")
      <*> (x .@? "kmsKeyId")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "description")
      <*> (x .@? "licenseType")
      <*> (x .@? "progress")

instance Hashable ImportImageTask

instance NFData ImportImageTask
