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
-- Module      : Network.AWS.DirectConnect.DescribeVirtualInterfaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned.
--
--
-- A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer network.
module Network.AWS.DirectConnect.DescribeVirtualInterfaces
  ( -- * Creating a Request
    describeVirtualInterfaces,
    DescribeVirtualInterfaces,

    -- * Request Lenses
    dvisConnectionId,
    dvisVirtualInterfaceId,

    -- * Destructuring the Response
    describeVirtualInterfacesResponse,
    DescribeVirtualInterfacesResponse,

    -- * Response Lenses
    dvirrsVirtualInterfaces,
    dvirrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVirtualInterfaces' smart constructor.
data DescribeVirtualInterfaces = DescribeVirtualInterfaces'
  { _dvisConnectionId ::
      !(Maybe Text),
    _dvisVirtualInterfaceId ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeVirtualInterfaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvisConnectionId' - The ID of the connection.
--
-- * 'dvisVirtualInterfaceId' - The ID of the virtual interface.
describeVirtualInterfaces ::
  DescribeVirtualInterfaces
describeVirtualInterfaces =
  DescribeVirtualInterfaces'
    { _dvisConnectionId =
        Nothing,
      _dvisVirtualInterfaceId = Nothing
    }

-- | The ID of the connection.
dvisConnectionId :: Lens' DescribeVirtualInterfaces (Maybe Text)
dvisConnectionId = lens _dvisConnectionId (\s a -> s {_dvisConnectionId = a})

-- | The ID of the virtual interface.
dvisVirtualInterfaceId :: Lens' DescribeVirtualInterfaces (Maybe Text)
dvisVirtualInterfaceId = lens _dvisVirtualInterfaceId (\s a -> s {_dvisVirtualInterfaceId = a})

instance AWSRequest DescribeVirtualInterfaces where
  type
    Rs DescribeVirtualInterfaces =
      DescribeVirtualInterfacesResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeVirtualInterfacesResponse'
            <$> (x .?> "virtualInterfaces" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVirtualInterfaces

instance NFData DescribeVirtualInterfaces

instance ToHeaders DescribeVirtualInterfaces where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeVirtualInterfaces" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeVirtualInterfaces where
  toJSON DescribeVirtualInterfaces' {..} =
    object
      ( catMaybes
          [ ("connectionId" .=) <$> _dvisConnectionId,
            ("virtualInterfaceId" .=)
              <$> _dvisVirtualInterfaceId
          ]
      )

instance ToPath DescribeVirtualInterfaces where
  toPath = const "/"

instance ToQuery DescribeVirtualInterfaces where
  toQuery = const mempty

-- | /See:/ 'describeVirtualInterfacesResponse' smart constructor.
data DescribeVirtualInterfacesResponse = DescribeVirtualInterfacesResponse'
  { _dvirrsVirtualInterfaces ::
      !( Maybe
           [VirtualInterface]
       ),
    _dvirrsResponseStatus ::
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

-- | Creates a value of 'DescribeVirtualInterfacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvirrsVirtualInterfaces' - The virtual interfaces
--
-- * 'dvirrsResponseStatus' - -- | The response status code.
describeVirtualInterfacesResponse ::
  -- | 'dvirrsResponseStatus'
  Int ->
  DescribeVirtualInterfacesResponse
describeVirtualInterfacesResponse pResponseStatus_ =
  DescribeVirtualInterfacesResponse'
    { _dvirrsVirtualInterfaces =
        Nothing,
      _dvirrsResponseStatus = pResponseStatus_
    }

-- | The virtual interfaces
dvirrsVirtualInterfaces :: Lens' DescribeVirtualInterfacesResponse [VirtualInterface]
dvirrsVirtualInterfaces = lens _dvirrsVirtualInterfaces (\s a -> s {_dvirrsVirtualInterfaces = a}) . _Default . _Coerce

-- | -- | The response status code.
dvirrsResponseStatus :: Lens' DescribeVirtualInterfacesResponse Int
dvirrsResponseStatus = lens _dvirrsResponseStatus (\s a -> s {_dvirrsResponseStatus = a})

instance NFData DescribeVirtualInterfacesResponse
