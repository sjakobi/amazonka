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
-- Module      : Network.AWS.EC2.ResetAddressAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the attribute of the specified IP address. For requirements, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS Using reverse DNS for email applications> .
module Network.AWS.EC2.ResetAddressAttribute
  ( -- * Creating a Request
    resetAddressAttribute,
    ResetAddressAttribute,

    -- * Request Lenses
    raaDryRun,
    raaAllocationId,
    raaAttribute,

    -- * Destructuring the Response
    resetAddressAttributeResponse,
    ResetAddressAttributeResponse,

    -- * Response Lenses
    raarrsAddress,
    raarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'resetAddressAttribute' smart constructor.
data ResetAddressAttribute = ResetAddressAttribute'
  { _raaDryRun ::
      !(Maybe Bool),
    _raaAllocationId :: !Text,
    _raaAttribute ::
      !AddressAttributeName
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResetAddressAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'raaAllocationId' - [EC2-VPC] The allocation ID.
--
-- * 'raaAttribute' - The attribute of the IP address.
resetAddressAttribute ::
  -- | 'raaAllocationId'
  Text ->
  -- | 'raaAttribute'
  AddressAttributeName ->
  ResetAddressAttribute
resetAddressAttribute pAllocationId_ pAttribute_ =
  ResetAddressAttribute'
    { _raaDryRun = Nothing,
      _raaAllocationId = pAllocationId_,
      _raaAttribute = pAttribute_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
raaDryRun :: Lens' ResetAddressAttribute (Maybe Bool)
raaDryRun = lens _raaDryRun (\s a -> s {_raaDryRun = a})

-- | [EC2-VPC] The allocation ID.
raaAllocationId :: Lens' ResetAddressAttribute Text
raaAllocationId = lens _raaAllocationId (\s a -> s {_raaAllocationId = a})

-- | The attribute of the IP address.
raaAttribute :: Lens' ResetAddressAttribute AddressAttributeName
raaAttribute = lens _raaAttribute (\s a -> s {_raaAttribute = a})

instance AWSRequest ResetAddressAttribute where
  type
    Rs ResetAddressAttribute =
      ResetAddressAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ResetAddressAttributeResponse'
            <$> (x .@? "address") <*> (pure (fromEnum s))
      )

instance Hashable ResetAddressAttribute

instance NFData ResetAddressAttribute

instance ToHeaders ResetAddressAttribute where
  toHeaders = const mempty

instance ToPath ResetAddressAttribute where
  toPath = const "/"

instance ToQuery ResetAddressAttribute where
  toQuery ResetAddressAttribute' {..} =
    mconcat
      [ "Action" =: ("ResetAddressAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _raaDryRun,
        "AllocationId" =: _raaAllocationId,
        "Attribute" =: _raaAttribute
      ]

-- | /See:/ 'resetAddressAttributeResponse' smart constructor.
data ResetAddressAttributeResponse = ResetAddressAttributeResponse'
  { _raarrsAddress ::
      !( Maybe
           AddressAttribute
       ),
    _raarrsResponseStatus ::
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

-- | Creates a value of 'ResetAddressAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raarrsAddress' - Information about the IP address.
--
-- * 'raarrsResponseStatus' - -- | The response status code.
resetAddressAttributeResponse ::
  -- | 'raarrsResponseStatus'
  Int ->
  ResetAddressAttributeResponse
resetAddressAttributeResponse pResponseStatus_ =
  ResetAddressAttributeResponse'
    { _raarrsAddress =
        Nothing,
      _raarrsResponseStatus = pResponseStatus_
    }

-- | Information about the IP address.
raarrsAddress :: Lens' ResetAddressAttributeResponse (Maybe AddressAttribute)
raarrsAddress = lens _raarrsAddress (\s a -> s {_raarrsAddress = a})

-- | -- | The response status code.
raarrsResponseStatus :: Lens' ResetAddressAttributeResponse Int
raarrsResponseStatus = lens _raarrsResponseStatus (\s a -> s {_raarrsResponseStatus = a})

instance NFData ResetAddressAttributeResponse
