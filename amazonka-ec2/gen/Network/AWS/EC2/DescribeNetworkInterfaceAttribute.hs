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
-- Module      : Network.AWS.EC2.DescribeNetworkInterfaceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a network interface attribute. You can specify only one attribute at a time.
module Network.AWS.EC2.DescribeNetworkInterfaceAttribute
  ( -- * Creating a Request
    describeNetworkInterfaceAttribute,
    DescribeNetworkInterfaceAttribute,

    -- * Request Lenses
    dniaDryRun,
    dniaAttribute,
    dniaNetworkInterfaceId,

    -- * Destructuring the Response
    describeNetworkInterfaceAttributeResponse,
    DescribeNetworkInterfaceAttributeResponse,

    -- * Response Lenses
    dniarrsGroups,
    dniarrsAttachment,
    dniarrsSourceDestCheck,
    dniarrsNetworkInterfaceId,
    dniarrsDescription,
    dniarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeNetworkInterfaceAttribute.
--
--
--
-- /See:/ 'describeNetworkInterfaceAttribute' smart constructor.
data DescribeNetworkInterfaceAttribute = DescribeNetworkInterfaceAttribute'
  { _dniaDryRun ::
      !( Maybe
           Bool
       ),
    _dniaAttribute ::
      !( Maybe
           NetworkInterfaceAttribute
       ),
    _dniaNetworkInterfaceId ::
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

-- | Creates a value of 'DescribeNetworkInterfaceAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dniaAttribute' - The attribute of the network interface. This parameter is required.
--
-- * 'dniaNetworkInterfaceId' - The ID of the network interface.
describeNetworkInterfaceAttribute ::
  -- | 'dniaNetworkInterfaceId'
  Text ->
  DescribeNetworkInterfaceAttribute
describeNetworkInterfaceAttribute
  pNetworkInterfaceId_ =
    DescribeNetworkInterfaceAttribute'
      { _dniaDryRun =
          Nothing,
        _dniaAttribute = Nothing,
        _dniaNetworkInterfaceId =
          pNetworkInterfaceId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dniaDryRun :: Lens' DescribeNetworkInterfaceAttribute (Maybe Bool)
dniaDryRun = lens _dniaDryRun (\s a -> s {_dniaDryRun = a})

-- | The attribute of the network interface. This parameter is required.
dniaAttribute :: Lens' DescribeNetworkInterfaceAttribute (Maybe NetworkInterfaceAttribute)
dniaAttribute = lens _dniaAttribute (\s a -> s {_dniaAttribute = a})

-- | The ID of the network interface.
dniaNetworkInterfaceId :: Lens' DescribeNetworkInterfaceAttribute Text
dniaNetworkInterfaceId = lens _dniaNetworkInterfaceId (\s a -> s {_dniaNetworkInterfaceId = a})

instance AWSRequest DescribeNetworkInterfaceAttribute where
  type
    Rs DescribeNetworkInterfaceAttribute =
      DescribeNetworkInterfaceAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeNetworkInterfaceAttributeResponse'
            <$> ( x .@? "groupSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "attachment")
            <*> (x .@? "sourceDestCheck")
            <*> (x .@? "networkInterfaceId")
            <*> (x .@? "description")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNetworkInterfaceAttribute

instance NFData DescribeNetworkInterfaceAttribute

instance ToHeaders DescribeNetworkInterfaceAttribute where
  toHeaders = const mempty

instance ToPath DescribeNetworkInterfaceAttribute where
  toPath = const "/"

instance ToQuery DescribeNetworkInterfaceAttribute where
  toQuery DescribeNetworkInterfaceAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeNetworkInterfaceAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dniaDryRun,
        "Attribute" =: _dniaAttribute,
        "NetworkInterfaceId" =: _dniaNetworkInterfaceId
      ]

-- | Contains the output of DescribeNetworkInterfaceAttribute.
--
--
--
-- /See:/ 'describeNetworkInterfaceAttributeResponse' smart constructor.
data DescribeNetworkInterfaceAttributeResponse = DescribeNetworkInterfaceAttributeResponse'
  { _dniarrsGroups ::
      !( Maybe
           [GroupIdentifier]
       ),
    _dniarrsAttachment ::
      !( Maybe
           NetworkInterfaceAttachment
       ),
    _dniarrsSourceDestCheck ::
      !( Maybe
           AttributeBooleanValue
       ),
    _dniarrsNetworkInterfaceId ::
      !( Maybe
           Text
       ),
    _dniarrsDescription ::
      !( Maybe
           AttributeValue
       ),
    _dniarrsResponseStatus ::
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

-- | Creates a value of 'DescribeNetworkInterfaceAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniarrsGroups' - The security groups associated with the network interface.
--
-- * 'dniarrsAttachment' - The attachment (if any) of the network interface.
--
-- * 'dniarrsSourceDestCheck' - Indicates whether source/destination checking is enabled.
--
-- * 'dniarrsNetworkInterfaceId' - The ID of the network interface.
--
-- * 'dniarrsDescription' - The description of the network interface.
--
-- * 'dniarrsResponseStatus' - -- | The response status code.
describeNetworkInterfaceAttributeResponse ::
  -- | 'dniarrsResponseStatus'
  Int ->
  DescribeNetworkInterfaceAttributeResponse
describeNetworkInterfaceAttributeResponse
  pResponseStatus_ =
    DescribeNetworkInterfaceAttributeResponse'
      { _dniarrsGroups =
          Nothing,
        _dniarrsAttachment = Nothing,
        _dniarrsSourceDestCheck =
          Nothing,
        _dniarrsNetworkInterfaceId =
          Nothing,
        _dniarrsDescription = Nothing,
        _dniarrsResponseStatus =
          pResponseStatus_
      }

-- | The security groups associated with the network interface.
dniarrsGroups :: Lens' DescribeNetworkInterfaceAttributeResponse [GroupIdentifier]
dniarrsGroups = lens _dniarrsGroups (\s a -> s {_dniarrsGroups = a}) . _Default . _Coerce

-- | The attachment (if any) of the network interface.
dniarrsAttachment :: Lens' DescribeNetworkInterfaceAttributeResponse (Maybe NetworkInterfaceAttachment)
dniarrsAttachment = lens _dniarrsAttachment (\s a -> s {_dniarrsAttachment = a})

-- | Indicates whether source/destination checking is enabled.
dniarrsSourceDestCheck :: Lens' DescribeNetworkInterfaceAttributeResponse (Maybe AttributeBooleanValue)
dniarrsSourceDestCheck = lens _dniarrsSourceDestCheck (\s a -> s {_dniarrsSourceDestCheck = a})

-- | The ID of the network interface.
dniarrsNetworkInterfaceId :: Lens' DescribeNetworkInterfaceAttributeResponse (Maybe Text)
dniarrsNetworkInterfaceId = lens _dniarrsNetworkInterfaceId (\s a -> s {_dniarrsNetworkInterfaceId = a})

-- | The description of the network interface.
dniarrsDescription :: Lens' DescribeNetworkInterfaceAttributeResponse (Maybe AttributeValue)
dniarrsDescription = lens _dniarrsDescription (\s a -> s {_dniarrsDescription = a})

-- | -- | The response status code.
dniarrsResponseStatus :: Lens' DescribeNetworkInterfaceAttributeResponse Int
dniarrsResponseStatus = lens _dniarrsResponseStatus (\s a -> s {_dniarrsResponseStatus = a})

instance
  NFData
    DescribeNetworkInterfaceAttributeResponse
