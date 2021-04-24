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
-- Module      : Network.AWS.SageMaker.DescribeImageVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a version of a SageMaker image.
module Network.AWS.SageMaker.DescribeImageVersion
  ( -- * Creating a Request
    describeImageVersion,
    DescribeImageVersion,

    -- * Request Lenses
    dVersion,
    dImageName,

    -- * Destructuring the Response
    describeImageVersionResponse,
    DescribeImageVersionResponse,

    -- * Response Lenses
    divrirsCreationTime,
    divrirsImageVersionStatus,
    divrirsContainerImage,
    divrirsImageVersionARN,
    divrirsBaseImage,
    divrirsVersion,
    divrirsFailureReason,
    divrirsLastModifiedTime,
    divrirsImageARN,
    divrirsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeImageVersion' smart constructor.
data DescribeImageVersion = DescribeImageVersion'
  { _dVersion ::
      !(Maybe Nat),
    _dImageName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeImageVersion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dVersion' - The version of the image. If not specified, the latest version is described.
--
-- * 'dImageName' - The name of the image.
describeImageVersion ::
  -- | 'dImageName'
  Text ->
  DescribeImageVersion
describeImageVersion pImageName_ =
  DescribeImageVersion'
    { _dVersion = Nothing,
      _dImageName = pImageName_
    }

-- | The version of the image. If not specified, the latest version is described.
dVersion :: Lens' DescribeImageVersion (Maybe Natural)
dVersion = lens _dVersion (\s a -> s {_dVersion = a}) . mapping _Nat

-- | The name of the image.
dImageName :: Lens' DescribeImageVersion Text
dImageName = lens _dImageName (\s a -> s {_dImageName = a})

instance AWSRequest DescribeImageVersion where
  type
    Rs DescribeImageVersion =
      DescribeImageVersionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeImageVersionResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ImageVersionStatus")
            <*> (x .?> "ContainerImage")
            <*> (x .?> "ImageVersionArn")
            <*> (x .?> "BaseImage")
            <*> (x .?> "Version")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "ImageArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImageVersion

instance NFData DescribeImageVersion

instance ToHeaders DescribeImageVersion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeImageVersion" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImageVersion where
  toJSON DescribeImageVersion' {..} =
    object
      ( catMaybes
          [ ("Version" .=) <$> _dVersion,
            Just ("ImageName" .= _dImageName)
          ]
      )

instance ToPath DescribeImageVersion where
  toPath = const "/"

instance ToQuery DescribeImageVersion where
  toQuery = const mempty

-- | /See:/ 'describeImageVersionResponse' smart constructor.
data DescribeImageVersionResponse = DescribeImageVersionResponse'
  { _divrirsCreationTime ::
      !( Maybe
           POSIX
       ),
    _divrirsImageVersionStatus ::
      !( Maybe
           ImageVersionStatus
       ),
    _divrirsContainerImage ::
      !(Maybe Text),
    _divrirsImageVersionARN ::
      !(Maybe Text),
    _divrirsBaseImage ::
      !(Maybe Text),
    _divrirsVersion ::
      !(Maybe Nat),
    _divrirsFailureReason ::
      !(Maybe Text),
    _divrirsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _divrirsImageARN ::
      !(Maybe Text),
    _divrirsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeImageVersionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'divrirsCreationTime' - When the version was created.
--
-- * 'divrirsImageVersionStatus' - The status of the version.
--
-- * 'divrirsContainerImage' - The registry path of the container image that contains this image version.
--
-- * 'divrirsImageVersionARN' - The ARN of the version.
--
-- * 'divrirsBaseImage' - The registry path of the container image on which this image version is based.
--
-- * 'divrirsVersion' - The version number.
--
-- * 'divrirsFailureReason' - When a create or delete operation fails, the reason for the failure.
--
-- * 'divrirsLastModifiedTime' - When the version was last modified.
--
-- * 'divrirsImageARN' - The Amazon Resource Name (ARN) of the image the version is based on.
--
-- * 'divrirsResponseStatus' - -- | The response status code.
describeImageVersionResponse ::
  -- | 'divrirsResponseStatus'
  Int ->
  DescribeImageVersionResponse
describeImageVersionResponse pResponseStatus_ =
  DescribeImageVersionResponse'
    { _divrirsCreationTime =
        Nothing,
      _divrirsImageVersionStatus = Nothing,
      _divrirsContainerImage = Nothing,
      _divrirsImageVersionARN = Nothing,
      _divrirsBaseImage = Nothing,
      _divrirsVersion = Nothing,
      _divrirsFailureReason = Nothing,
      _divrirsLastModifiedTime = Nothing,
      _divrirsImageARN = Nothing,
      _divrirsResponseStatus = pResponseStatus_
    }

-- | When the version was created.
divrirsCreationTime :: Lens' DescribeImageVersionResponse (Maybe UTCTime)
divrirsCreationTime = lens _divrirsCreationTime (\s a -> s {_divrirsCreationTime = a}) . mapping _Time

-- | The status of the version.
divrirsImageVersionStatus :: Lens' DescribeImageVersionResponse (Maybe ImageVersionStatus)
divrirsImageVersionStatus = lens _divrirsImageVersionStatus (\s a -> s {_divrirsImageVersionStatus = a})

-- | The registry path of the container image that contains this image version.
divrirsContainerImage :: Lens' DescribeImageVersionResponse (Maybe Text)
divrirsContainerImage = lens _divrirsContainerImage (\s a -> s {_divrirsContainerImage = a})

-- | The ARN of the version.
divrirsImageVersionARN :: Lens' DescribeImageVersionResponse (Maybe Text)
divrirsImageVersionARN = lens _divrirsImageVersionARN (\s a -> s {_divrirsImageVersionARN = a})

-- | The registry path of the container image on which this image version is based.
divrirsBaseImage :: Lens' DescribeImageVersionResponse (Maybe Text)
divrirsBaseImage = lens _divrirsBaseImage (\s a -> s {_divrirsBaseImage = a})

-- | The version number.
divrirsVersion :: Lens' DescribeImageVersionResponse (Maybe Natural)
divrirsVersion = lens _divrirsVersion (\s a -> s {_divrirsVersion = a}) . mapping _Nat

-- | When a create or delete operation fails, the reason for the failure.
divrirsFailureReason :: Lens' DescribeImageVersionResponse (Maybe Text)
divrirsFailureReason = lens _divrirsFailureReason (\s a -> s {_divrirsFailureReason = a})

-- | When the version was last modified.
divrirsLastModifiedTime :: Lens' DescribeImageVersionResponse (Maybe UTCTime)
divrirsLastModifiedTime = lens _divrirsLastModifiedTime (\s a -> s {_divrirsLastModifiedTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the image the version is based on.
divrirsImageARN :: Lens' DescribeImageVersionResponse (Maybe Text)
divrirsImageARN = lens _divrirsImageARN (\s a -> s {_divrirsImageARN = a})

-- | -- | The response status code.
divrirsResponseStatus :: Lens' DescribeImageVersionResponse Int
divrirsResponseStatus = lens _divrirsResponseStatus (\s a -> s {_divrirsResponseStatus = a})

instance NFData DescribeImageVersionResponse
