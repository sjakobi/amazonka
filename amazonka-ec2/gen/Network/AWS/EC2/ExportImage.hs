{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ExportImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports an Amazon Machine Image (AMI) to a VM file. For more information, see <https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html Exporting a VM Directory from an Amazon Machine Image (AMI)> in the /VM Import\/Export User Guide/ .
module Network.AWS.EC2.ExportImage
  ( -- * Creating a Request
    exportImage,
    ExportImage,

    -- * Request Lenses
    eiTagSpecifications,
    eiDryRun,
    eiRoleName,
    eiDescription,
    eiClientToken,
    eiDiskImageFormat,
    eiImageId,
    eiS3ExportLocation,

    -- * Destructuring the Response
    exportImageResponse,
    ExportImageResponse,

    -- * Response Lenses
    eirrsStatusMessage,
    eirrsStatus,
    eirrsDiskImageFormat,
    eirrsRoleName,
    eirrsImageId,
    eirrsTags,
    eirrsS3ExportLocation,
    eirrsDescription,
    eirrsExportImageTaskId,
    eirrsProgress,
    eirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'exportImage' smart constructor.
data ExportImage = ExportImage'
  { _eiTagSpecifications ::
      !(Maybe [TagSpecification]),
    _eiDryRun :: !(Maybe Bool),
    _eiRoleName :: !(Maybe Text),
    _eiDescription :: !(Maybe Text),
    _eiClientToken :: !(Maybe Text),
    _eiDiskImageFormat :: !DiskImageFormat,
    _eiImageId :: !Text,
    _eiS3ExportLocation ::
      !ExportTaskS3LocationRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiTagSpecifications' - The tags to apply to the export image task during creation.
--
-- * 'eiDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'eiRoleName' - The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket. If this parameter is not specified, the default role is named 'vmimport'.
--
-- * 'eiDescription' - A description of the image being exported. The maximum length is 255 characters.
--
-- * 'eiClientToken' - Token to enable idempotency for export image requests.
--
-- * 'eiDiskImageFormat' - The disk image format.
--
-- * 'eiImageId' - The ID of the image.
--
-- * 'eiS3ExportLocation' - Information about the destination Amazon S3 bucket. The bucket must exist and grant WRITE and READ_ACP permissions to the AWS account vm-import-export@amazon.com.
exportImage ::
  -- | 'eiDiskImageFormat'
  DiskImageFormat ->
  -- | 'eiImageId'
  Text ->
  -- | 'eiS3ExportLocation'
  ExportTaskS3LocationRequest ->
  ExportImage
exportImage
  pDiskImageFormat_
  pImageId_
  pS3ExportLocation_ =
    ExportImage'
      { _eiTagSpecifications = Nothing,
        _eiDryRun = Nothing,
        _eiRoleName = Nothing,
        _eiDescription = Nothing,
        _eiClientToken = Nothing,
        _eiDiskImageFormat = pDiskImageFormat_,
        _eiImageId = pImageId_,
        _eiS3ExportLocation = pS3ExportLocation_
      }

-- | The tags to apply to the export image task during creation.
eiTagSpecifications :: Lens' ExportImage [TagSpecification]
eiTagSpecifications = lens _eiTagSpecifications (\s a -> s {_eiTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
eiDryRun :: Lens' ExportImage (Maybe Bool)
eiDryRun = lens _eiDryRun (\s a -> s {_eiDryRun = a})

-- | The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket. If this parameter is not specified, the default role is named 'vmimport'.
eiRoleName :: Lens' ExportImage (Maybe Text)
eiRoleName = lens _eiRoleName (\s a -> s {_eiRoleName = a})

-- | A description of the image being exported. The maximum length is 255 characters.
eiDescription :: Lens' ExportImage (Maybe Text)
eiDescription = lens _eiDescription (\s a -> s {_eiDescription = a})

-- | Token to enable idempotency for export image requests.
eiClientToken :: Lens' ExportImage (Maybe Text)
eiClientToken = lens _eiClientToken (\s a -> s {_eiClientToken = a})

-- | The disk image format.
eiDiskImageFormat :: Lens' ExportImage DiskImageFormat
eiDiskImageFormat = lens _eiDiskImageFormat (\s a -> s {_eiDiskImageFormat = a})

-- | The ID of the image.
eiImageId :: Lens' ExportImage Text
eiImageId = lens _eiImageId (\s a -> s {_eiImageId = a})

-- | Information about the destination Amazon S3 bucket. The bucket must exist and grant WRITE and READ_ACP permissions to the AWS account vm-import-export@amazon.com.
eiS3ExportLocation :: Lens' ExportImage ExportTaskS3LocationRequest
eiS3ExportLocation = lens _eiS3ExportLocation (\s a -> s {_eiS3ExportLocation = a})

instance AWSRequest ExportImage where
  type Rs ExportImage = ExportImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ExportImageResponse'
            <$> (x .@? "statusMessage")
            <*> (x .@? "status")
            <*> (x .@? "diskImageFormat")
            <*> (x .@? "roleName")
            <*> (x .@? "imageId")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "s3ExportLocation")
            <*> (x .@? "description")
            <*> (x .@? "exportImageTaskId")
            <*> (x .@? "progress")
            <*> (pure (fromEnum s))
      )

instance Hashable ExportImage

instance NFData ExportImage

instance ToHeaders ExportImage where
  toHeaders = const mempty

instance ToPath ExportImage where
  toPath = const "/"

instance ToQuery ExportImage where
  toQuery ExportImage' {..} =
    mconcat
      [ "Action" =: ("ExportImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _eiTagSpecifications
          ),
        "DryRun" =: _eiDryRun,
        "RoleName" =: _eiRoleName,
        "Description" =: _eiDescription,
        "ClientToken" =: _eiClientToken,
        "DiskImageFormat" =: _eiDiskImageFormat,
        "ImageId" =: _eiImageId,
        "S3ExportLocation" =: _eiS3ExportLocation
      ]

-- | /See:/ 'exportImageResponse' smart constructor.
data ExportImageResponse = ExportImageResponse'
  { _eirrsStatusMessage ::
      !(Maybe Text),
    _eirrsStatus :: !(Maybe Text),
    _eirrsDiskImageFormat ::
      !(Maybe DiskImageFormat),
    _eirrsRoleName :: !(Maybe Text),
    _eirrsImageId :: !(Maybe Text),
    _eirrsTags :: !(Maybe [Tag]),
    _eirrsS3ExportLocation ::
      !(Maybe ExportTaskS3Location),
    _eirrsDescription ::
      !(Maybe Text),
    _eirrsExportImageTaskId ::
      !(Maybe Text),
    _eirrsProgress :: !(Maybe Text),
    _eirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eirrsStatusMessage' - The status message for the export image task.
--
-- * 'eirrsStatus' - The status of the export image task. The possible values are @active@ , @completed@ , @deleting@ , and @deleted@ .
--
-- * 'eirrsDiskImageFormat' - The disk image format for the exported image.
--
-- * 'eirrsRoleName' - The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket.
--
-- * 'eirrsImageId' - The ID of the image.
--
-- * 'eirrsTags' - Any tags assigned to the export image task.
--
-- * 'eirrsS3ExportLocation' - Information about the destination Amazon S3 bucket.
--
-- * 'eirrsDescription' - A description of the image being exported.
--
-- * 'eirrsExportImageTaskId' - The ID of the export image task.
--
-- * 'eirrsProgress' - The percent complete of the export image task.
--
-- * 'eirrsResponseStatus' - -- | The response status code.
exportImageResponse ::
  -- | 'eirrsResponseStatus'
  Int ->
  ExportImageResponse
exportImageResponse pResponseStatus_ =
  ExportImageResponse'
    { _eirrsStatusMessage = Nothing,
      _eirrsStatus = Nothing,
      _eirrsDiskImageFormat = Nothing,
      _eirrsRoleName = Nothing,
      _eirrsImageId = Nothing,
      _eirrsTags = Nothing,
      _eirrsS3ExportLocation = Nothing,
      _eirrsDescription = Nothing,
      _eirrsExportImageTaskId = Nothing,
      _eirrsProgress = Nothing,
      _eirrsResponseStatus = pResponseStatus_
    }

-- | The status message for the export image task.
eirrsStatusMessage :: Lens' ExportImageResponse (Maybe Text)
eirrsStatusMessage = lens _eirrsStatusMessage (\s a -> s {_eirrsStatusMessage = a})

-- | The status of the export image task. The possible values are @active@ , @completed@ , @deleting@ , and @deleted@ .
eirrsStatus :: Lens' ExportImageResponse (Maybe Text)
eirrsStatus = lens _eirrsStatus (\s a -> s {_eirrsStatus = a})

-- | The disk image format for the exported image.
eirrsDiskImageFormat :: Lens' ExportImageResponse (Maybe DiskImageFormat)
eirrsDiskImageFormat = lens _eirrsDiskImageFormat (\s a -> s {_eirrsDiskImageFormat = a})

-- | The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket.
eirrsRoleName :: Lens' ExportImageResponse (Maybe Text)
eirrsRoleName = lens _eirrsRoleName (\s a -> s {_eirrsRoleName = a})

-- | The ID of the image.
eirrsImageId :: Lens' ExportImageResponse (Maybe Text)
eirrsImageId = lens _eirrsImageId (\s a -> s {_eirrsImageId = a})

-- | Any tags assigned to the export image task.
eirrsTags :: Lens' ExportImageResponse [Tag]
eirrsTags = lens _eirrsTags (\s a -> s {_eirrsTags = a}) . _Default . _Coerce

-- | Information about the destination Amazon S3 bucket.
eirrsS3ExportLocation :: Lens' ExportImageResponse (Maybe ExportTaskS3Location)
eirrsS3ExportLocation = lens _eirrsS3ExportLocation (\s a -> s {_eirrsS3ExportLocation = a})

-- | A description of the image being exported.
eirrsDescription :: Lens' ExportImageResponse (Maybe Text)
eirrsDescription = lens _eirrsDescription (\s a -> s {_eirrsDescription = a})

-- | The ID of the export image task.
eirrsExportImageTaskId :: Lens' ExportImageResponse (Maybe Text)
eirrsExportImageTaskId = lens _eirrsExportImageTaskId (\s a -> s {_eirrsExportImageTaskId = a})

-- | The percent complete of the export image task.
eirrsProgress :: Lens' ExportImageResponse (Maybe Text)
eirrsProgress = lens _eirrsProgress (\s a -> s {_eirrsProgress = a})

-- | -- | The response status code.
eirrsResponseStatus :: Lens' ExportImageResponse Int
eirrsResponseStatus = lens _eirrsResponseStatus (\s a -> s {_eirrsResponseStatus = a})

instance NFData ExportImageResponse
