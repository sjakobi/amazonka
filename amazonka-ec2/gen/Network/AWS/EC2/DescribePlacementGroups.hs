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
-- Module      : Network.AWS.EC2.DescribePlacementGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified placement groups or all of your placement groups. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html Placement groups> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.DescribePlacementGroups
  ( -- * Creating a Request
    describePlacementGroups,
    DescribePlacementGroups,

    -- * Request Lenses
    dpgGroupIds,
    dpgDryRun,
    dpgGroupNames,
    dpgFilters,

    -- * Destructuring the Response
    describePlacementGroupsResponse,
    DescribePlacementGroupsResponse,

    -- * Response Lenses
    dpgrrsPlacementGroups,
    dpgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describePlacementGroups' smart constructor.
data DescribePlacementGroups = DescribePlacementGroups'
  { _dpgGroupIds ::
      !(Maybe [Text]),
    _dpgDryRun ::
      !(Maybe Bool),
    _dpgGroupNames ::
      !(Maybe [Text]),
    _dpgFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribePlacementGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgGroupIds' - The IDs of the placement groups.
--
-- * 'dpgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dpgGroupNames' - The names of the placement groups. Default: Describes all your placement groups, or only those otherwise specified.
--
-- * 'dpgFilters' - The filters.     * @group-name@ - The name of the placement group.     * @state@ - The state of the placement group (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @strategy@ - The strategy of the placement group (@cluster@ | @spread@ | @partition@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
describePlacementGroups ::
  DescribePlacementGroups
describePlacementGroups =
  DescribePlacementGroups'
    { _dpgGroupIds = Nothing,
      _dpgDryRun = Nothing,
      _dpgGroupNames = Nothing,
      _dpgFilters = Nothing
    }

-- | The IDs of the placement groups.
dpgGroupIds :: Lens' DescribePlacementGroups [Text]
dpgGroupIds = lens _dpgGroupIds (\s a -> s {_dpgGroupIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dpgDryRun :: Lens' DescribePlacementGroups (Maybe Bool)
dpgDryRun = lens _dpgDryRun (\s a -> s {_dpgDryRun = a})

-- | The names of the placement groups. Default: Describes all your placement groups, or only those otherwise specified.
dpgGroupNames :: Lens' DescribePlacementGroups [Text]
dpgGroupNames = lens _dpgGroupNames (\s a -> s {_dpgGroupNames = a}) . _Default . _Coerce

-- | The filters.     * @group-name@ - The name of the placement group.     * @state@ - The state of the placement group (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @strategy@ - The strategy of the placement group (@cluster@ | @spread@ | @partition@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
dpgFilters :: Lens' DescribePlacementGroups [Filter]
dpgFilters = lens _dpgFilters (\s a -> s {_dpgFilters = a}) . _Default . _Coerce

instance AWSRequest DescribePlacementGroups where
  type
    Rs DescribePlacementGroups =
      DescribePlacementGroupsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribePlacementGroupsResponse'
            <$> ( x .@? "placementGroupSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePlacementGroups

instance NFData DescribePlacementGroups

instance ToHeaders DescribePlacementGroups where
  toHeaders = const mempty

instance ToPath DescribePlacementGroups where
  toPath = const "/"

instance ToQuery DescribePlacementGroups where
  toQuery DescribePlacementGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribePlacementGroups" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery (toQueryList "GroupId" <$> _dpgGroupIds),
        "DryRun" =: _dpgDryRun,
        toQuery (toQueryList "GroupName" <$> _dpgGroupNames),
        toQuery (toQueryList "Filter" <$> _dpgFilters)
      ]

-- | /See:/ 'describePlacementGroupsResponse' smart constructor.
data DescribePlacementGroupsResponse = DescribePlacementGroupsResponse'
  { _dpgrrsPlacementGroups ::
      !( Maybe
           [PlacementGroup]
       ),
    _dpgrrsResponseStatus ::
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

-- | Creates a value of 'DescribePlacementGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpgrrsPlacementGroups' - Information about the placement groups.
--
-- * 'dpgrrsResponseStatus' - -- | The response status code.
describePlacementGroupsResponse ::
  -- | 'dpgrrsResponseStatus'
  Int ->
  DescribePlacementGroupsResponse
describePlacementGroupsResponse pResponseStatus_ =
  DescribePlacementGroupsResponse'
    { _dpgrrsPlacementGroups =
        Nothing,
      _dpgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the placement groups.
dpgrrsPlacementGroups :: Lens' DescribePlacementGroupsResponse [PlacementGroup]
dpgrrsPlacementGroups = lens _dpgrrsPlacementGroups (\s a -> s {_dpgrrsPlacementGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
dpgrrsResponseStatus :: Lens' DescribePlacementGroupsResponse Int
dpgrrsResponseStatus = lens _dpgrrsResponseStatus (\s a -> s {_dpgrrsResponseStatus = a})

instance NFData DescribePlacementGroupsResponse
