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
-- Module      : Network.AWS.EC2.DescribeClientVPNAuthorizationRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the authorization rules for a specified Client VPN endpoint.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeClientVPNAuthorizationRules
  ( -- * Creating a Request
    describeClientVPNAuthorizationRules,
    DescribeClientVPNAuthorizationRules,

    -- * Request Lenses
    dcvarNextToken,
    dcvarDryRun,
    dcvarMaxResults,
    dcvarFilters,
    dcvarClientVPNEndpointId,

    -- * Destructuring the Response
    describeClientVPNAuthorizationRulesResponse,
    DescribeClientVPNAuthorizationRulesResponse,

    -- * Response Lenses
    dcvarrrsNextToken,
    dcvarrrsAuthorizationRules,
    dcvarrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClientVPNAuthorizationRules' smart constructor.
data DescribeClientVPNAuthorizationRules = DescribeClientVPNAuthorizationRules'
  { _dcvarNextToken ::
      !( Maybe
           Text
       ),
    _dcvarDryRun ::
      !( Maybe
           Bool
       ),
    _dcvarMaxResults ::
      !( Maybe
           Nat
       ),
    _dcvarFilters ::
      !( Maybe
           [Filter]
       ),
    _dcvarClientVPNEndpointId ::
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

-- | Creates a value of 'DescribeClientVPNAuthorizationRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvarNextToken' - The token to retrieve the next page of results.
--
-- * 'dcvarDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvarMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
--
-- * 'dcvarFilters' - One or more filters. Filter names and values are case-sensitive.     * @description@ - The description of the authorization rule.     * @destination-cidr@ - The CIDR of the network to which the authorization rule applies.     * @group-id@ - The ID of the Active Directory group to which the authorization rule grants access.
--
-- * 'dcvarClientVPNEndpointId' - The ID of the Client VPN endpoint.
describeClientVPNAuthorizationRules ::
  -- | 'dcvarClientVPNEndpointId'
  Text ->
  DescribeClientVPNAuthorizationRules
describeClientVPNAuthorizationRules
  pClientVPNEndpointId_ =
    DescribeClientVPNAuthorizationRules'
      { _dcvarNextToken =
          Nothing,
        _dcvarDryRun = Nothing,
        _dcvarMaxResults = Nothing,
        _dcvarFilters = Nothing,
        _dcvarClientVPNEndpointId =
          pClientVPNEndpointId_
      }

-- | The token to retrieve the next page of results.
dcvarNextToken :: Lens' DescribeClientVPNAuthorizationRules (Maybe Text)
dcvarNextToken = lens _dcvarNextToken (\s a -> s {_dcvarNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvarDryRun :: Lens' DescribeClientVPNAuthorizationRules (Maybe Bool)
dcvarDryRun = lens _dcvarDryRun (\s a -> s {_dcvarDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
dcvarMaxResults :: Lens' DescribeClientVPNAuthorizationRules (Maybe Natural)
dcvarMaxResults = lens _dcvarMaxResults (\s a -> s {_dcvarMaxResults = a}) . mapping _Nat

-- | One or more filters. Filter names and values are case-sensitive.     * @description@ - The description of the authorization rule.     * @destination-cidr@ - The CIDR of the network to which the authorization rule applies.     * @group-id@ - The ID of the Active Directory group to which the authorization rule grants access.
dcvarFilters :: Lens' DescribeClientVPNAuthorizationRules [Filter]
dcvarFilters = lens _dcvarFilters (\s a -> s {_dcvarFilters = a}) . _Default . _Coerce

-- | The ID of the Client VPN endpoint.
dcvarClientVPNEndpointId :: Lens' DescribeClientVPNAuthorizationRules Text
dcvarClientVPNEndpointId = lens _dcvarClientVPNEndpointId (\s a -> s {_dcvarClientVPNEndpointId = a})

instance AWSPager DescribeClientVPNAuthorizationRules where
  page rq rs
    | stop (rs ^. dcvarrrsNextToken) = Nothing
    | stop (rs ^. dcvarrrsAuthorizationRules) = Nothing
    | otherwise =
      Just $ rq & dcvarNextToken .~ rs ^. dcvarrrsNextToken

instance
  AWSRequest
    DescribeClientVPNAuthorizationRules
  where
  type
    Rs DescribeClientVPNAuthorizationRules =
      DescribeClientVPNAuthorizationRulesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeClientVPNAuthorizationRulesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "authorizationRule" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientVPNAuthorizationRules

instance NFData DescribeClientVPNAuthorizationRules

instance
  ToHeaders
    DescribeClientVPNAuthorizationRules
  where
  toHeaders = const mempty

instance ToPath DescribeClientVPNAuthorizationRules where
  toPath = const "/"

instance ToQuery DescribeClientVPNAuthorizationRules where
  toQuery DescribeClientVPNAuthorizationRules' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeClientVpnAuthorizationRules" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcvarNextToken,
        "DryRun" =: _dcvarDryRun,
        "MaxResults" =: _dcvarMaxResults,
        toQuery (toQueryList "Filter" <$> _dcvarFilters),
        "ClientVpnEndpointId" =: _dcvarClientVPNEndpointId
      ]

-- | /See:/ 'describeClientVPNAuthorizationRulesResponse' smart constructor.
data DescribeClientVPNAuthorizationRulesResponse = DescribeClientVPNAuthorizationRulesResponse'
  { _dcvarrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcvarrrsAuthorizationRules ::
      !( Maybe
           [AuthorizationRule]
       ),
    _dcvarrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientVPNAuthorizationRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvarrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcvarrrsAuthorizationRules' - Information about the authorization rules.
--
-- * 'dcvarrrsResponseStatus' - -- | The response status code.
describeClientVPNAuthorizationRulesResponse ::
  -- | 'dcvarrrsResponseStatus'
  Int ->
  DescribeClientVPNAuthorizationRulesResponse
describeClientVPNAuthorizationRulesResponse
  pResponseStatus_ =
    DescribeClientVPNAuthorizationRulesResponse'
      { _dcvarrrsNextToken =
          Nothing,
        _dcvarrrsAuthorizationRules =
          Nothing,
        _dcvarrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcvarrrsNextToken :: Lens' DescribeClientVPNAuthorizationRulesResponse (Maybe Text)
dcvarrrsNextToken = lens _dcvarrrsNextToken (\s a -> s {_dcvarrrsNextToken = a})

-- | Information about the authorization rules.
dcvarrrsAuthorizationRules :: Lens' DescribeClientVPNAuthorizationRulesResponse [AuthorizationRule]
dcvarrrsAuthorizationRules = lens _dcvarrrsAuthorizationRules (\s a -> s {_dcvarrrsAuthorizationRules = a}) . _Default . _Coerce

-- | -- | The response status code.
dcvarrrsResponseStatus :: Lens' DescribeClientVPNAuthorizationRulesResponse Int
dcvarrrsResponseStatus = lens _dcvarrrsResponseStatus (\s a -> s {_dcvarrrsResponseStatus = a})

instance
  NFData
    DescribeClientVPNAuthorizationRulesResponse
