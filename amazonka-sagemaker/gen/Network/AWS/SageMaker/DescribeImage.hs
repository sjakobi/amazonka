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
-- Module      : Network.AWS.SageMaker.DescribeImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a SageMaker image.
module Network.AWS.SageMaker.DescribeImage
  ( -- * Creating a Request
    describeImage,
    DescribeImage,

    -- * Request Lenses
    desImageName,

    -- * Destructuring the Response
    describeImageResponse,
    DescribeImageResponse,

    -- * Response Lenses
    dirirsCreationTime,
    dirirsRoleARN,
    dirirsImageName,
    dirirsFailureReason,
    dirirsLastModifiedTime,
    dirirsDescription,
    dirirsImageStatus,
    dirirsDisplayName,
    dirirsImageARN,
    dirirsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeImage' smart constructor.
newtype DescribeImage = DescribeImage'
  { _desImageName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desImageName' - The name of the image to describe.
describeImage ::
  -- | 'desImageName'
  Text ->
  DescribeImage
describeImage pImageName_ =
  DescribeImage' {_desImageName = pImageName_}

-- | The name of the image to describe.
desImageName :: Lens' DescribeImage Text
desImageName = lens _desImageName (\s a -> s {_desImageName = a})

instance AWSRequest DescribeImage where
  type Rs DescribeImage = DescribeImageResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeImageResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "RoleArn")
            <*> (x .?> "ImageName")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "Description")
            <*> (x .?> "ImageStatus")
            <*> (x .?> "DisplayName")
            <*> (x .?> "ImageArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeImage

instance NFData DescribeImage

instance ToHeaders DescribeImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeImage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeImage where
  toJSON DescribeImage' {..} =
    object
      (catMaybes [Just ("ImageName" .= _desImageName)])

instance ToPath DescribeImage where
  toPath = const "/"

instance ToQuery DescribeImage where
  toQuery = const mempty

-- | /See:/ 'describeImageResponse' smart constructor.
data DescribeImageResponse = DescribeImageResponse'
  { _dirirsCreationTime ::
      !(Maybe POSIX),
    _dirirsRoleARN ::
      !(Maybe Text),
    _dirirsImageName ::
      !(Maybe Text),
    _dirirsFailureReason ::
      !(Maybe Text),
    _dirirsLastModifiedTime ::
      !(Maybe POSIX),
    _dirirsDescription ::
      !(Maybe Text),
    _dirirsImageStatus ::
      !(Maybe ImageStatus),
    _dirirsDisplayName ::
      !(Maybe Text),
    _dirirsImageARN ::
      !(Maybe Text),
    _dirirsResponseStatus ::
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

-- | Creates a value of 'DescribeImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirirsCreationTime' - When the image was created.
--
-- * 'dirirsRoleARN' - The Amazon Resource Name (ARN) of the IAM role that enables Amazon SageMaker to perform tasks on your behalf.
--
-- * 'dirirsImageName' - The name of the image.
--
-- * 'dirirsFailureReason' - When a create, update, or delete operation fails, the reason for the failure.
--
-- * 'dirirsLastModifiedTime' - When the image was last modified.
--
-- * 'dirirsDescription' - The description of the image.
--
-- * 'dirirsImageStatus' - The status of the image.
--
-- * 'dirirsDisplayName' - The name of the image as displayed.
--
-- * 'dirirsImageARN' - The Amazon Resource Name (ARN) of the image.
--
-- * 'dirirsResponseStatus' - -- | The response status code.
describeImageResponse ::
  -- | 'dirirsResponseStatus'
  Int ->
  DescribeImageResponse
describeImageResponse pResponseStatus_ =
  DescribeImageResponse'
    { _dirirsCreationTime =
        Nothing,
      _dirirsRoleARN = Nothing,
      _dirirsImageName = Nothing,
      _dirirsFailureReason = Nothing,
      _dirirsLastModifiedTime = Nothing,
      _dirirsDescription = Nothing,
      _dirirsImageStatus = Nothing,
      _dirirsDisplayName = Nothing,
      _dirirsImageARN = Nothing,
      _dirirsResponseStatus = pResponseStatus_
    }

-- | When the image was created.
dirirsCreationTime :: Lens' DescribeImageResponse (Maybe UTCTime)
dirirsCreationTime = lens _dirirsCreationTime (\s a -> s {_dirirsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the IAM role that enables Amazon SageMaker to perform tasks on your behalf.
dirirsRoleARN :: Lens' DescribeImageResponse (Maybe Text)
dirirsRoleARN = lens _dirirsRoleARN (\s a -> s {_dirirsRoleARN = a})

-- | The name of the image.
dirirsImageName :: Lens' DescribeImageResponse (Maybe Text)
dirirsImageName = lens _dirirsImageName (\s a -> s {_dirirsImageName = a})

-- | When a create, update, or delete operation fails, the reason for the failure.
dirirsFailureReason :: Lens' DescribeImageResponse (Maybe Text)
dirirsFailureReason = lens _dirirsFailureReason (\s a -> s {_dirirsFailureReason = a})

-- | When the image was last modified.
dirirsLastModifiedTime :: Lens' DescribeImageResponse (Maybe UTCTime)
dirirsLastModifiedTime = lens _dirirsLastModifiedTime (\s a -> s {_dirirsLastModifiedTime = a}) . mapping _Time

-- | The description of the image.
dirirsDescription :: Lens' DescribeImageResponse (Maybe Text)
dirirsDescription = lens _dirirsDescription (\s a -> s {_dirirsDescription = a})

-- | The status of the image.
dirirsImageStatus :: Lens' DescribeImageResponse (Maybe ImageStatus)
dirirsImageStatus = lens _dirirsImageStatus (\s a -> s {_dirirsImageStatus = a})

-- | The name of the image as displayed.
dirirsDisplayName :: Lens' DescribeImageResponse (Maybe Text)
dirirsDisplayName = lens _dirirsDisplayName (\s a -> s {_dirirsDisplayName = a})

-- | The Amazon Resource Name (ARN) of the image.
dirirsImageARN :: Lens' DescribeImageResponse (Maybe Text)
dirirsImageARN = lens _dirirsImageARN (\s a -> s {_dirirsImageARN = a})

-- | -- | The response status code.
dirirsResponseStatus :: Lens' DescribeImageResponse Int
dirirsResponseStatus = lens _dirirsResponseStatus (\s a -> s {_dirirsResponseStatus = a})

instance NFData DescribeImageResponse
