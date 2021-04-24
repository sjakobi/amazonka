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
-- Module      : Network.AWS.EC2.DescribeIdFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the ID format settings for your resources on a per-Region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.
--
--
-- The following resource types support longer IDs: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@ .
--
-- These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the 'ModifyIdFormat' command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant @Describe@ command for the resource type.
module Network.AWS.EC2.DescribeIdFormat
  ( -- * Creating a Request
    describeIdFormat,
    DescribeIdFormat,

    -- * Request Lenses
    difResource,

    -- * Destructuring the Response
    describeIdFormatResponse,
    DescribeIdFormatResponse,

    -- * Response Lenses
    difrrsStatuses,
    difrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeIdFormat' smart constructor.
newtype DescribeIdFormat = DescribeIdFormat'
  { _difResource ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeIdFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difResource' - The type of resource: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@
describeIdFormat ::
  DescribeIdFormat
describeIdFormat =
  DescribeIdFormat' {_difResource = Nothing}

-- | The type of resource: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@
difResource :: Lens' DescribeIdFormat (Maybe Text)
difResource = lens _difResource (\s a -> s {_difResource = a})

instance AWSRequest DescribeIdFormat where
  type Rs DescribeIdFormat = DescribeIdFormatResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeIdFormatResponse'
            <$> ( x .@? "statusSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeIdFormat

instance NFData DescribeIdFormat

instance ToHeaders DescribeIdFormat where
  toHeaders = const mempty

instance ToPath DescribeIdFormat where
  toPath = const "/"

instance ToQuery DescribeIdFormat where
  toQuery DescribeIdFormat' {..} =
    mconcat
      [ "Action" =: ("DescribeIdFormat" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "Resource" =: _difResource
      ]

-- | /See:/ 'describeIdFormatResponse' smart constructor.
data DescribeIdFormatResponse = DescribeIdFormatResponse'
  { _difrrsStatuses ::
      !(Maybe [IdFormat]),
    _difrrsResponseStatus ::
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

-- | Creates a value of 'DescribeIdFormatResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difrrsStatuses' - Information about the ID format for the resource.
--
-- * 'difrrsResponseStatus' - -- | The response status code.
describeIdFormatResponse ::
  -- | 'difrrsResponseStatus'
  Int ->
  DescribeIdFormatResponse
describeIdFormatResponse pResponseStatus_ =
  DescribeIdFormatResponse'
    { _difrrsStatuses =
        Nothing,
      _difrrsResponseStatus = pResponseStatus_
    }

-- | Information about the ID format for the resource.
difrrsStatuses :: Lens' DescribeIdFormatResponse [IdFormat]
difrrsStatuses = lens _difrrsStatuses (\s a -> s {_difrrsStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
difrrsResponseStatus :: Lens' DescribeIdFormatResponse Int
difrrsResponseStatus = lens _difrrsResponseStatus (\s a -> s {_difrrsResponseStatus = a})

instance NFData DescribeIdFormatResponse
