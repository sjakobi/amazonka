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
-- Module      : Network.AWS.WorkSpaces.ImportWorkspaceImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the specified Windows 10 Bring Your Own License (BYOL) image into Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image that is in your AWS account, and you must own the image. For more information about creating BYOL images, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html Bring Your Own Windows Desktop Licenses> .
module Network.AWS.WorkSpaces.ImportWorkspaceImage
  ( -- * Creating a Request
    importWorkspaceImage,
    ImportWorkspaceImage,

    -- * Request Lenses
    iwiTags,
    iwiApplications,
    iwiEC2ImageId,
    iwiIngestionProcess,
    iwiImageName,
    iwiImageDescription,

    -- * Destructuring the Response
    importWorkspaceImageResponse,
    ImportWorkspaceImageResponse,

    -- * Response Lenses
    iwirrsImageId,
    iwirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'importWorkspaceImage' smart constructor.
data ImportWorkspaceImage = ImportWorkspaceImage'
  { _iwiTags ::
      !(Maybe [Tag]),
    _iwiApplications ::
      !(Maybe (List1 Application)),
    _iwiEC2ImageId :: !Text,
    _iwiIngestionProcess ::
      !WorkspaceImageIngestionProcess,
    _iwiImageName :: !Text,
    _iwiImageDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportWorkspaceImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwiTags' - The tags. Each WorkSpaces resource can have a maximum of 50 tags.
--
-- * 'iwiApplications' - If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 BYOL images. For more information about subscribing to Office for BYOL images, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html Bring Your Own Windows Desktop Licenses> .
--
-- * 'iwiEC2ImageId' - The identifier of the EC2 image.
--
-- * 'iwiIngestionProcess' - The ingestion process to be used when importing the image, depending on which protocol you want to use for your BYOL Workspace image, either PCoIP or WorkSpaces Streaming Protocol (WSP). To use WSP, specify a value that ends in @_WSP@ . To use PCoIP, specify a value that does not end in @_WSP@ .  For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify @BYOL_REGULAR@ or @BYOL_REGULAR_WSP@ , depending on the protocol.
--
-- * 'iwiImageName' - The name of the WorkSpace image.
--
-- * 'iwiImageDescription' - The description of the WorkSpace image.
importWorkspaceImage ::
  -- | 'iwiEC2ImageId'
  Text ->
  -- | 'iwiIngestionProcess'
  WorkspaceImageIngestionProcess ->
  -- | 'iwiImageName'
  Text ->
  -- | 'iwiImageDescription'
  Text ->
  ImportWorkspaceImage
importWorkspaceImage
  pEC2ImageId_
  pIngestionProcess_
  pImageName_
  pImageDescription_ =
    ImportWorkspaceImage'
      { _iwiTags = Nothing,
        _iwiApplications = Nothing,
        _iwiEC2ImageId = pEC2ImageId_,
        _iwiIngestionProcess = pIngestionProcess_,
        _iwiImageName = pImageName_,
        _iwiImageDescription = pImageDescription_
      }

-- | The tags. Each WorkSpaces resource can have a maximum of 50 tags.
iwiTags :: Lens' ImportWorkspaceImage [Tag]
iwiTags = lens _iwiTags (\s a -> s {_iwiTags = a}) . _Default . _Coerce

-- | If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 BYOL images. For more information about subscribing to Office for BYOL images, see <https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html Bring Your Own Windows Desktop Licenses> .
iwiApplications :: Lens' ImportWorkspaceImage (Maybe (NonEmpty Application))
iwiApplications = lens _iwiApplications (\s a -> s {_iwiApplications = a}) . mapping _List1

-- | The identifier of the EC2 image.
iwiEC2ImageId :: Lens' ImportWorkspaceImage Text
iwiEC2ImageId = lens _iwiEC2ImageId (\s a -> s {_iwiEC2ImageId = a})

-- | The ingestion process to be used when importing the image, depending on which protocol you want to use for your BYOL Workspace image, either PCoIP or WorkSpaces Streaming Protocol (WSP). To use WSP, specify a value that ends in @_WSP@ . To use PCoIP, specify a value that does not end in @_WSP@ .  For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify @BYOL_REGULAR@ or @BYOL_REGULAR_WSP@ , depending on the protocol.
iwiIngestionProcess :: Lens' ImportWorkspaceImage WorkspaceImageIngestionProcess
iwiIngestionProcess = lens _iwiIngestionProcess (\s a -> s {_iwiIngestionProcess = a})

-- | The name of the WorkSpace image.
iwiImageName :: Lens' ImportWorkspaceImage Text
iwiImageName = lens _iwiImageName (\s a -> s {_iwiImageName = a})

-- | The description of the WorkSpace image.
iwiImageDescription :: Lens' ImportWorkspaceImage Text
iwiImageDescription = lens _iwiImageDescription (\s a -> s {_iwiImageDescription = a})

instance AWSRequest ImportWorkspaceImage where
  type
    Rs ImportWorkspaceImage =
      ImportWorkspaceImageResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          ImportWorkspaceImageResponse'
            <$> (x .?> "ImageId") <*> (pure (fromEnum s))
      )

instance Hashable ImportWorkspaceImage

instance NFData ImportWorkspaceImage

instance ToHeaders ImportWorkspaceImage where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.ImportWorkspaceImage" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ImportWorkspaceImage where
  toJSON ImportWorkspaceImage' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _iwiTags,
            ("Applications" .=) <$> _iwiApplications,
            Just ("Ec2ImageId" .= _iwiEC2ImageId),
            Just ("IngestionProcess" .= _iwiIngestionProcess),
            Just ("ImageName" .= _iwiImageName),
            Just ("ImageDescription" .= _iwiImageDescription)
          ]
      )

instance ToPath ImportWorkspaceImage where
  toPath = const "/"

instance ToQuery ImportWorkspaceImage where
  toQuery = const mempty

-- | /See:/ 'importWorkspaceImageResponse' smart constructor.
data ImportWorkspaceImageResponse = ImportWorkspaceImageResponse'
  { _iwirrsImageId ::
      !(Maybe Text),
    _iwirrsResponseStatus ::
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

-- | Creates a value of 'ImportWorkspaceImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iwirrsImageId' - The identifier of the WorkSpace image.
--
-- * 'iwirrsResponseStatus' - -- | The response status code.
importWorkspaceImageResponse ::
  -- | 'iwirrsResponseStatus'
  Int ->
  ImportWorkspaceImageResponse
importWorkspaceImageResponse pResponseStatus_ =
  ImportWorkspaceImageResponse'
    { _iwirrsImageId =
        Nothing,
      _iwirrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the WorkSpace image.
iwirrsImageId :: Lens' ImportWorkspaceImageResponse (Maybe Text)
iwirrsImageId = lens _iwirrsImageId (\s a -> s {_iwirrsImageId = a})

-- | -- | The response status code.
iwirrsResponseStatus :: Lens' ImportWorkspaceImageResponse Int
iwirrsResponseStatus = lens _iwirrsResponseStatus (\s a -> s {_iwirrsResponseStatus = a})

instance NFData ImportWorkspaceImageResponse
