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
-- Module      : Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified local gateway virtual interfaces.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeLocalGatewayVirtualInterfaces
  ( -- * Creating a Request
    describeLocalGatewayVirtualInterfaces,
    DescribeLocalGatewayVirtualInterfaces,

    -- * Request Lenses
    dlgviLocalGatewayVirtualInterfaceIds,
    dlgviNextToken,
    dlgviDryRun,
    dlgviMaxResults,
    dlgviFilters,

    -- * Destructuring the Response
    describeLocalGatewayVirtualInterfacesResponse,
    DescribeLocalGatewayVirtualInterfacesResponse,

    -- * Response Lenses
    dlgvirrsNextToken,
    dlgvirrsLocalGatewayVirtualInterfaces,
    dlgvirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLocalGatewayVirtualInterfaces' smart constructor.
data DescribeLocalGatewayVirtualInterfaces = DescribeLocalGatewayVirtualInterfaces'
  { _dlgviLocalGatewayVirtualInterfaceIds ::
      !( Maybe
           [Text]
       ),
    _dlgviNextToken ::
      !( Maybe
           Text
       ),
    _dlgviDryRun ::
      !( Maybe
           Bool
       ),
    _dlgviMaxResults ::
      !( Maybe
           Nat
       ),
    _dlgviFilters ::
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

-- | Creates a value of 'DescribeLocalGatewayVirtualInterfaces' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgviLocalGatewayVirtualInterfaceIds' - The IDs of the virtual interfaces.
--
-- * 'dlgviNextToken' - The token for the next page of results.
--
-- * 'dlgviDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dlgviMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dlgviFilters' - One or more filters.
describeLocalGatewayVirtualInterfaces ::
  DescribeLocalGatewayVirtualInterfaces
describeLocalGatewayVirtualInterfaces =
  DescribeLocalGatewayVirtualInterfaces'
    { _dlgviLocalGatewayVirtualInterfaceIds =
        Nothing,
      _dlgviNextToken = Nothing,
      _dlgviDryRun = Nothing,
      _dlgviMaxResults = Nothing,
      _dlgviFilters = Nothing
    }

-- | The IDs of the virtual interfaces.
dlgviLocalGatewayVirtualInterfaceIds :: Lens' DescribeLocalGatewayVirtualInterfaces [Text]
dlgviLocalGatewayVirtualInterfaceIds = lens _dlgviLocalGatewayVirtualInterfaceIds (\s a -> s {_dlgviLocalGatewayVirtualInterfaceIds = a}) . _Default . _Coerce

-- | The token for the next page of results.
dlgviNextToken :: Lens' DescribeLocalGatewayVirtualInterfaces (Maybe Text)
dlgviNextToken = lens _dlgviNextToken (\s a -> s {_dlgviNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dlgviDryRun :: Lens' DescribeLocalGatewayVirtualInterfaces (Maybe Bool)
dlgviDryRun = lens _dlgviDryRun (\s a -> s {_dlgviDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dlgviMaxResults :: Lens' DescribeLocalGatewayVirtualInterfaces (Maybe Natural)
dlgviMaxResults = lens _dlgviMaxResults (\s a -> s {_dlgviMaxResults = a}) . mapping _Nat

-- | One or more filters.
dlgviFilters :: Lens' DescribeLocalGatewayVirtualInterfaces [Filter]
dlgviFilters = lens _dlgviFilters (\s a -> s {_dlgviFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeLocalGatewayVirtualInterfaces
  where
  page rq rs
    | stop (rs ^. dlgvirrsNextToken) = Nothing
    | stop (rs ^. dlgvirrsLocalGatewayVirtualInterfaces) =
      Nothing
    | otherwise =
      Just $ rq & dlgviNextToken .~ rs ^. dlgvirrsNextToken

instance
  AWSRequest
    DescribeLocalGatewayVirtualInterfaces
  where
  type
    Rs DescribeLocalGatewayVirtualInterfaces =
      DescribeLocalGatewayVirtualInterfacesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeLocalGatewayVirtualInterfacesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "localGatewayVirtualInterfaceSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeLocalGatewayVirtualInterfaces

instance NFData DescribeLocalGatewayVirtualInterfaces

instance
  ToHeaders
    DescribeLocalGatewayVirtualInterfaces
  where
  toHeaders = const mempty

instance ToPath DescribeLocalGatewayVirtualInterfaces where
  toPath = const "/"

instance
  ToQuery
    DescribeLocalGatewayVirtualInterfaces
  where
  toQuery DescribeLocalGatewayVirtualInterfaces' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeLocalGatewayVirtualInterfaces" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "LocalGatewayVirtualInterfaceId"
              <$> _dlgviLocalGatewayVirtualInterfaceIds
          ),
        "NextToken" =: _dlgviNextToken,
        "DryRun" =: _dlgviDryRun,
        "MaxResults" =: _dlgviMaxResults,
        toQuery (toQueryList "Filter" <$> _dlgviFilters)
      ]

-- | /See:/ 'describeLocalGatewayVirtualInterfacesResponse' smart constructor.
data DescribeLocalGatewayVirtualInterfacesResponse = DescribeLocalGatewayVirtualInterfacesResponse'
  { _dlgvirrsNextToken ::
      !( Maybe
           Text
       ),
    _dlgvirrsLocalGatewayVirtualInterfaces ::
      !( Maybe
           [LocalGatewayVirtualInterface]
       ),
    _dlgvirrsResponseStatus ::
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

-- | Creates a value of 'DescribeLocalGatewayVirtualInterfacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlgvirrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dlgvirrsLocalGatewayVirtualInterfaces' - Information about the virtual interfaces.
--
-- * 'dlgvirrsResponseStatus' - -- | The response status code.
describeLocalGatewayVirtualInterfacesResponse ::
  -- | 'dlgvirrsResponseStatus'
  Int ->
  DescribeLocalGatewayVirtualInterfacesResponse
describeLocalGatewayVirtualInterfacesResponse
  pResponseStatus_ =
    DescribeLocalGatewayVirtualInterfacesResponse'
      { _dlgvirrsNextToken =
          Nothing,
        _dlgvirrsLocalGatewayVirtualInterfaces =
          Nothing,
        _dlgvirrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dlgvirrsNextToken :: Lens' DescribeLocalGatewayVirtualInterfacesResponse (Maybe Text)
dlgvirrsNextToken = lens _dlgvirrsNextToken (\s a -> s {_dlgvirrsNextToken = a})

-- | Information about the virtual interfaces.
dlgvirrsLocalGatewayVirtualInterfaces :: Lens' DescribeLocalGatewayVirtualInterfacesResponse [LocalGatewayVirtualInterface]
dlgvirrsLocalGatewayVirtualInterfaces = lens _dlgvirrsLocalGatewayVirtualInterfaces (\s a -> s {_dlgvirrsLocalGatewayVirtualInterfaces = a}) . _Default . _Coerce

-- | -- | The response status code.
dlgvirrsResponseStatus :: Lens' DescribeLocalGatewayVirtualInterfacesResponse Int
dlgvirrsResponseStatus = lens _dlgvirrsResponseStatus (\s a -> s {_dlgvirrsResponseStatus = a})

instance
  NFData
    DescribeLocalGatewayVirtualInterfacesResponse
