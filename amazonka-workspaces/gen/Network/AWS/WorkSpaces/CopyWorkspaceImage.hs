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
-- Module      : Network.AWS.WorkSpaces.CopyWorkspaceImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified image from the specified Region to the current Region. For more information about copying images, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html Copy a Custom WorkSpaces Image> .
--
--
-- /Important:/ Before copying a shared image, be sure to verify that it has been shared from the correct AWS account. To determine if an image has been shared and to see the AWS account ID that owns an image, use the <https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html DescribeWorkSpaceImages> and <https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html DescribeWorkspaceImagePermissions> API operations.
module Network.AWS.WorkSpaces.CopyWorkspaceImage
  ( -- * Creating a Request
    copyWorkspaceImage,
    CopyWorkspaceImage,

    -- * Request Lenses
    cwiTags,
    cwiDescription,
    cwiName,
    cwiSourceImageId,
    cwiSourceRegion,

    -- * Destructuring the Response
    copyWorkspaceImageResponse,
    CopyWorkspaceImageResponse,

    -- * Response Lenses
    cwirrsImageId,
    cwirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'copyWorkspaceImage' smart constructor.
data CopyWorkspaceImage = CopyWorkspaceImage'
  { _cwiTags ::
      !(Maybe [Tag]),
    _cwiDescription :: !(Maybe Text),
    _cwiName :: !Text,
    _cwiSourceImageId :: !Text,
    _cwiSourceRegion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyWorkspaceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwiTags' - The tags for the image.
--
-- * 'cwiDescription' - A description of the image.
--
-- * 'cwiName' - The name of the image.
--
-- * 'cwiSourceImageId' - The identifier of the source image.
--
-- * 'cwiSourceRegion' - The identifier of the source Region.
copyWorkspaceImage ::
  -- | 'cwiName'
  Text ->
  -- | 'cwiSourceImageId'
  Text ->
  -- | 'cwiSourceRegion'
  Text ->
  CopyWorkspaceImage
copyWorkspaceImage
  pName_
  pSourceImageId_
  pSourceRegion_ =
    CopyWorkspaceImage'
      { _cwiTags = Nothing,
        _cwiDescription = Nothing,
        _cwiName = pName_,
        _cwiSourceImageId = pSourceImageId_,
        _cwiSourceRegion = pSourceRegion_
      }

-- | The tags for the image.
cwiTags :: Lens' CopyWorkspaceImage [Tag]
cwiTags = lens _cwiTags (\s a -> s {_cwiTags = a}) . _Default . _Coerce

-- | A description of the image.
cwiDescription :: Lens' CopyWorkspaceImage (Maybe Text)
cwiDescription = lens _cwiDescription (\s a -> s {_cwiDescription = a})

-- | The name of the image.
cwiName :: Lens' CopyWorkspaceImage Text
cwiName = lens _cwiName (\s a -> s {_cwiName = a})

-- | The identifier of the source image.
cwiSourceImageId :: Lens' CopyWorkspaceImage Text
cwiSourceImageId = lens _cwiSourceImageId (\s a -> s {_cwiSourceImageId = a})

-- | The identifier of the source Region.
cwiSourceRegion :: Lens' CopyWorkspaceImage Text
cwiSourceRegion = lens _cwiSourceRegion (\s a -> s {_cwiSourceRegion = a})

instance AWSRequest CopyWorkspaceImage where
  type
    Rs CopyWorkspaceImage =
      CopyWorkspaceImageResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          CopyWorkspaceImageResponse'
            <$> (x .?> "ImageId") <*> (pure (fromEnum s))
      )

instance Hashable CopyWorkspaceImage

instance NFData CopyWorkspaceImage

instance ToHeaders CopyWorkspaceImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.CopyWorkspaceImage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CopyWorkspaceImage where
  toJSON CopyWorkspaceImage' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cwiTags,
            ("Description" .=) <$> _cwiDescription,
            Just ("Name" .= _cwiName),
            Just ("SourceImageId" .= _cwiSourceImageId),
            Just ("SourceRegion" .= _cwiSourceRegion)
          ]
      )

instance ToPath CopyWorkspaceImage where
  toPath = const "/"

instance ToQuery CopyWorkspaceImage where
  toQuery = const mempty

-- | /See:/ 'copyWorkspaceImageResponse' smart constructor.
data CopyWorkspaceImageResponse = CopyWorkspaceImageResponse'
  { _cwirrsImageId ::
      !(Maybe Text),
    _cwirrsResponseStatus ::
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

-- | Creates a value of 'CopyWorkspaceImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwirrsImageId' - The identifier of the image.
--
-- * 'cwirrsResponseStatus' - -- | The response status code.
copyWorkspaceImageResponse ::
  -- | 'cwirrsResponseStatus'
  Int ->
  CopyWorkspaceImageResponse
copyWorkspaceImageResponse pResponseStatus_ =
  CopyWorkspaceImageResponse'
    { _cwirrsImageId =
        Nothing,
      _cwirrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the image.
cwirrsImageId :: Lens' CopyWorkspaceImageResponse (Maybe Text)
cwirrsImageId = lens _cwirrsImageId (\s a -> s {_cwirrsImageId = a})

-- | -- | The response status code.
cwirrsResponseStatus :: Lens' CopyWorkspaceImageResponse Int
cwirrsResponseStatus = lens _cwirrsResponseStatus (\s a -> s {_cwirrsResponseStatus = a})

instance NFData CopyWorkspaceImageResponse
