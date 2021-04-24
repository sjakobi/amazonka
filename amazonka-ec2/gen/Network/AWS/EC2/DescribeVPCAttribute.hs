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
-- Module      : Network.AWS.EC2.DescribeVPCAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.
module Network.AWS.EC2.DescribeVPCAttribute
  ( -- * Creating a Request
    describeVPCAttribute,
    DescribeVPCAttribute,

    -- * Request Lenses
    dvaDryRun,
    dvaAttribute,
    dvaVPCId,

    -- * Destructuring the Response
    describeVPCAttributeResponse,
    DescribeVPCAttributeResponse,

    -- * Response Lenses
    dvarrsEnableDNSSupport,
    dvarrsEnableDNSHostnames,
    dvarrsVPCId,
    dvarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCAttribute' smart constructor.
data DescribeVPCAttribute = DescribeVPCAttribute'
  { _dvaDryRun ::
      !(Maybe Bool),
    _dvaAttribute ::
      !VPCAttributeName,
    _dvaVPCId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVPCAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvaAttribute' - The VPC attribute.
--
-- * 'dvaVPCId' - The ID of the VPC.
describeVPCAttribute ::
  -- | 'dvaAttribute'
  VPCAttributeName ->
  -- | 'dvaVPCId'
  Text ->
  DescribeVPCAttribute
describeVPCAttribute pAttribute_ pVPCId_ =
  DescribeVPCAttribute'
    { _dvaDryRun = Nothing,
      _dvaAttribute = pAttribute_,
      _dvaVPCId = pVPCId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvaDryRun :: Lens' DescribeVPCAttribute (Maybe Bool)
dvaDryRun = lens _dvaDryRun (\s a -> s {_dvaDryRun = a})

-- | The VPC attribute.
dvaAttribute :: Lens' DescribeVPCAttribute VPCAttributeName
dvaAttribute = lens _dvaAttribute (\s a -> s {_dvaAttribute = a})

-- | The ID of the VPC.
dvaVPCId :: Lens' DescribeVPCAttribute Text
dvaVPCId = lens _dvaVPCId (\s a -> s {_dvaVPCId = a})

instance AWSRequest DescribeVPCAttribute where
  type
    Rs DescribeVPCAttribute =
      DescribeVPCAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCAttributeResponse'
            <$> (x .@? "enableDnsSupport")
            <*> (x .@? "enableDnsHostnames")
            <*> (x .@? "vpcId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCAttribute

instance NFData DescribeVPCAttribute

instance ToHeaders DescribeVPCAttribute where
  toHeaders = const mempty

instance ToPath DescribeVPCAttribute where
  toPath = const "/"

instance ToQuery DescribeVPCAttribute where
  toQuery DescribeVPCAttribute' {..} =
    mconcat
      [ "Action" =: ("DescribeVpcAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dvaDryRun,
        "Attribute" =: _dvaAttribute,
        "VpcId" =: _dvaVPCId
      ]

-- | /See:/ 'describeVPCAttributeResponse' smart constructor.
data DescribeVPCAttributeResponse = DescribeVPCAttributeResponse'
  { _dvarrsEnableDNSSupport ::
      !( Maybe
           AttributeBooleanValue
       ),
    _dvarrsEnableDNSHostnames ::
      !( Maybe
           AttributeBooleanValue
       ),
    _dvarrsVPCId ::
      !(Maybe Text),
    _dvarrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvarrsEnableDNSSupport' - Indicates whether DNS resolution is enabled for the VPC. If this attribute is @true@ , the Amazon DNS server resolves DNS hostnames for your instances to their corresponding IP addresses; otherwise, it does not.
--
-- * 'dvarrsEnableDNSHostnames' - Indicates whether the instances launched in the VPC get DNS hostnames. If this attribute is @true@ , instances in the VPC get DNS hostnames; otherwise, they do not.
--
-- * 'dvarrsVPCId' - The ID of the VPC.
--
-- * 'dvarrsResponseStatus' - -- | The response status code.
describeVPCAttributeResponse ::
  -- | 'dvarrsResponseStatus'
  Int ->
  DescribeVPCAttributeResponse
describeVPCAttributeResponse pResponseStatus_ =
  DescribeVPCAttributeResponse'
    { _dvarrsEnableDNSSupport =
        Nothing,
      _dvarrsEnableDNSHostnames = Nothing,
      _dvarrsVPCId = Nothing,
      _dvarrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether DNS resolution is enabled for the VPC. If this attribute is @true@ , the Amazon DNS server resolves DNS hostnames for your instances to their corresponding IP addresses; otherwise, it does not.
dvarrsEnableDNSSupport :: Lens' DescribeVPCAttributeResponse (Maybe AttributeBooleanValue)
dvarrsEnableDNSSupport = lens _dvarrsEnableDNSSupport (\s a -> s {_dvarrsEnableDNSSupport = a})

-- | Indicates whether the instances launched in the VPC get DNS hostnames. If this attribute is @true@ , instances in the VPC get DNS hostnames; otherwise, they do not.
dvarrsEnableDNSHostnames :: Lens' DescribeVPCAttributeResponse (Maybe AttributeBooleanValue)
dvarrsEnableDNSHostnames = lens _dvarrsEnableDNSHostnames (\s a -> s {_dvarrsEnableDNSHostnames = a})

-- | The ID of the VPC.
dvarrsVPCId :: Lens' DescribeVPCAttributeResponse (Maybe Text)
dvarrsVPCId = lens _dvarrsVPCId (\s a -> s {_dvarrsVPCId = a})

-- | -- | The response status code.
dvarrsResponseStatus :: Lens' DescribeVPCAttributeResponse Int
dvarrsResponseStatus = lens _dvarrsResponseStatus (\s a -> s {_dvarrsResponseStatus = a})

instance NFData DescribeVPCAttributeResponse
