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
-- Module      : Network.AWS.EC2.ModifyVPNConnectionOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the connection options for your Site-to-Site VPN connection.
--
--
-- When you modify the VPN connection options, the VPN endpoint IP addresses on the AWS side do not change, and the tunnel options do not change. Your VPN connection will be temporarily unavailable for a brief period while the VPN connection is updated.
module Network.AWS.EC2.ModifyVPNConnectionOptions
  ( -- * Creating a Request
    modifyVPNConnectionOptions,
    ModifyVPNConnectionOptions,

    -- * Request Lenses
    mvcoRemoteIPv6NetworkCidr,
    mvcoDryRun,
    mvcoLocalIPv6NetworkCidr,
    mvcoRemoteIPv4NetworkCidr,
    mvcoLocalIPv4NetworkCidr,
    mvcoVPNConnectionId,

    -- * Destructuring the Response
    modifyVPNConnectionOptionsResponse,
    ModifyVPNConnectionOptionsResponse,

    -- * Response Lenses
    mvcorrsVPNConnection,
    mvcorrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyVPNConnectionOptions' smart constructor.
data ModifyVPNConnectionOptions = ModifyVPNConnectionOptions'
  { _mvcoRemoteIPv6NetworkCidr ::
      !(Maybe Text),
    _mvcoDryRun ::
      !(Maybe Bool),
    _mvcoLocalIPv6NetworkCidr ::
      !(Maybe Text),
    _mvcoRemoteIPv4NetworkCidr ::
      !(Maybe Text),
    _mvcoLocalIPv4NetworkCidr ::
      !(Maybe Text),
    _mvcoVPNConnectionId ::
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

-- | Creates a value of 'ModifyVPNConnectionOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvcoRemoteIPv6NetworkCidr' - The IPv6 CIDR on the AWS side of the VPN connection. Default: @::/0@
--
-- * 'mvcoDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mvcoLocalIPv6NetworkCidr' - The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection. Default: @::/0@
--
-- * 'mvcoRemoteIPv4NetworkCidr' - The IPv4 CIDR on the AWS side of the VPN connection. Default: @0.0.0.0/0@
--
-- * 'mvcoLocalIPv4NetworkCidr' - The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection. Default: @0.0.0.0/0@
--
-- * 'mvcoVPNConnectionId' - The ID of the Site-to-Site VPN connection.
modifyVPNConnectionOptions ::
  -- | 'mvcoVPNConnectionId'
  Text ->
  ModifyVPNConnectionOptions
modifyVPNConnectionOptions pVPNConnectionId_ =
  ModifyVPNConnectionOptions'
    { _mvcoRemoteIPv6NetworkCidr =
        Nothing,
      _mvcoDryRun = Nothing,
      _mvcoLocalIPv6NetworkCidr = Nothing,
      _mvcoRemoteIPv4NetworkCidr = Nothing,
      _mvcoLocalIPv4NetworkCidr = Nothing,
      _mvcoVPNConnectionId = pVPNConnectionId_
    }

-- | The IPv6 CIDR on the AWS side of the VPN connection. Default: @::/0@
mvcoRemoteIPv6NetworkCidr :: Lens' ModifyVPNConnectionOptions (Maybe Text)
mvcoRemoteIPv6NetworkCidr = lens _mvcoRemoteIPv6NetworkCidr (\s a -> s {_mvcoRemoteIPv6NetworkCidr = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mvcoDryRun :: Lens' ModifyVPNConnectionOptions (Maybe Bool)
mvcoDryRun = lens _mvcoDryRun (\s a -> s {_mvcoDryRun = a})

-- | The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection. Default: @::/0@
mvcoLocalIPv6NetworkCidr :: Lens' ModifyVPNConnectionOptions (Maybe Text)
mvcoLocalIPv6NetworkCidr = lens _mvcoLocalIPv6NetworkCidr (\s a -> s {_mvcoLocalIPv6NetworkCidr = a})

-- | The IPv4 CIDR on the AWS side of the VPN connection. Default: @0.0.0.0/0@
mvcoRemoteIPv4NetworkCidr :: Lens' ModifyVPNConnectionOptions (Maybe Text)
mvcoRemoteIPv4NetworkCidr = lens _mvcoRemoteIPv4NetworkCidr (\s a -> s {_mvcoRemoteIPv4NetworkCidr = a})

-- | The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection. Default: @0.0.0.0/0@
mvcoLocalIPv4NetworkCidr :: Lens' ModifyVPNConnectionOptions (Maybe Text)
mvcoLocalIPv4NetworkCidr = lens _mvcoLocalIPv4NetworkCidr (\s a -> s {_mvcoLocalIPv4NetworkCidr = a})

-- | The ID of the Site-to-Site VPN connection.
mvcoVPNConnectionId :: Lens' ModifyVPNConnectionOptions Text
mvcoVPNConnectionId = lens _mvcoVPNConnectionId (\s a -> s {_mvcoVPNConnectionId = a})

instance AWSRequest ModifyVPNConnectionOptions where
  type
    Rs ModifyVPNConnectionOptions =
      ModifyVPNConnectionOptionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPNConnectionOptionsResponse'
            <$> (x .@? "vpnConnection") <*> (pure (fromEnum s))
      )

instance Hashable ModifyVPNConnectionOptions

instance NFData ModifyVPNConnectionOptions

instance ToHeaders ModifyVPNConnectionOptions where
  toHeaders = const mempty

instance ToPath ModifyVPNConnectionOptions where
  toPath = const "/"

instance ToQuery ModifyVPNConnectionOptions where
  toQuery ModifyVPNConnectionOptions' {..} =
    mconcat
      [ "Action"
          =: ("ModifyVpnConnectionOptions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "RemoteIpv6NetworkCidr"
          =: _mvcoRemoteIPv6NetworkCidr,
        "DryRun" =: _mvcoDryRun,
        "LocalIpv6NetworkCidr" =: _mvcoLocalIPv6NetworkCidr,
        "RemoteIpv4NetworkCidr"
          =: _mvcoRemoteIPv4NetworkCidr,
        "LocalIpv4NetworkCidr" =: _mvcoLocalIPv4NetworkCidr,
        "VpnConnectionId" =: _mvcoVPNConnectionId
      ]

-- | /See:/ 'modifyVPNConnectionOptionsResponse' smart constructor.
data ModifyVPNConnectionOptionsResponse = ModifyVPNConnectionOptionsResponse'
  { _mvcorrsVPNConnection ::
      !( Maybe
           VPNConnection
       ),
    _mvcorrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPNConnectionOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvcorrsVPNConnection' - Undocumented member.
--
-- * 'mvcorrsResponseStatus' - -- | The response status code.
modifyVPNConnectionOptionsResponse ::
  -- | 'mvcorrsResponseStatus'
  Int ->
  ModifyVPNConnectionOptionsResponse
modifyVPNConnectionOptionsResponse pResponseStatus_ =
  ModifyVPNConnectionOptionsResponse'
    { _mvcorrsVPNConnection =
        Nothing,
      _mvcorrsResponseStatus =
        pResponseStatus_
    }

-- | Undocumented member.
mvcorrsVPNConnection :: Lens' ModifyVPNConnectionOptionsResponse (Maybe VPNConnection)
mvcorrsVPNConnection = lens _mvcorrsVPNConnection (\s a -> s {_mvcorrsVPNConnection = a})

-- | -- | The response status code.
mvcorrsResponseStatus :: Lens' ModifyVPNConnectionOptionsResponse Int
mvcorrsResponseStatus = lens _mvcorrsResponseStatus (\s a -> s {_mvcorrsResponseStatus = a})

instance NFData ModifyVPNConnectionOptionsResponse
