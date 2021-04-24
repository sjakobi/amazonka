{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImage where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkSpaces.Types.OperatingSystem
import Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy
import Network.AWS.WorkSpaces.Types.WorkspaceImageState

-- | Describes a WorkSpace image.
--
--
--
-- /See:/ 'workspaceImage' smart constructor.
data WorkspaceImage = WorkspaceImage'
  { _wiImageId ::
      !(Maybe Text),
    _wiState :: !(Maybe WorkspaceImageState),
    _wiName :: !(Maybe Text),
    _wiDescription :: !(Maybe Text),
    _wiErrorMessage :: !(Maybe Text),
    _wiRequiredTenancy ::
      !(Maybe WorkspaceImageRequiredTenancy),
    _wiOperatingSystem ::
      !(Maybe OperatingSystem),
    _wiCreated :: !(Maybe POSIX),
    _wiOwnerAccountId :: !(Maybe Text),
    _wiErrorCode :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'WorkspaceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiImageId' - The identifier of the image.
--
-- * 'wiState' - The status of the image.
--
-- * 'wiName' - The name of the image.
--
-- * 'wiDescription' - The description of the image.
--
-- * 'wiErrorMessage' - The text of the error message that is returned for the image.
--
-- * 'wiRequiredTenancy' - Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to @DEDICATED@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html Bring Your Own Windows Desktop Images> .
--
-- * 'wiOperatingSystem' - The operating system that the image is running.
--
-- * 'wiCreated' - The date when the image was created. If the image has been shared, the AWS account that the image has been shared with sees the original creation date of the image.
--
-- * 'wiOwnerAccountId' - The identifier of the AWS account that owns the image.
--
-- * 'wiErrorCode' - The error code that is returned for the image.
workspaceImage ::
  WorkspaceImage
workspaceImage =
  WorkspaceImage'
    { _wiImageId = Nothing,
      _wiState = Nothing,
      _wiName = Nothing,
      _wiDescription = Nothing,
      _wiErrorMessage = Nothing,
      _wiRequiredTenancy = Nothing,
      _wiOperatingSystem = Nothing,
      _wiCreated = Nothing,
      _wiOwnerAccountId = Nothing,
      _wiErrorCode = Nothing
    }

-- | The identifier of the image.
wiImageId :: Lens' WorkspaceImage (Maybe Text)
wiImageId = lens _wiImageId (\s a -> s {_wiImageId = a})

-- | The status of the image.
wiState :: Lens' WorkspaceImage (Maybe WorkspaceImageState)
wiState = lens _wiState (\s a -> s {_wiState = a})

-- | The name of the image.
wiName :: Lens' WorkspaceImage (Maybe Text)
wiName = lens _wiName (\s a -> s {_wiName = a})

-- | The description of the image.
wiDescription :: Lens' WorkspaceImage (Maybe Text)
wiDescription = lens _wiDescription (\s a -> s {_wiDescription = a})

-- | The text of the error message that is returned for the image.
wiErrorMessage :: Lens' WorkspaceImage (Maybe Text)
wiErrorMessage = lens _wiErrorMessage (\s a -> s {_wiErrorMessage = a})

-- | Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to @DEDICATED@ . For more information, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html Bring Your Own Windows Desktop Images> .
wiRequiredTenancy :: Lens' WorkspaceImage (Maybe WorkspaceImageRequiredTenancy)
wiRequiredTenancy = lens _wiRequiredTenancy (\s a -> s {_wiRequiredTenancy = a})

-- | The operating system that the image is running.
wiOperatingSystem :: Lens' WorkspaceImage (Maybe OperatingSystem)
wiOperatingSystem = lens _wiOperatingSystem (\s a -> s {_wiOperatingSystem = a})

-- | The date when the image was created. If the image has been shared, the AWS account that the image has been shared with sees the original creation date of the image.
wiCreated :: Lens' WorkspaceImage (Maybe UTCTime)
wiCreated = lens _wiCreated (\s a -> s {_wiCreated = a}) . mapping _Time

-- | The identifier of the AWS account that owns the image.
wiOwnerAccountId :: Lens' WorkspaceImage (Maybe Text)
wiOwnerAccountId = lens _wiOwnerAccountId (\s a -> s {_wiOwnerAccountId = a})

-- | The error code that is returned for the image.
wiErrorCode :: Lens' WorkspaceImage (Maybe Text)
wiErrorCode = lens _wiErrorCode (\s a -> s {_wiErrorCode = a})

instance FromJSON WorkspaceImage where
  parseJSON =
    withObject
      "WorkspaceImage"
      ( \x ->
          WorkspaceImage'
            <$> (x .:? "ImageId")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "Description")
            <*> (x .:? "ErrorMessage")
            <*> (x .:? "RequiredTenancy")
            <*> (x .:? "OperatingSystem")
            <*> (x .:? "Created")
            <*> (x .:? "OwnerAccountId")
            <*> (x .:? "ErrorCode")
      )

instance Hashable WorkspaceImage

instance NFData WorkspaceImage
