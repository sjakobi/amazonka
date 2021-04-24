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
-- Module      : Network.AWS.EC2.DeleteFpgaImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Amazon FPGA Image (AFI).
module Network.AWS.EC2.DeleteFpgaImage
  ( -- * Creating a Request
    deleteFpgaImage,
    DeleteFpgaImage,

    -- * Request Lenses
    dfifDryRun,
    dfifFpgaImageId,

    -- * Destructuring the Response
    deleteFpgaImageResponse,
    DeleteFpgaImageResponse,

    -- * Response Lenses
    delersReturn,
    delersResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteFpgaImage' smart constructor.
data DeleteFpgaImage = DeleteFpgaImage'
  { _dfifDryRun ::
      !(Maybe Bool),
    _dfifFpgaImageId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteFpgaImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfifDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dfifFpgaImageId' - The ID of the AFI.
deleteFpgaImage ::
  -- | 'dfifFpgaImageId'
  Text ->
  DeleteFpgaImage
deleteFpgaImage pFpgaImageId_ =
  DeleteFpgaImage'
    { _dfifDryRun = Nothing,
      _dfifFpgaImageId = pFpgaImageId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dfifDryRun :: Lens' DeleteFpgaImage (Maybe Bool)
dfifDryRun = lens _dfifDryRun (\s a -> s {_dfifDryRun = a})

-- | The ID of the AFI.
dfifFpgaImageId :: Lens' DeleteFpgaImage Text
dfifFpgaImageId = lens _dfifFpgaImageId (\s a -> s {_dfifFpgaImageId = a})

instance AWSRequest DeleteFpgaImage where
  type Rs DeleteFpgaImage = DeleteFpgaImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DeleteFpgaImageResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable DeleteFpgaImage

instance NFData DeleteFpgaImage

instance ToHeaders DeleteFpgaImage where
  toHeaders = const mempty

instance ToPath DeleteFpgaImage where
  toPath = const "/"

instance ToQuery DeleteFpgaImage where
  toQuery DeleteFpgaImage' {..} =
    mconcat
      [ "Action" =: ("DeleteFpgaImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dfifDryRun,
        "FpgaImageId" =: _dfifFpgaImageId
      ]

-- | /See:/ 'deleteFpgaImageResponse' smart constructor.
data DeleteFpgaImageResponse = DeleteFpgaImageResponse'
  { _delersReturn ::
      !(Maybe Bool),
    _delersResponseStatus ::
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

-- | Creates a value of 'DeleteFpgaImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delersReturn' - Is @true@ if the request succeeds, and an error otherwise.
--
-- * 'delersResponseStatus' - -- | The response status code.
deleteFpgaImageResponse ::
  -- | 'delersResponseStatus'
  Int ->
  DeleteFpgaImageResponse
deleteFpgaImageResponse pResponseStatus_ =
  DeleteFpgaImageResponse'
    { _delersReturn = Nothing,
      _delersResponseStatus = pResponseStatus_
    }

-- | Is @true@ if the request succeeds, and an error otherwise.
delersReturn :: Lens' DeleteFpgaImageResponse (Maybe Bool)
delersReturn = lens _delersReturn (\s a -> s {_delersReturn = a})

-- | -- | The response status code.
delersResponseStatus :: Lens' DeleteFpgaImageResponse Int
delersResponseStatus = lens _delersResponseStatus (\s a -> s {_delersResponseStatus = a})

instance NFData DeleteFpgaImageResponse
