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
-- Module      : Network.AWS.EC2.CopyFpgaImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies the specified Amazon FPGA Image (AFI) to the current Region.
module Network.AWS.EC2.CopyFpgaImage
  ( -- * Creating a Request
    copyFpgaImage,
    CopyFpgaImage,

    -- * Request Lenses
    copDryRun,
    copName,
    copDescription,
    copClientToken,
    copSourceFpgaImageId,
    copSourceRegion,

    -- * Destructuring the Response
    copyFpgaImageResponse,
    CopyFpgaImageResponse,

    -- * Response Lenses
    cfirrsFpgaImageId,
    cfirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'copyFpgaImage' smart constructor.
data CopyFpgaImage = CopyFpgaImage'
  { _copDryRun ::
      !(Maybe Bool),
    _copName :: !(Maybe Text),
    _copDescription :: !(Maybe Text),
    _copClientToken :: !(Maybe Text),
    _copSourceFpgaImageId :: !Text,
    _copSourceRegion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CopyFpgaImage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'copDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'copName' - The name for the new AFI. The default is the name of the source AFI.
--
-- * 'copDescription' - The description for the new AFI.
--
-- * 'copClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'copSourceFpgaImageId' - The ID of the source AFI.
--
-- * 'copSourceRegion' - The Region that contains the source AFI.
copyFpgaImage ::
  -- | 'copSourceFpgaImageId'
  Text ->
  -- | 'copSourceRegion'
  Text ->
  CopyFpgaImage
copyFpgaImage pSourceFpgaImageId_ pSourceRegion_ =
  CopyFpgaImage'
    { _copDryRun = Nothing,
      _copName = Nothing,
      _copDescription = Nothing,
      _copClientToken = Nothing,
      _copSourceFpgaImageId = pSourceFpgaImageId_,
      _copSourceRegion = pSourceRegion_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
copDryRun :: Lens' CopyFpgaImage (Maybe Bool)
copDryRun = lens _copDryRun (\s a -> s {_copDryRun = a})

-- | The name for the new AFI. The default is the name of the source AFI.
copName :: Lens' CopyFpgaImage (Maybe Text)
copName = lens _copName (\s a -> s {_copName = a})

-- | The description for the new AFI.
copDescription :: Lens' CopyFpgaImage (Maybe Text)
copDescription = lens _copDescription (\s a -> s {_copDescription = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html Ensuring Idempotency> .
copClientToken :: Lens' CopyFpgaImage (Maybe Text)
copClientToken = lens _copClientToken (\s a -> s {_copClientToken = a})

-- | The ID of the source AFI.
copSourceFpgaImageId :: Lens' CopyFpgaImage Text
copSourceFpgaImageId = lens _copSourceFpgaImageId (\s a -> s {_copSourceFpgaImageId = a})

-- | The Region that contains the source AFI.
copSourceRegion :: Lens' CopyFpgaImage Text
copSourceRegion = lens _copSourceRegion (\s a -> s {_copSourceRegion = a})

instance AWSRequest CopyFpgaImage where
  type Rs CopyFpgaImage = CopyFpgaImageResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CopyFpgaImageResponse'
            <$> (x .@? "fpgaImageId") <*> (pure (fromEnum s))
      )

instance Hashable CopyFpgaImage

instance NFData CopyFpgaImage

instance ToHeaders CopyFpgaImage where
  toHeaders = const mempty

instance ToPath CopyFpgaImage where
  toPath = const "/"

instance ToQuery CopyFpgaImage where
  toQuery CopyFpgaImage' {..} =
    mconcat
      [ "Action" =: ("CopyFpgaImage" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _copDryRun,
        "Name" =: _copName,
        "Description" =: _copDescription,
        "ClientToken" =: _copClientToken,
        "SourceFpgaImageId" =: _copSourceFpgaImageId,
        "SourceRegion" =: _copSourceRegion
      ]

-- | /See:/ 'copyFpgaImageResponse' smart constructor.
data CopyFpgaImageResponse = CopyFpgaImageResponse'
  { _cfirrsFpgaImageId ::
      !(Maybe Text),
    _cfirrsResponseStatus ::
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

-- | Creates a value of 'CopyFpgaImageResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfirrsFpgaImageId' - The ID of the new AFI.
--
-- * 'cfirrsResponseStatus' - -- | The response status code.
copyFpgaImageResponse ::
  -- | 'cfirrsResponseStatus'
  Int ->
  CopyFpgaImageResponse
copyFpgaImageResponse pResponseStatus_ =
  CopyFpgaImageResponse'
    { _cfirrsFpgaImageId =
        Nothing,
      _cfirrsResponseStatus = pResponseStatus_
    }

-- | The ID of the new AFI.
cfirrsFpgaImageId :: Lens' CopyFpgaImageResponse (Maybe Text)
cfirrsFpgaImageId = lens _cfirrsFpgaImageId (\s a -> s {_cfirrsFpgaImageId = a})

-- | -- | The response status code.
cfirrsResponseStatus :: Lens' CopyFpgaImageResponse Int
cfirrsResponseStatus = lens _cfirrsResponseStatus (\s a -> s {_cfirrsResponseStatus = a})

instance NFData CopyFpgaImageResponse
