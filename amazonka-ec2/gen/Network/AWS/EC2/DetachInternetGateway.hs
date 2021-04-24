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
-- Module      : Network.AWS.EC2.DetachInternetGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.
module Network.AWS.EC2.DetachInternetGateway
  ( -- * Creating a Request
    detachInternetGateway,
    DetachInternetGateway,

    -- * Request Lenses
    detDryRun,
    detInternetGatewayId,
    detVPCId,

    -- * Destructuring the Response
    detachInternetGatewayResponse,
    DetachInternetGatewayResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachInternetGateway' smart constructor.
data DetachInternetGateway = DetachInternetGateway'
  { _detDryRun ::
      !(Maybe Bool),
    _detInternetGatewayId ::
      !Text,
    _detVPCId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachInternetGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'detInternetGatewayId' - The ID of the internet gateway.
--
-- * 'detVPCId' - The ID of the VPC.
detachInternetGateway ::
  -- | 'detInternetGatewayId'
  Text ->
  -- | 'detVPCId'
  Text ->
  DetachInternetGateway
detachInternetGateway pInternetGatewayId_ pVPCId_ =
  DetachInternetGateway'
    { _detDryRun = Nothing,
      _detInternetGatewayId = pInternetGatewayId_,
      _detVPCId = pVPCId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
detDryRun :: Lens' DetachInternetGateway (Maybe Bool)
detDryRun = lens _detDryRun (\s a -> s {_detDryRun = a})

-- | The ID of the internet gateway.
detInternetGatewayId :: Lens' DetachInternetGateway Text
detInternetGatewayId = lens _detInternetGatewayId (\s a -> s {_detInternetGatewayId = a})

-- | The ID of the VPC.
detVPCId :: Lens' DetachInternetGateway Text
detVPCId = lens _detVPCId (\s a -> s {_detVPCId = a})

instance AWSRequest DetachInternetGateway where
  type
    Rs DetachInternetGateway =
      DetachInternetGatewayResponse
  request = postQuery ec2
  response = receiveNull DetachInternetGatewayResponse'

instance Hashable DetachInternetGateway

instance NFData DetachInternetGateway

instance ToHeaders DetachInternetGateway where
  toHeaders = const mempty

instance ToPath DetachInternetGateway where
  toPath = const "/"

instance ToQuery DetachInternetGateway where
  toQuery DetachInternetGateway' {..} =
    mconcat
      [ "Action" =: ("DetachInternetGateway" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _detDryRun,
        "InternetGatewayId" =: _detInternetGatewayId,
        "VpcId" =: _detVPCId
      ]

-- | /See:/ 'detachInternetGatewayResponse' smart constructor.
data DetachInternetGatewayResponse = DetachInternetGatewayResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachInternetGatewayResponse' with the minimum fields required to make a request.
detachInternetGatewayResponse ::
  DetachInternetGatewayResponse
detachInternetGatewayResponse =
  DetachInternetGatewayResponse'

instance NFData DetachInternetGatewayResponse
