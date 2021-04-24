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
-- Module      : Network.AWS.EC2.DescribeDHCPOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your DHCP options sets.
--
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html DHCP Options Sets> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeDHCPOptions
  ( -- * Creating a Request
    describeDHCPOptions,
    DescribeDHCPOptions,

    -- * Request Lenses
    ddhcpoNextToken,
    ddhcpoDHCPOptionsIds,
    ddhcpoDryRun,
    ddhcpoMaxResults,
    ddhcpoFilters,

    -- * Destructuring the Response
    describeDHCPOptionsResponse,
    DescribeDHCPOptionsResponse,

    -- * Response Lenses
    ddorrsNextToken,
    ddorrsDHCPOptions,
    ddorrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDHCPOptions' smart constructor.
data DescribeDHCPOptions = DescribeDHCPOptions'
  { _ddhcpoNextToken ::
      !(Maybe Text),
    _ddhcpoDHCPOptionsIds ::
      !(Maybe [Text]),
    _ddhcpoDryRun :: !(Maybe Bool),
    _ddhcpoMaxResults ::
      !(Maybe Nat),
    _ddhcpoFilters ::
      !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeDHCPOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddhcpoNextToken' - The token for the next page of results.
--
-- * 'ddhcpoDHCPOptionsIds' - The IDs of one or more DHCP options sets. Default: Describes all your DHCP options sets.
--
-- * 'ddhcpoDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ddhcpoMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'ddhcpoFilters' - One or more filters.     * @dhcp-options-id@ - The ID of a DHCP options set.     * @key@ - The key for one of the options (for example, @domain-name@ ).     * @value@ - The value for one of the options.     * @owner-id@ - The ID of the AWS account that owns the DHCP options set.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeDHCPOptions ::
  DescribeDHCPOptions
describeDHCPOptions =
  DescribeDHCPOptions'
    { _ddhcpoNextToken = Nothing,
      _ddhcpoDHCPOptionsIds = Nothing,
      _ddhcpoDryRun = Nothing,
      _ddhcpoMaxResults = Nothing,
      _ddhcpoFilters = Nothing
    }

-- | The token for the next page of results.
ddhcpoNextToken :: Lens' DescribeDHCPOptions (Maybe Text)
ddhcpoNextToken = lens _ddhcpoNextToken (\s a -> s {_ddhcpoNextToken = a})

-- | The IDs of one or more DHCP options sets. Default: Describes all your DHCP options sets.
ddhcpoDHCPOptionsIds :: Lens' DescribeDHCPOptions [Text]
ddhcpoDHCPOptionsIds = lens _ddhcpoDHCPOptionsIds (\s a -> s {_ddhcpoDHCPOptionsIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ddhcpoDryRun :: Lens' DescribeDHCPOptions (Maybe Bool)
ddhcpoDryRun = lens _ddhcpoDryRun (\s a -> s {_ddhcpoDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
ddhcpoMaxResults :: Lens' DescribeDHCPOptions (Maybe Natural)
ddhcpoMaxResults = lens _ddhcpoMaxResults (\s a -> s {_ddhcpoMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @dhcp-options-id@ - The ID of a DHCP options set.     * @key@ - The key for one of the options (for example, @domain-name@ ).     * @value@ - The value for one of the options.     * @owner-id@ - The ID of the AWS account that owns the DHCP options set.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
ddhcpoFilters :: Lens' DescribeDHCPOptions [Filter]
ddhcpoFilters = lens _ddhcpoFilters (\s a -> s {_ddhcpoFilters = a}) . _Default . _Coerce

instance AWSPager DescribeDHCPOptions where
  page rq rs
    | stop (rs ^. ddorrsNextToken) = Nothing
    | stop (rs ^. ddorrsDHCPOptions) = Nothing
    | otherwise =
      Just $ rq & ddhcpoNextToken .~ rs ^. ddorrsNextToken

instance AWSRequest DescribeDHCPOptions where
  type
    Rs DescribeDHCPOptions =
      DescribeDHCPOptionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeDHCPOptionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "dhcpOptionsSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDHCPOptions

instance NFData DescribeDHCPOptions

instance ToHeaders DescribeDHCPOptions where
  toHeaders = const mempty

instance ToPath DescribeDHCPOptions where
  toPath = const "/"

instance ToQuery DescribeDHCPOptions where
  toQuery DescribeDHCPOptions' {..} =
    mconcat
      [ "Action" =: ("DescribeDhcpOptions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _ddhcpoNextToken,
        toQuery
          ( toQueryList "DhcpOptionsId"
              <$> _ddhcpoDHCPOptionsIds
          ),
        "DryRun" =: _ddhcpoDryRun,
        "MaxResults" =: _ddhcpoMaxResults,
        toQuery (toQueryList "Filter" <$> _ddhcpoFilters)
      ]

-- | /See:/ 'describeDHCPOptionsResponse' smart constructor.
data DescribeDHCPOptionsResponse = DescribeDHCPOptionsResponse'
  { _ddorrsNextToken ::
      !(Maybe Text),
    _ddorrsDHCPOptions ::
      !( Maybe
           [DHCPOptions]
       ),
    _ddorrsResponseStatus ::
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

-- | Creates a value of 'DescribeDHCPOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddorrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'ddorrsDHCPOptions' - Information about one or more DHCP options sets.
--
-- * 'ddorrsResponseStatus' - -- | The response status code.
describeDHCPOptionsResponse ::
  -- | 'ddorrsResponseStatus'
  Int ->
  DescribeDHCPOptionsResponse
describeDHCPOptionsResponse pResponseStatus_ =
  DescribeDHCPOptionsResponse'
    { _ddorrsNextToken =
        Nothing,
      _ddorrsDHCPOptions = Nothing,
      _ddorrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
ddorrsNextToken :: Lens' DescribeDHCPOptionsResponse (Maybe Text)
ddorrsNextToken = lens _ddorrsNextToken (\s a -> s {_ddorrsNextToken = a})

-- | Information about one or more DHCP options sets.
ddorrsDHCPOptions :: Lens' DescribeDHCPOptionsResponse [DHCPOptions]
ddorrsDHCPOptions = lens _ddorrsDHCPOptions (\s a -> s {_ddorrsDHCPOptions = a}) . _Default . _Coerce

-- | -- | The response status code.
ddorrsResponseStatus :: Lens' DescribeDHCPOptionsResponse Int
ddorrsResponseStatus = lens _ddorrsResponseStatus (\s a -> s {_ddorrsResponseStatus = a})

instance NFData DescribeDHCPOptionsResponse
