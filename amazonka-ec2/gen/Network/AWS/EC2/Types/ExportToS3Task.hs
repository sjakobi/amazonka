{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ExportToS3Task
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ExportToS3Task where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ContainerFormat
import Network.AWS.EC2.Types.DiskImageFormat
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the format and location for the export task.
--
--
--
-- /See:/ 'exportToS3Task' smart constructor.
data ExportToS3Task = ExportToS3Task'
  { _etstContainerFormat ::
      !(Maybe ContainerFormat),
    _etstDiskImageFormat ::
      !(Maybe DiskImageFormat),
    _etstS3Bucket :: !(Maybe Text),
    _etstS3Key :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportToS3Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etstContainerFormat' - The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
--
-- * 'etstDiskImageFormat' - The format for the exported image.
--
-- * 'etstS3Bucket' - The Amazon S3 bucket for the destination image. The destination bucket must exist and grant WRITE and READ_ACP permissions to the AWS account @vm-import-export@amazon.com@ .
--
-- * 'etstS3Key' - The encryption key for your S3 bucket.
exportToS3Task ::
  ExportToS3Task
exportToS3Task =
  ExportToS3Task'
    { _etstContainerFormat = Nothing,
      _etstDiskImageFormat = Nothing,
      _etstS3Bucket = Nothing,
      _etstS3Key = Nothing
    }

-- | The container format used to combine disk images with metadata (such as OVF). If absent, only the disk image is exported.
etstContainerFormat :: Lens' ExportToS3Task (Maybe ContainerFormat)
etstContainerFormat = lens _etstContainerFormat (\s a -> s {_etstContainerFormat = a})

-- | The format for the exported image.
etstDiskImageFormat :: Lens' ExportToS3Task (Maybe DiskImageFormat)
etstDiskImageFormat = lens _etstDiskImageFormat (\s a -> s {_etstDiskImageFormat = a})

-- | The Amazon S3 bucket for the destination image. The destination bucket must exist and grant WRITE and READ_ACP permissions to the AWS account @vm-import-export@amazon.com@ .
etstS3Bucket :: Lens' ExportToS3Task (Maybe Text)
etstS3Bucket = lens _etstS3Bucket (\s a -> s {_etstS3Bucket = a})

-- | The encryption key for your S3 bucket.
etstS3Key :: Lens' ExportToS3Task (Maybe Text)
etstS3Key = lens _etstS3Key (\s a -> s {_etstS3Key = a})

instance FromXML ExportToS3Task where
  parseXML x =
    ExportToS3Task'
      <$> (x .@? "containerFormat")
      <*> (x .@? "diskImageFormat")
      <*> (x .@? "s3Bucket")
      <*> (x .@? "s3Key")

instance Hashable ExportToS3Task

instance NFData ExportToS3Task
