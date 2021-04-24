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
-- Module      : Network.AWS.EC2.DescribePrincipalIdFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference.
--
--
-- By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.
--
-- The following resource types support longer IDs: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribePrincipalIdFormat
  ( -- * Creating a Request
    describePrincipalIdFormat,
    DescribePrincipalIdFormat,

    -- * Request Lenses
    dpifNextToken,
    dpifDryRun,
    dpifMaxResults,
    dpifResources,

    -- * Destructuring the Response
    describePrincipalIdFormatResponse,
    DescribePrincipalIdFormatResponse,

    -- * Response Lenses
    dpifrrsNextToken,
    dpifrrsPrincipals,
    dpifrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePrincipalIdFormat' smart constructor.
data DescribePrincipalIdFormat = DescribePrincipalIdFormat'
  { _dpifNextToken ::
      !(Maybe Text),
    _dpifDryRun ::
      !(Maybe Bool),
    _dpifMaxResults ::
      !(Maybe Nat),
    _dpifResources ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePrincipalIdFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpifNextToken' - The token to request the next page of results.
--
-- * 'dpifDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dpifMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
--
-- * 'dpifResources' - The type of resource: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@
describePrincipalIdFormat ::
  DescribePrincipalIdFormat
describePrincipalIdFormat =
  DescribePrincipalIdFormat'
    { _dpifNextToken =
        Nothing,
      _dpifDryRun = Nothing,
      _dpifMaxResults = Nothing,
      _dpifResources = Nothing
    }

-- | The token to request the next page of results.
dpifNextToken :: Lens' DescribePrincipalIdFormat (Maybe Text)
dpifNextToken = lens _dpifNextToken (\s a -> s {_dpifNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dpifDryRun :: Lens' DescribePrincipalIdFormat (Maybe Bool)
dpifDryRun = lens _dpifDryRun (\s a -> s {_dpifDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
dpifMaxResults :: Lens' DescribePrincipalIdFormat (Maybe Natural)
dpifMaxResults = lens _dpifMaxResults (\s a -> s {_dpifMaxResults = a}) . mapping _Nat

-- | The type of resource: @bundle@ | @conversion-task@ | @customer-gateway@ | @dhcp-options@ | @elastic-ip-allocation@ | @elastic-ip-association@ | @export-task@ | @flow-log@ | @image@ | @import-task@ | @instance@ | @internet-gateway@ | @network-acl@ | @network-acl-association@ | @network-interface@ | @network-interface-attachment@ | @prefix-list@ | @reservation@ | @route-table@ | @route-table-association@ | @security-group@ | @snapshot@ | @subnet@ | @subnet-cidr-block-association@ | @volume@ | @vpc@ | @vpc-cidr-block-association@ | @vpc-endpoint@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@
dpifResources :: Lens' DescribePrincipalIdFormat [Text]
dpifResources = lens _dpifResources (\s a -> s {_dpifResources = a}) . _Default . _Coerce

instance AWSPager DescribePrincipalIdFormat where
  page rq rs
    | stop (rs ^. dpifrrsNextToken) = Nothing
    | stop (rs ^. dpifrrsPrincipals) = Nothing
    | otherwise =
      Just $ rq & dpifNextToken .~ rs ^. dpifrrsNextToken

instance AWSRequest DescribePrincipalIdFormat where
  type
    Rs DescribePrincipalIdFormat =
      DescribePrincipalIdFormatResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribePrincipalIdFormatResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "principalSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePrincipalIdFormat

instance NFData DescribePrincipalIdFormat

instance ToHeaders DescribePrincipalIdFormat where
  toHeaders = const mempty

instance ToPath DescribePrincipalIdFormat where
  toPath = const "/"

instance ToQuery DescribePrincipalIdFormat where
  toQuery DescribePrincipalIdFormat' {..} =
    mconcat
      [ "Action"
          =: ("DescribePrincipalIdFormat" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dpifNextToken,
        "DryRun" =: _dpifDryRun,
        "MaxResults" =: _dpifMaxResults,
        toQuery (toQueryList "Resource" <$> _dpifResources)
      ]

-- | /See:/ 'describePrincipalIdFormatResponse' smart constructor.
data DescribePrincipalIdFormatResponse = DescribePrincipalIdFormatResponse'
  { _dpifrrsNextToken ::
      !( Maybe
           Text
       ),
    _dpifrrsPrincipals ::
      !( Maybe
           [PrincipalIdFormat]
       ),
    _dpifrrsResponseStatus ::
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

-- | Creates a value of 'DescribePrincipalIdFormatResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpifrrsNextToken' - The token to use to retrieve the next page of results. This value is null when there are no more results to return.
--
-- * 'dpifrrsPrincipals' - Information about the ID format settings for the ARN.
--
-- * 'dpifrrsResponseStatus' - -- | The response status code.
describePrincipalIdFormatResponse ::
  -- | 'dpifrrsResponseStatus'
  Int ->
  DescribePrincipalIdFormatResponse
describePrincipalIdFormatResponse pResponseStatus_ =
  DescribePrincipalIdFormatResponse'
    { _dpifrrsNextToken =
        Nothing,
      _dpifrrsPrincipals = Nothing,
      _dpifrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is null when there are no more results to return.
dpifrrsNextToken :: Lens' DescribePrincipalIdFormatResponse (Maybe Text)
dpifrrsNextToken = lens _dpifrrsNextToken (\s a -> s {_dpifrrsNextToken = a})

-- | Information about the ID format settings for the ARN.
dpifrrsPrincipals :: Lens' DescribePrincipalIdFormatResponse [PrincipalIdFormat]
dpifrrsPrincipals = lens _dpifrrsPrincipals (\s a -> s {_dpifrrsPrincipals = a}) . _Default . _Coerce

-- | -- | The response status code.
dpifrrsResponseStatus :: Lens' DescribePrincipalIdFormatResponse Int
dpifrrsResponseStatus = lens _dpifrrsResponseStatus (\s a -> s {_dpifrrsResponseStatus = a})

instance NFData DescribePrincipalIdFormatResponse
