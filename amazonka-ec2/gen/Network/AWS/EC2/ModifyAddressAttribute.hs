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
-- Module      : Network.AWS.EC2.ModifyAddressAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an attribute of the specified Elastic IP address. For requirements, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS Using reverse DNS for email applications> .
module Network.AWS.EC2.ModifyAddressAttribute
  ( -- * Creating a Request
    modifyAddressAttribute,
    ModifyAddressAttribute,

    -- * Request Lenses
    maaDryRun,
    maaDomainName,
    maaAllocationId,

    -- * Destructuring the Response
    modifyAddressAttributeResponse,
    ModifyAddressAttributeResponse,

    -- * Response Lenses
    maarrsAddress,
    maarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyAddressAttribute' smart constructor.
data ModifyAddressAttribute = ModifyAddressAttribute'
  { _maaDryRun ::
      !(Maybe Bool),
    _maaDomainName ::
      !(Maybe Text),
    _maaAllocationId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyAddressAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'maaDomainName' - The domain name to modify for the IP address.
--
-- * 'maaAllocationId' - [EC2-VPC] The allocation ID.
modifyAddressAttribute ::
  -- | 'maaAllocationId'
  Text ->
  ModifyAddressAttribute
modifyAddressAttribute pAllocationId_ =
  ModifyAddressAttribute'
    { _maaDryRun = Nothing,
      _maaDomainName = Nothing,
      _maaAllocationId = pAllocationId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
maaDryRun :: Lens' ModifyAddressAttribute (Maybe Bool)
maaDryRun = lens _maaDryRun (\s a -> s {_maaDryRun = a})

-- | The domain name to modify for the IP address.
maaDomainName :: Lens' ModifyAddressAttribute (Maybe Text)
maaDomainName = lens _maaDomainName (\s a -> s {_maaDomainName = a})

-- | [EC2-VPC] The allocation ID.
maaAllocationId :: Lens' ModifyAddressAttribute Text
maaAllocationId = lens _maaAllocationId (\s a -> s {_maaAllocationId = a})

instance AWSRequest ModifyAddressAttribute where
  type
    Rs ModifyAddressAttribute =
      ModifyAddressAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyAddressAttributeResponse'
            <$> (x .@? "address") <*> (pure (fromEnum s))
      )

instance Hashable ModifyAddressAttribute

instance NFData ModifyAddressAttribute

instance ToHeaders ModifyAddressAttribute where
  toHeaders = const mempty

instance ToPath ModifyAddressAttribute where
  toPath = const "/"

instance ToQuery ModifyAddressAttribute where
  toQuery ModifyAddressAttribute' {..} =
    mconcat
      [ "Action"
          =: ("ModifyAddressAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _maaDryRun,
        "DomainName" =: _maaDomainName,
        "AllocationId" =: _maaAllocationId
      ]

-- | /See:/ 'modifyAddressAttributeResponse' smart constructor.
data ModifyAddressAttributeResponse = ModifyAddressAttributeResponse'
  { _maarrsAddress ::
      !( Maybe
           AddressAttribute
       ),
    _maarrsResponseStatus ::
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

-- | Creates a value of 'ModifyAddressAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maarrsAddress' - Information about the Elastic IP address.
--
-- * 'maarrsResponseStatus' - -- | The response status code.
modifyAddressAttributeResponse ::
  -- | 'maarrsResponseStatus'
  Int ->
  ModifyAddressAttributeResponse
modifyAddressAttributeResponse pResponseStatus_ =
  ModifyAddressAttributeResponse'
    { _maarrsAddress =
        Nothing,
      _maarrsResponseStatus = pResponseStatus_
    }

-- | Information about the Elastic IP address.
maarrsAddress :: Lens' ModifyAddressAttributeResponse (Maybe AddressAttribute)
maarrsAddress = lens _maarrsAddress (\s a -> s {_maarrsAddress = a})

-- | -- | The response status code.
maarrsResponseStatus :: Lens' ModifyAddressAttributeResponse Int
maarrsResponseStatus = lens _maarrsResponseStatus (\s a -> s {_maarrsResponseStatus = a})

instance NFData ModifyAddressAttributeResponse
