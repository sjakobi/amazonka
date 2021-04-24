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
-- Module      : Network.AWS.EC2.DescribeNetworkInterfacePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the permissions for your network interfaces.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeNetworkInterfacePermissions
  ( -- * Creating a Request
    describeNetworkInterfacePermissions,
    DescribeNetworkInterfacePermissions,

    -- * Request Lenses
    dnipNextToken,
    dnipMaxResults,
    dnipNetworkInterfacePermissionIds,
    dnipFilters,

    -- * Destructuring the Response
    describeNetworkInterfacePermissionsResponse,
    DescribeNetworkInterfacePermissionsResponse,

    -- * Response Lenses
    dniprnrsNextToken,
    dniprnrsNetworkInterfacePermissions,
    dniprnrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeNetworkInterfacePermissions.
--
--
--
-- /See:/ 'describeNetworkInterfacePermissions' smart constructor.
data DescribeNetworkInterfacePermissions = DescribeNetworkInterfacePermissions'
  { _dnipNextToken ::
      !( Maybe
           Text
       ),
    _dnipMaxResults ::
      !( Maybe
           Nat
       ),
    _dnipNetworkInterfacePermissionIds ::
      !( Maybe
           [Text]
       ),
    _dnipFilters ::
      !( Maybe
           [Filter]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeNetworkInterfacePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnipNextToken' - The token to request the next page of results.
--
-- * 'dnipMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. If this parameter is not specified, up to 50 results are returned by default.
--
-- * 'dnipNetworkInterfacePermissionIds' - One or more network interface permission IDs.
--
-- * 'dnipFilters' - One or more filters.     * @network-interface-permission.network-interface-permission-id@ - The ID of the permission.     * @network-interface-permission.network-interface-id@ - The ID of the network interface.     * @network-interface-permission.aws-account-id@ - The AWS account ID.     * @network-interface-permission.aws-service@ - The AWS service.     * @network-interface-permission.permission@ - The type of permission (@INSTANCE-ATTACH@ | @EIP-ASSOCIATE@ ).
describeNetworkInterfacePermissions ::
  DescribeNetworkInterfacePermissions
describeNetworkInterfacePermissions =
  DescribeNetworkInterfacePermissions'
    { _dnipNextToken =
        Nothing,
      _dnipMaxResults = Nothing,
      _dnipNetworkInterfacePermissionIds =
        Nothing,
      _dnipFilters = Nothing
    }

-- | The token to request the next page of results.
dnipNextToken :: Lens' DescribeNetworkInterfacePermissions (Maybe Text)
dnipNextToken = lens _dnipNextToken (\s a -> s {_dnipNextToken = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. If this parameter is not specified, up to 50 results are returned by default.
dnipMaxResults :: Lens' DescribeNetworkInterfacePermissions (Maybe Natural)
dnipMaxResults = lens _dnipMaxResults (\s a -> s {_dnipMaxResults = a}) . mapping _Nat

-- | One or more network interface permission IDs.
dnipNetworkInterfacePermissionIds :: Lens' DescribeNetworkInterfacePermissions [Text]
dnipNetworkInterfacePermissionIds = lens _dnipNetworkInterfacePermissionIds (\s a -> s {_dnipNetworkInterfacePermissionIds = a}) . _Default . _Coerce

-- | One or more filters.     * @network-interface-permission.network-interface-permission-id@ - The ID of the permission.     * @network-interface-permission.network-interface-id@ - The ID of the network interface.     * @network-interface-permission.aws-account-id@ - The AWS account ID.     * @network-interface-permission.aws-service@ - The AWS service.     * @network-interface-permission.permission@ - The type of permission (@INSTANCE-ATTACH@ | @EIP-ASSOCIATE@ ).
dnipFilters :: Lens' DescribeNetworkInterfacePermissions [Filter]
dnipFilters = lens _dnipFilters (\s a -> s {_dnipFilters = a}) . _Default . _Coerce

instance AWSPager DescribeNetworkInterfacePermissions where
  page rq rs
    | stop (rs ^. dniprnrsNextToken) = Nothing
    | stop (rs ^. dniprnrsNetworkInterfacePermissions) =
      Nothing
    | otherwise =
      Just $ rq & dnipNextToken .~ rs ^. dniprnrsNextToken

instance
  AWSRequest
    DescribeNetworkInterfacePermissions
  where
  type
    Rs DescribeNetworkInterfacePermissions =
      DescribeNetworkInterfacePermissionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeNetworkInterfacePermissionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "networkInterfacePermissions" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeNetworkInterfacePermissions

instance NFData DescribeNetworkInterfacePermissions

instance
  ToHeaders
    DescribeNetworkInterfacePermissions
  where
  toHeaders = const mempty

instance ToPath DescribeNetworkInterfacePermissions where
  toPath = const "/"

instance ToQuery DescribeNetworkInterfacePermissions where
  toQuery DescribeNetworkInterfacePermissions' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeNetworkInterfacePermissions" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dnipNextToken,
        "MaxResults" =: _dnipMaxResults,
        toQuery
          ( toQueryList "NetworkInterfacePermissionId"
              <$> _dnipNetworkInterfacePermissionIds
          ),
        toQuery (toQueryList "Filter" <$> _dnipFilters)
      ]

-- | Contains the output for DescribeNetworkInterfacePermissions.
--
--
--
-- /See:/ 'describeNetworkInterfacePermissionsResponse' smart constructor.
data DescribeNetworkInterfacePermissionsResponse = DescribeNetworkInterfacePermissionsResponse'
  { _dniprnrsNextToken ::
      !( Maybe
           Text
       ),
    _dniprnrsNetworkInterfacePermissions ::
      !( Maybe
           [NetworkInterfacePermission]
       ),
    _dniprnrsResponseStatus ::
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

-- | Creates a value of 'DescribeNetworkInterfacePermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dniprnrsNextToken' - The token to use to retrieve the next page of results.
--
-- * 'dniprnrsNetworkInterfacePermissions' - The network interface permissions.
--
-- * 'dniprnrsResponseStatus' - -- | The response status code.
describeNetworkInterfacePermissionsResponse ::
  -- | 'dniprnrsResponseStatus'
  Int ->
  DescribeNetworkInterfacePermissionsResponse
describeNetworkInterfacePermissionsResponse
  pResponseStatus_ =
    DescribeNetworkInterfacePermissionsResponse'
      { _dniprnrsNextToken =
          Nothing,
        _dniprnrsNetworkInterfacePermissions =
          Nothing,
        _dniprnrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results.
dniprnrsNextToken :: Lens' DescribeNetworkInterfacePermissionsResponse (Maybe Text)
dniprnrsNextToken = lens _dniprnrsNextToken (\s a -> s {_dniprnrsNextToken = a})

-- | The network interface permissions.
dniprnrsNetworkInterfacePermissions :: Lens' DescribeNetworkInterfacePermissionsResponse [NetworkInterfacePermission]
dniprnrsNetworkInterfacePermissions = lens _dniprnrsNetworkInterfacePermissions (\s a -> s {_dniprnrsNetworkInterfacePermissions = a}) . _Default . _Coerce

-- | -- | The response status code.
dniprnrsResponseStatus :: Lens' DescribeNetworkInterfacePermissionsResponse Int
dniprnrsResponseStatus = lens _dniprnrsResponseStatus (\s a -> s {_dniprnrsResponseStatus = a})

instance
  NFData
    DescribeNetworkInterfacePermissionsResponse
