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
-- Module      : Network.AWS.EC2.ResetNetworkInterfaceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a network interface attribute. You can specify only one attribute at a time.
module Network.AWS.EC2.ResetNetworkInterfaceAttribute
  ( -- * Creating a Request
    resetNetworkInterfaceAttribute,
    ResetNetworkInterfaceAttribute,

    -- * Request Lenses
    rniaDryRun,
    rniaSourceDestCheck,
    rniaNetworkInterfaceId,

    -- * Destructuring the Response
    resetNetworkInterfaceAttributeResponse,
    ResetNetworkInterfaceAttributeResponse,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ResetNetworkInterfaceAttribute.
--
--
--
-- /See:/ 'resetNetworkInterfaceAttribute' smart constructor.
data ResetNetworkInterfaceAttribute = ResetNetworkInterfaceAttribute'
  { _rniaDryRun ::
      !( Maybe
           Bool
       ),
    _rniaSourceDestCheck ::
      !( Maybe
           Text
       ),
    _rniaNetworkInterfaceId ::
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

-- | Creates a value of 'ResetNetworkInterfaceAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rniaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rniaSourceDestCheck' - The source/destination checking attribute. Resets the value to @true@ .
--
-- * 'rniaNetworkInterfaceId' - The ID of the network interface.
resetNetworkInterfaceAttribute ::
  -- | 'rniaNetworkInterfaceId'
  Text ->
  ResetNetworkInterfaceAttribute
resetNetworkInterfaceAttribute pNetworkInterfaceId_ =
  ResetNetworkInterfaceAttribute'
    { _rniaDryRun =
        Nothing,
      _rniaSourceDestCheck = Nothing,
      _rniaNetworkInterfaceId =
        pNetworkInterfaceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rniaDryRun :: Lens' ResetNetworkInterfaceAttribute (Maybe Bool)
rniaDryRun = lens _rniaDryRun (\s a -> s {_rniaDryRun = a})

-- | The source/destination checking attribute. Resets the value to @true@ .
rniaSourceDestCheck :: Lens' ResetNetworkInterfaceAttribute (Maybe Text)
rniaSourceDestCheck = lens _rniaSourceDestCheck (\s a -> s {_rniaSourceDestCheck = a})

-- | The ID of the network interface.
rniaNetworkInterfaceId :: Lens' ResetNetworkInterfaceAttribute Text
rniaNetworkInterfaceId = lens _rniaNetworkInterfaceId (\s a -> s {_rniaNetworkInterfaceId = a})

instance AWSRequest ResetNetworkInterfaceAttribute where
  type
    Rs ResetNetworkInterfaceAttribute =
      ResetNetworkInterfaceAttributeResponse
  request = postQuery ec2
  response =
    receiveNull ResetNetworkInterfaceAttributeResponse'

instance Hashable ResetNetworkInterfaceAttribute

instance NFData ResetNetworkInterfaceAttribute

instance ToHeaders ResetNetworkInterfaceAttribute where
  toHeaders = const mempty

instance ToPath ResetNetworkInterfaceAttribute where
  toPath = const "/"

instance ToQuery ResetNetworkInterfaceAttribute where
  toQuery ResetNetworkInterfaceAttribute' {..} =
    mconcat
      [ "Action"
          =: ("ResetNetworkInterfaceAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _rniaDryRun,
        "SourceDestCheck" =: _rniaSourceDestCheck,
        "NetworkInterfaceId" =: _rniaNetworkInterfaceId
      ]

-- | /See:/ 'resetNetworkInterfaceAttributeResponse' smart constructor.
data ResetNetworkInterfaceAttributeResponse = ResetNetworkInterfaceAttributeResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResetNetworkInterfaceAttributeResponse' with the minimum fields required to make a request.
resetNetworkInterfaceAttributeResponse ::
  ResetNetworkInterfaceAttributeResponse
resetNetworkInterfaceAttributeResponse =
  ResetNetworkInterfaceAttributeResponse'

instance
  NFData
    ResetNetworkInterfaceAttributeResponse
