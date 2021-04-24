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
-- Module      : Network.AWS.AppStream.DeleteImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.
module Network.AWS.AppStream.DeleteImage
  ( -- * Creating a Request
    deleteImage,
    DeleteImage,

    -- * Request Lenses
    diName,

    -- * Destructuring the Response
    deleteImageResponse,
    DeleteImageResponse,

    -- * Response Lenses
    dirrsImage,
    dirrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteImage' smart constructor.
newtype DeleteImage = DeleteImage' {_diName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diName' - The name of the image.
deleteImage ::
  -- | 'diName'
  Text ->
  DeleteImage
deleteImage pName_ = DeleteImage' {_diName = pName_}

-- | The name of the image.
diName :: Lens' DeleteImage Text
diName = lens _diName (\s a -> s {_diName = a})

instance AWSRequest DeleteImage where
  type Rs DeleteImage = DeleteImageResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          DeleteImageResponse'
            <$> (x .?> "Image") <*> (pure (fromEnum s))
      )

instance Hashable DeleteImage

instance NFData DeleteImage

instance ToHeaders DeleteImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.DeleteImage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteImage where
  toJSON DeleteImage' {..} =
    object (catMaybes [Just ("Name" .= _diName)])

instance ToPath DeleteImage where
  toPath = const "/"

instance ToQuery DeleteImage where
  toQuery = const mempty

-- | /See:/ 'deleteImageResponse' smart constructor.
data DeleteImageResponse = DeleteImageResponse'
  { _dirrsImage ::
      !(Maybe Image),
    _dirrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsImage' - Information about the image.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
deleteImageResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DeleteImageResponse
deleteImageResponse pResponseStatus_ =
  DeleteImageResponse'
    { _dirrsImage = Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | Information about the image.
dirrsImage :: Lens' DeleteImageResponse (Maybe Image)
dirrsImage = lens _dirrsImage (\s a -> s {_dirrsImage = a})

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DeleteImageResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DeleteImageResponse
