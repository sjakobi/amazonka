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
-- Module      : Network.AWS.DirectConnect.CreateBGPPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a BGP peer on the specified virtual interface.
--
--
-- You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to access AWS resources that also use that address family.
--
-- If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot be in the same address family as an existing BGP peer on the virtual interface.
--
-- When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.
--
-- For a public virtual interface, the Autonomous System Number (ASN) must be private or already on the allow list for the virtual interface.
module Network.AWS.DirectConnect.CreateBGPPeer
  ( -- * Creating a Request
    createBGPPeer,
    CreateBGPPeer,

    -- * Request Lenses
    cbpVirtualInterfaceId,
    cbpNewBGPPeer,

    -- * Destructuring the Response
    createBGPPeerResponse,
    CreateBGPPeerResponse,

    -- * Response Lenses
    cbprrsVirtualInterface,
    cbprrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createBGPPeer' smart constructor.
data CreateBGPPeer = CreateBGPPeer'
  { _cbpVirtualInterfaceId ::
      !(Maybe Text),
    _cbpNewBGPPeer :: !(Maybe NewBGPPeer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBGPPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbpVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'cbpNewBGPPeer' - Information about the BGP peer.
createBGPPeer ::
  CreateBGPPeer
createBGPPeer =
  CreateBGPPeer'
    { _cbpVirtualInterfaceId = Nothing,
      _cbpNewBGPPeer = Nothing
    }

-- | The ID of the virtual interface.
cbpVirtualInterfaceId :: Lens' CreateBGPPeer (Maybe Text)
cbpVirtualInterfaceId = lens _cbpVirtualInterfaceId (\s a -> s {_cbpVirtualInterfaceId = a})

-- | Information about the BGP peer.
cbpNewBGPPeer :: Lens' CreateBGPPeer (Maybe NewBGPPeer)
cbpNewBGPPeer = lens _cbpNewBGPPeer (\s a -> s {_cbpNewBGPPeer = a})

instance AWSRequest CreateBGPPeer where
  type Rs CreateBGPPeer = CreateBGPPeerResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          CreateBGPPeerResponse'
            <$> (x .?> "virtualInterface") <*> (pure (fromEnum s))
      )

instance Hashable CreateBGPPeer

instance NFData CreateBGPPeer

instance ToHeaders CreateBGPPeer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OvertureService.CreateBGPPeer" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateBGPPeer where
  toJSON CreateBGPPeer' {..} =
    object
      ( catMaybes
          [ ("virtualInterfaceId" .=)
              <$> _cbpVirtualInterfaceId,
            ("newBGPPeer" .=) <$> _cbpNewBGPPeer
          ]
      )

instance ToPath CreateBGPPeer where
  toPath = const "/"

instance ToQuery CreateBGPPeer where
  toQuery = const mempty

-- | /See:/ 'createBGPPeerResponse' smart constructor.
data CreateBGPPeerResponse = CreateBGPPeerResponse'
  { _cbprrsVirtualInterface ::
      !(Maybe VirtualInterface),
    _cbprrsResponseStatus ::
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

-- | Creates a value of 'CreateBGPPeerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbprrsVirtualInterface' - The virtual interface.
--
-- * 'cbprrsResponseStatus' - -- | The response status code.
createBGPPeerResponse ::
  -- | 'cbprrsResponseStatus'
  Int ->
  CreateBGPPeerResponse
createBGPPeerResponse pResponseStatus_ =
  CreateBGPPeerResponse'
    { _cbprrsVirtualInterface =
        Nothing,
      _cbprrsResponseStatus = pResponseStatus_
    }

-- | The virtual interface.
cbprrsVirtualInterface :: Lens' CreateBGPPeerResponse (Maybe VirtualInterface)
cbprrsVirtualInterface = lens _cbprrsVirtualInterface (\s a -> s {_cbprrsVirtualInterface = a})

-- | -- | The response status code.
cbprrsResponseStatus :: Lens' CreateBGPPeerResponse Int
cbprrsResponseStatus = lens _cbprrsResponseStatus (\s a -> s {_cbprrsResponseStatus = a})

instance NFData CreateBGPPeerResponse
