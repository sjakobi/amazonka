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
-- Module      : Network.AWS.SageMaker.CreateImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom SageMaker image. A SageMaker image is a set of image versions. Each image version represents a container image stored in Amazon Container Registry (ECR). For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html Bring your own SageMaker image> .
module Network.AWS.SageMaker.CreateImage
  ( -- * Creating a Request
    createImage,
    CreateImage,

    -- * Request Lenses
    ciiTags,
    ciiDescription,
    ciiDisplayName,
    ciiImageName,
    ciiRoleARN,

    -- * Destructuring the Response
    createImageResponse,
    CreateImageResponse,

    -- * Response Lenses
    cirrsImageARN,
    cirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createImage' smart constructor.
data CreateImage = CreateImage'
  { _ciiTags ::
      !(Maybe [Tag]),
    _ciiDescription :: !(Maybe Text),
    _ciiDisplayName :: !(Maybe Text),
    _ciiImageName :: !Text,
    _ciiRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciiTags' - A list of tags to apply to the image.
--
-- * 'ciiDescription' - The description of the image.
--
-- * 'ciiDisplayName' - The display name of the image. If not provided, @ImageName@ is displayed.
--
-- * 'ciiImageName' - The name of the image. Must be unique to your account.
--
-- * 'ciiRoleARN' - The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to perform tasks on your behalf.
createImage ::
  -- | 'ciiImageName'
  Text ->
  -- | 'ciiRoleARN'
  Text ->
  CreateImage
createImage pImageName_ pRoleARN_ =
  CreateImage'
    { _ciiTags = Nothing,
      _ciiDescription = Nothing,
      _ciiDisplayName = Nothing,
      _ciiImageName = pImageName_,
      _ciiRoleARN = pRoleARN_
    }

-- | A list of tags to apply to the image.
ciiTags :: Lens' CreateImage [Tag]
ciiTags = lens _ciiTags (\s a -> s {_ciiTags = a}) . _Default . _Coerce

-- | The description of the image.
ciiDescription :: Lens' CreateImage (Maybe Text)
ciiDescription = lens _ciiDescription (\s a -> s {_ciiDescription = a})

-- | The display name of the image. If not provided, @ImageName@ is displayed.
ciiDisplayName :: Lens' CreateImage (Maybe Text)
ciiDisplayName = lens _ciiDisplayName (\s a -> s {_ciiDisplayName = a})

-- | The name of the image. Must be unique to your account.
ciiImageName :: Lens' CreateImage Text
ciiImageName = lens _ciiImageName (\s a -> s {_ciiImageName = a})

-- | The Amazon Resource Name (ARN) of an IAM role that enables Amazon SageMaker to perform tasks on your behalf.
ciiRoleARN :: Lens' CreateImage Text
ciiRoleARN = lens _ciiRoleARN (\s a -> s {_ciiRoleARN = a})

instance AWSRequest CreateImage where
  type Rs CreateImage = CreateImageResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateImageResponse'
            <$> (x .?> "ImageArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateImage

instance NFData CreateImage

instance ToHeaders CreateImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateImage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateImage where
  toJSON CreateImage' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _ciiTags,
            ("Description" .=) <$> _ciiDescription,
            ("DisplayName" .=) <$> _ciiDisplayName,
            Just ("ImageName" .= _ciiImageName),
            Just ("RoleArn" .= _ciiRoleARN)
          ]
      )

instance ToPath CreateImage where
  toPath = const "/"

instance ToQuery CreateImage where
  toQuery = const mempty

-- | /See:/ 'createImageResponse' smart constructor.
data CreateImageResponse = CreateImageResponse'
  { _cirrsImageARN ::
      !(Maybe Text),
    _cirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsImageARN' - The Amazon Resource Name (ARN) of the image.
--
-- * 'cirrsResponseStatus' - -- | The response status code.
createImageResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CreateImageResponse
createImageResponse pResponseStatus_ =
  CreateImageResponse'
    { _cirrsImageARN = Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the image.
cirrsImageARN :: Lens' CreateImageResponse (Maybe Text)
cirrsImageARN = lens _cirrsImageARN (\s a -> s {_cirrsImageARN = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CreateImageResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CreateImageResponse
