{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.Image
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.Image where

import Network.AWS.AppStream.Types.Application
import Network.AWS.AppStream.Types.ImagePermissions
import Network.AWS.AppStream.Types.ImageState
import Network.AWS.AppStream.Types.ImageStateChangeReason
import Network.AWS.AppStream.Types.PlatformType
import Network.AWS.AppStream.Types.VisibilityType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an image.
--
--
--
-- /See:/ 'image' smart constructor.
data Image = Image'
  { _iImagePermissions ::
      !(Maybe ImagePermissions),
    _iPlatform :: !(Maybe PlatformType),
    _iImageBuilderName :: !(Maybe Text),
    _iARN :: !(Maybe Text),
    _iStateChangeReason ::
      !(Maybe ImageStateChangeReason),
    _iCreatedTime :: !(Maybe POSIX),
    _iState :: !(Maybe ImageState),
    _iBaseImageARN :: !(Maybe Text),
    _iApplications :: !(Maybe [Application]),
    _iVisibility :: !(Maybe VisibilityType),
    _iAppstreamAgentVersion :: !(Maybe Text),
    _iDescription :: !(Maybe Text),
    _iImageBuilderSupported :: !(Maybe Bool),
    _iDisplayName :: !(Maybe Text),
    _iPublicBaseImageReleasedDate :: !(Maybe POSIX),
    _iName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iImagePermissions' - The permissions to provide to the destination AWS account for the specified image.
--
-- * 'iPlatform' - The operating system platform of the image.
--
-- * 'iImageBuilderName' - The name of the image builder that was used to create the private image. If the image is shared, this value is null.
--
-- * 'iARN' - The ARN of the image.
--
-- * 'iStateChangeReason' - The reason why the last state change occurred.
--
-- * 'iCreatedTime' - The time the image was created.
--
-- * 'iState' - The image starts in the @PENDING@ state. If image creation succeeds, the state is @AVAILABLE@ . If image creation fails, the state is @FAILED@ .
--
-- * 'iBaseImageARN' - The ARN of the image from which this image was created.
--
-- * 'iApplications' - The applications associated with the image.
--
-- * 'iVisibility' - Indicates whether the image is public or private.
--
-- * 'iAppstreamAgentVersion' - The version of the AppStream 2.0 agent to use for instances that are launched from this image.
--
-- * 'iDescription' - The description to display.
--
-- * 'iImageBuilderSupported' - Indicates whether an image builder can be launched from this image.
--
-- * 'iDisplayName' - The image name to display.
--
-- * 'iPublicBaseImageReleasedDate' - The release date of the public base image. For private images, this date is the release date of the base image from which the image was created.
--
-- * 'iName' - The name of the image.
image ::
  -- | 'iName'
  Text ->
  Image
image pName_ =
  Image'
    { _iImagePermissions = Nothing,
      _iPlatform = Nothing,
      _iImageBuilderName = Nothing,
      _iARN = Nothing,
      _iStateChangeReason = Nothing,
      _iCreatedTime = Nothing,
      _iState = Nothing,
      _iBaseImageARN = Nothing,
      _iApplications = Nothing,
      _iVisibility = Nothing,
      _iAppstreamAgentVersion = Nothing,
      _iDescription = Nothing,
      _iImageBuilderSupported = Nothing,
      _iDisplayName = Nothing,
      _iPublicBaseImageReleasedDate = Nothing,
      _iName = pName_
    }

-- | The permissions to provide to the destination AWS account for the specified image.
iImagePermissions :: Lens' Image (Maybe ImagePermissions)
iImagePermissions = lens _iImagePermissions (\s a -> s {_iImagePermissions = a})

-- | The operating system platform of the image.
iPlatform :: Lens' Image (Maybe PlatformType)
iPlatform = lens _iPlatform (\s a -> s {_iPlatform = a})

-- | The name of the image builder that was used to create the private image. If the image is shared, this value is null.
iImageBuilderName :: Lens' Image (Maybe Text)
iImageBuilderName = lens _iImageBuilderName (\s a -> s {_iImageBuilderName = a})

-- | The ARN of the image.
iARN :: Lens' Image (Maybe Text)
iARN = lens _iARN (\s a -> s {_iARN = a})

-- | The reason why the last state change occurred.
iStateChangeReason :: Lens' Image (Maybe ImageStateChangeReason)
iStateChangeReason = lens _iStateChangeReason (\s a -> s {_iStateChangeReason = a})

-- | The time the image was created.
iCreatedTime :: Lens' Image (Maybe UTCTime)
iCreatedTime = lens _iCreatedTime (\s a -> s {_iCreatedTime = a}) . mapping _Time

-- | The image starts in the @PENDING@ state. If image creation succeeds, the state is @AVAILABLE@ . If image creation fails, the state is @FAILED@ .
iState :: Lens' Image (Maybe ImageState)
iState = lens _iState (\s a -> s {_iState = a})

-- | The ARN of the image from which this image was created.
iBaseImageARN :: Lens' Image (Maybe Text)
iBaseImageARN = lens _iBaseImageARN (\s a -> s {_iBaseImageARN = a})

-- | The applications associated with the image.
iApplications :: Lens' Image [Application]
iApplications = lens _iApplications (\s a -> s {_iApplications = a}) . _Default . _Coerce

-- | Indicates whether the image is public or private.
iVisibility :: Lens' Image (Maybe VisibilityType)
iVisibility = lens _iVisibility (\s a -> s {_iVisibility = a})

-- | The version of the AppStream 2.0 agent to use for instances that are launched from this image.
iAppstreamAgentVersion :: Lens' Image (Maybe Text)
iAppstreamAgentVersion = lens _iAppstreamAgentVersion (\s a -> s {_iAppstreamAgentVersion = a})

-- | The description to display.
iDescription :: Lens' Image (Maybe Text)
iDescription = lens _iDescription (\s a -> s {_iDescription = a})

-- | Indicates whether an image builder can be launched from this image.
iImageBuilderSupported :: Lens' Image (Maybe Bool)
iImageBuilderSupported = lens _iImageBuilderSupported (\s a -> s {_iImageBuilderSupported = a})

-- | The image name to display.
iDisplayName :: Lens' Image (Maybe Text)
iDisplayName = lens _iDisplayName (\s a -> s {_iDisplayName = a})

-- | The release date of the public base image. For private images, this date is the release date of the base image from which the image was created.
iPublicBaseImageReleasedDate :: Lens' Image (Maybe UTCTime)
iPublicBaseImageReleasedDate = lens _iPublicBaseImageReleasedDate (\s a -> s {_iPublicBaseImageReleasedDate = a}) . mapping _Time

-- | The name of the image.
iName :: Lens' Image Text
iName = lens _iName (\s a -> s {_iName = a})

instance FromJSON Image where
  parseJSON =
    withObject
      "Image"
      ( \x ->
          Image'
            <$> (x .:? "ImagePermissions")
            <*> (x .:? "Platform")
            <*> (x .:? "ImageBuilderName")
            <*> (x .:? "Arn")
            <*> (x .:? "StateChangeReason")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "State")
            <*> (x .:? "BaseImageArn")
            <*> (x .:? "Applications" .!= mempty)
            <*> (x .:? "Visibility")
            <*> (x .:? "AppstreamAgentVersion")
            <*> (x .:? "Description")
            <*> (x .:? "ImageBuilderSupported")
            <*> (x .:? "DisplayName")
            <*> (x .:? "PublicBaseImageReleasedDate")
            <*> (x .: "Name")
      )

instance Hashable Image

instance NFData Image
