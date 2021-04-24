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
-- Module      : Network.AWS.SageMaker.DeleteImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a SageMaker image and all versions of the image. The container images aren't deleted.
module Network.AWS.SageMaker.DeleteImage
  ( -- * Creating a Request
    deleteImage,
    DeleteImage,

    -- * Request Lenses
    diImageName,

    -- * Destructuring the Response
    deleteImageResponse,
    DeleteImageResponse,

    -- * Response Lenses
    dirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteImage' smart constructor.
newtype DeleteImage = DeleteImage'
  { _diImageName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diImageName' - The name of the image to delete.
deleteImage ::
  -- | 'diImageName'
  Text ->
  DeleteImage
deleteImage pImageName_ =
  DeleteImage' {_diImageName = pImageName_}

-- | The name of the image to delete.
diImageName :: Lens' DeleteImage Text
diImageName = lens _diImageName (\s a -> s {_diImageName = a})

instance AWSRequest DeleteImage where
  type Rs DeleteImage = DeleteImageResponse
  request = postJSON sageMaker
  response =
    receiveEmpty
      ( \s h x ->
          DeleteImageResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteImage

instance NFData DeleteImage

instance ToHeaders DeleteImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteImage" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteImage where
  toJSON DeleteImage' {..} =
    object
      (catMaybes [Just ("ImageName" .= _diImageName)])

instance ToPath DeleteImage where
  toPath = const "/"

instance ToQuery DeleteImage where
  toQuery = const mempty

-- | /See:/ 'deleteImageResponse' smart constructor.
newtype DeleteImageResponse = DeleteImageResponse'
  { _dirrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsResponseStatus' - -- | The response status code.
deleteImageResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DeleteImageResponse
deleteImageResponse pResponseStatus_ =
  DeleteImageResponse'
    { _dirrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DeleteImageResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DeleteImageResponse
