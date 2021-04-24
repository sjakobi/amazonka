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
-- Module      : Network.AWS.EC2.DescribeRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Regions that are enabled for your account, or all Regions.
--
--
-- For a list of the Regions supported by Amazon EC2, see <https://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region Regions and Endpoints> .
--
-- For information about enabling and disabling Regions for your account, see <https://docs.aws.amazon.com/general/latest/gr/rande-manage.html Managing AWS Regions> in the /AWS General Reference/ .
module Network.AWS.EC2.DescribeRegions
  ( -- * Creating a Request
    describeRegions,
    DescribeRegions,

    -- * Request Lenses
    drDryRun,
    drRegionNames,
    drFilters,
    drAllRegions,

    -- * Destructuring the Response
    describeRegionsResponse,
    DescribeRegionsResponse,

    -- * Response Lenses
    drrrsRegions,
    drrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeRegions' smart constructor.
data DescribeRegions = DescribeRegions'
  { _drDryRun ::
      !(Maybe Bool),
    _drRegionNames :: !(Maybe [Text]),
    _drFilters :: !(Maybe [Filter]),
    _drAllRegions :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeRegions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'drRegionNames' - The names of the Regions. You can specify any Regions, whether they are enabled and disabled for your account.
--
-- * 'drFilters' - The filters.     * @endpoint@ - The endpoint of the Region (for example, @ec2.us-east-1.amazonaws.com@ ).     * @opt-in-status@ - The opt-in status of the Region (@opt-in-not-required@ | @opted-in@ | @not-opted-in@ ).     * @region-name@ - The name of the Region (for example, @us-east-1@ ).
--
-- * 'drAllRegions' - Indicates whether to display all Regions, including Regions that are disabled for your account.
describeRegions ::
  DescribeRegions
describeRegions =
  DescribeRegions'
    { _drDryRun = Nothing,
      _drRegionNames = Nothing,
      _drFilters = Nothing,
      _drAllRegions = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
drDryRun :: Lens' DescribeRegions (Maybe Bool)
drDryRun = lens _drDryRun (\s a -> s {_drDryRun = a})

-- | The names of the Regions. You can specify any Regions, whether they are enabled and disabled for your account.
drRegionNames :: Lens' DescribeRegions [Text]
drRegionNames = lens _drRegionNames (\s a -> s {_drRegionNames = a}) . _Default . _Coerce

-- | The filters.     * @endpoint@ - The endpoint of the Region (for example, @ec2.us-east-1.amazonaws.com@ ).     * @opt-in-status@ - The opt-in status of the Region (@opt-in-not-required@ | @opted-in@ | @not-opted-in@ ).     * @region-name@ - The name of the Region (for example, @us-east-1@ ).
drFilters :: Lens' DescribeRegions [Filter]
drFilters = lens _drFilters (\s a -> s {_drFilters = a}) . _Default . _Coerce

-- | Indicates whether to display all Regions, including Regions that are disabled for your account.
drAllRegions :: Lens' DescribeRegions (Maybe Bool)
drAllRegions = lens _drAllRegions (\s a -> s {_drAllRegions = a})

instance AWSRequest DescribeRegions where
  type Rs DescribeRegions = DescribeRegionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeRegionsResponse'
            <$> ( x .@? "regionInfo" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeRegions

instance NFData DescribeRegions

instance ToHeaders DescribeRegions where
  toHeaders = const mempty

instance ToPath DescribeRegions where
  toPath = const "/"

instance ToQuery DescribeRegions where
  toQuery DescribeRegions' {..} =
    mconcat
      [ "Action" =: ("DescribeRegions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _drDryRun,
        toQuery
          (toQueryList "RegionName" <$> _drRegionNames),
        toQuery (toQueryList "Filter" <$> _drFilters),
        "AllRegions" =: _drAllRegions
      ]

-- | /See:/ 'describeRegionsResponse' smart constructor.
data DescribeRegionsResponse = DescribeRegionsResponse'
  { _drrrsRegions ::
      !(Maybe [RegionInfo]),
    _drrrsResponseStatus ::
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

-- | Creates a value of 'DescribeRegionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsRegions' - Information about the Regions.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeRegionsResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeRegionsResponse
describeRegionsResponse pResponseStatus_ =
  DescribeRegionsResponse'
    { _drrrsRegions = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | Information about the Regions.
drrrsRegions :: Lens' DescribeRegionsResponse [RegionInfo]
drrrsRegions = lens _drrrsRegions (\s a -> s {_drrrsRegions = a}) . _Default . _Coerce

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeRegionsResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeRegionsResponse
