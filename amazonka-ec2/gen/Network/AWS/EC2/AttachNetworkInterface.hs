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
-- Module      : Network.AWS.EC2.AttachNetworkInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a network interface to an instance.
module Network.AWS.EC2.AttachNetworkInterface
  ( -- * Creating a Request
    attachNetworkInterface,
    AttachNetworkInterface,

    -- * Request Lenses
    aniDryRun,
    aniNetworkCardIndex,
    aniDeviceIndex,
    aniInstanceId,
    aniNetworkInterfaceId,

    -- * Destructuring the Response
    attachNetworkInterfaceResponse,
    AttachNetworkInterfaceResponse,

    -- * Response Lenses
    anirrsAttachmentId,
    anirrsNetworkCardIndex,
    anirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for AttachNetworkInterface.
--
--
--
-- /See:/ 'attachNetworkInterface' smart constructor.
data AttachNetworkInterface = AttachNetworkInterface'
  { _aniDryRun ::
      !(Maybe Bool),
    _aniNetworkCardIndex ::
      !(Maybe Int),
    _aniDeviceIndex :: !Int,
    _aniInstanceId :: !Text,
    _aniNetworkInterfaceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AttachNetworkInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aniDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'aniNetworkCardIndex' - The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
--
-- * 'aniDeviceIndex' - The index of the device for the network interface attachment.
--
-- * 'aniInstanceId' - The ID of the instance.
--
-- * 'aniNetworkInterfaceId' - The ID of the network interface.
attachNetworkInterface ::
  -- | 'aniDeviceIndex'
  Int ->
  -- | 'aniInstanceId'
  Text ->
  -- | 'aniNetworkInterfaceId'
  Text ->
  AttachNetworkInterface
attachNetworkInterface
  pDeviceIndex_
  pInstanceId_
  pNetworkInterfaceId_ =
    AttachNetworkInterface'
      { _aniDryRun = Nothing,
        _aniNetworkCardIndex = Nothing,
        _aniDeviceIndex = pDeviceIndex_,
        _aniInstanceId = pInstanceId_,
        _aniNetworkInterfaceId = pNetworkInterfaceId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
aniDryRun :: Lens' AttachNetworkInterface (Maybe Bool)
aniDryRun = lens _aniDryRun (\s a -> s {_aniDryRun = a})

-- | The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0.
aniNetworkCardIndex :: Lens' AttachNetworkInterface (Maybe Int)
aniNetworkCardIndex = lens _aniNetworkCardIndex (\s a -> s {_aniNetworkCardIndex = a})

-- | The index of the device for the network interface attachment.
aniDeviceIndex :: Lens' AttachNetworkInterface Int
aniDeviceIndex = lens _aniDeviceIndex (\s a -> s {_aniDeviceIndex = a})

-- | The ID of the instance.
aniInstanceId :: Lens' AttachNetworkInterface Text
aniInstanceId = lens _aniInstanceId (\s a -> s {_aniInstanceId = a})

-- | The ID of the network interface.
aniNetworkInterfaceId :: Lens' AttachNetworkInterface Text
aniNetworkInterfaceId = lens _aniNetworkInterfaceId (\s a -> s {_aniNetworkInterfaceId = a})

instance AWSRequest AttachNetworkInterface where
  type
    Rs AttachNetworkInterface =
      AttachNetworkInterfaceResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AttachNetworkInterfaceResponse'
            <$> (x .@? "attachmentId")
            <*> (x .@? "networkCardIndex")
            <*> (pure (fromEnum s))
      )

instance Hashable AttachNetworkInterface

instance NFData AttachNetworkInterface

instance ToHeaders AttachNetworkInterface where
  toHeaders = const mempty

instance ToPath AttachNetworkInterface where
  toPath = const "/"

instance ToQuery AttachNetworkInterface where
  toQuery AttachNetworkInterface' {..} =
    mconcat
      [ "Action"
          =: ("AttachNetworkInterface" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _aniDryRun,
        "NetworkCardIndex" =: _aniNetworkCardIndex,
        "DeviceIndex" =: _aniDeviceIndex,
        "InstanceId" =: _aniInstanceId,
        "NetworkInterfaceId" =: _aniNetworkInterfaceId
      ]

-- | Contains the output of AttachNetworkInterface.
--
--
--
-- /See:/ 'attachNetworkInterfaceResponse' smart constructor.
data AttachNetworkInterfaceResponse = AttachNetworkInterfaceResponse'
  { _anirrsAttachmentId ::
      !( Maybe
           Text
       ),
    _anirrsNetworkCardIndex ::
      !( Maybe
           Int
       ),
    _anirrsResponseStatus ::
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

-- | Creates a value of 'AttachNetworkInterfaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anirrsAttachmentId' - The ID of the network interface attachment.
--
-- * 'anirrsNetworkCardIndex' - The index of the network card.
--
-- * 'anirrsResponseStatus' - -- | The response status code.
attachNetworkInterfaceResponse ::
  -- | 'anirrsResponseStatus'
  Int ->
  AttachNetworkInterfaceResponse
attachNetworkInterfaceResponse pResponseStatus_ =
  AttachNetworkInterfaceResponse'
    { _anirrsAttachmentId =
        Nothing,
      _anirrsNetworkCardIndex = Nothing,
      _anirrsResponseStatus = pResponseStatus_
    }

-- | The ID of the network interface attachment.
anirrsAttachmentId :: Lens' AttachNetworkInterfaceResponse (Maybe Text)
anirrsAttachmentId = lens _anirrsAttachmentId (\s a -> s {_anirrsAttachmentId = a})

-- | The index of the network card.
anirrsNetworkCardIndex :: Lens' AttachNetworkInterfaceResponse (Maybe Int)
anirrsNetworkCardIndex = lens _anirrsNetworkCardIndex (\s a -> s {_anirrsNetworkCardIndex = a})

-- | -- | The response status code.
anirrsResponseStatus :: Lens' AttachNetworkInterfaceResponse Int
anirrsResponseStatus = lens _anirrsResponseStatus (\s a -> s {_anirrsResponseStatus = a})

instance NFData AttachNetworkInterfaceResponse
