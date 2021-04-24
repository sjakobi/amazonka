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
-- Module      : Network.AWS.EC2.DescribeVPCClassicLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the ClassicLink status of one or more VPCs.
module Network.AWS.EC2.DescribeVPCClassicLink
  ( -- * Creating a Request
    describeVPCClassicLink,
    DescribeVPCClassicLink,

    -- * Request Lenses
    dvclDryRun,
    dvclFilters,
    dvclVPCIds,

    -- * Destructuring the Response
    describeVPCClassicLinkResponse,
    DescribeVPCClassicLinkResponse,

    -- * Response Lenses
    dvclrrsVPCs,
    dvclrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCClassicLink' smart constructor.
data DescribeVPCClassicLink = DescribeVPCClassicLink'
  { _dvclDryRun ::
      !(Maybe Bool),
    _dvclFilters ::
      !(Maybe [Filter]),
    _dvclVPCIds ::
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

-- | Creates a value of 'DescribeVPCClassicLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvclDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvclFilters' - One or more filters.     * @is-classic-link-enabled@ - Whether the VPC is enabled for ClassicLink (@true@ | @false@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
-- * 'dvclVPCIds' - One or more VPCs for which you want to describe the ClassicLink status.
describeVPCClassicLink ::
  DescribeVPCClassicLink
describeVPCClassicLink =
  DescribeVPCClassicLink'
    { _dvclDryRun = Nothing,
      _dvclFilters = Nothing,
      _dvclVPCIds = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvclDryRun :: Lens' DescribeVPCClassicLink (Maybe Bool)
dvclDryRun = lens _dvclDryRun (\s a -> s {_dvclDryRun = a})

-- | One or more filters.     * @is-classic-link-enabled@ - Whether the VPC is enabled for ClassicLink (@true@ | @false@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dvclFilters :: Lens' DescribeVPCClassicLink [Filter]
dvclFilters = lens _dvclFilters (\s a -> s {_dvclFilters = a}) . _Default . _Coerce

-- | One or more VPCs for which you want to describe the ClassicLink status.
dvclVPCIds :: Lens' DescribeVPCClassicLink [Text]
dvclVPCIds = lens _dvclVPCIds (\s a -> s {_dvclVPCIds = a}) . _Default . _Coerce

instance AWSRequest DescribeVPCClassicLink where
  type
    Rs DescribeVPCClassicLink =
      DescribeVPCClassicLinkResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCClassicLinkResponse'
            <$> ( x .@? "vpcSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCClassicLink

instance NFData DescribeVPCClassicLink

instance ToHeaders DescribeVPCClassicLink where
  toHeaders = const mempty

instance ToPath DescribeVPCClassicLink where
  toPath = const "/"

instance ToQuery DescribeVPCClassicLink where
  toQuery DescribeVPCClassicLink' {..} =
    mconcat
      [ "Action"
          =: ("DescribeVpcClassicLink" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _dvclDryRun,
        toQuery (toQueryList "Filter" <$> _dvclFilters),
        toQuery (toQueryList "VpcId" <$> _dvclVPCIds)
      ]

-- | /See:/ 'describeVPCClassicLinkResponse' smart constructor.
data DescribeVPCClassicLinkResponse = DescribeVPCClassicLinkResponse'
  { _dvclrrsVPCs ::
      !( Maybe
           [VPCClassicLink]
       ),
    _dvclrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCClassicLinkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvclrrsVPCs' - The ClassicLink status of one or more VPCs.
--
-- * 'dvclrrsResponseStatus' - -- | The response status code.
describeVPCClassicLinkResponse ::
  -- | 'dvclrrsResponseStatus'
  Int ->
  DescribeVPCClassicLinkResponse
describeVPCClassicLinkResponse pResponseStatus_ =
  DescribeVPCClassicLinkResponse'
    { _dvclrrsVPCs =
        Nothing,
      _dvclrrsResponseStatus = pResponseStatus_
    }

-- | The ClassicLink status of one or more VPCs.
dvclrrsVPCs :: Lens' DescribeVPCClassicLinkResponse [VPCClassicLink]
dvclrrsVPCs = lens _dvclrrsVPCs (\s a -> s {_dvclrrsVPCs = a}) . _Default . _Coerce

-- | -- | The response status code.
dvclrrsResponseStatus :: Lens' DescribeVPCClassicLinkResponse Int
dvclrrsResponseStatus = lens _dvclrrsResponseStatus (\s a -> s {_dvclrrsResponseStatus = a})

instance NFData DescribeVPCClassicLinkResponse
