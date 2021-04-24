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
-- Module      : Network.AWS.EC2.DescribeReservedInstancesListings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.
--
--
-- The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.
--
-- As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.
--
-- As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.
--
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html Reserved Instance Marketplace> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.DescribeReservedInstancesListings
  ( -- * Creating a Request
    describeReservedInstancesListings,
    DescribeReservedInstancesListings,

    -- * Request Lenses
    drilReservedInstancesId,
    drilReservedInstancesListingId,
    drilFilters,

    -- * Destructuring the Response
    describeReservedInstancesListingsResponse,
    DescribeReservedInstancesListingsResponse,

    -- * Response Lenses
    drilrrsReservedInstancesListings,
    drilrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeReservedInstancesListings.
--
--
--
-- /See:/ 'describeReservedInstancesListings' smart constructor.
data DescribeReservedInstancesListings = DescribeReservedInstancesListings'
  { _drilReservedInstancesId ::
      !( Maybe
           Text
       ),
    _drilReservedInstancesListingId ::
      !( Maybe
           Text
       ),
    _drilFilters ::
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

-- | Creates a value of 'DescribeReservedInstancesListings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drilReservedInstancesId' - One or more Reserved Instance IDs.
--
-- * 'drilReservedInstancesListingId' - One or more Reserved Instance listing IDs.
--
-- * 'drilFilters' - One or more filters.     * @reserved-instances-id@ - The ID of the Reserved Instances.     * @reserved-instances-listing-id@ - The ID of the Reserved Instances listing.     * @status@ - The status of the Reserved Instance listing (@pending@ | @active@ | @cancelled@ | @closed@ ).     * @status-message@ - The reason for the status.
describeReservedInstancesListings ::
  DescribeReservedInstancesListings
describeReservedInstancesListings =
  DescribeReservedInstancesListings'
    { _drilReservedInstancesId =
        Nothing,
      _drilReservedInstancesListingId =
        Nothing,
      _drilFilters = Nothing
    }

-- | One or more Reserved Instance IDs.
drilReservedInstancesId :: Lens' DescribeReservedInstancesListings (Maybe Text)
drilReservedInstancesId = lens _drilReservedInstancesId (\s a -> s {_drilReservedInstancesId = a})

-- | One or more Reserved Instance listing IDs.
drilReservedInstancesListingId :: Lens' DescribeReservedInstancesListings (Maybe Text)
drilReservedInstancesListingId = lens _drilReservedInstancesListingId (\s a -> s {_drilReservedInstancesListingId = a})

-- | One or more filters.     * @reserved-instances-id@ - The ID of the Reserved Instances.     * @reserved-instances-listing-id@ - The ID of the Reserved Instances listing.     * @status@ - The status of the Reserved Instance listing (@pending@ | @active@ | @cancelled@ | @closed@ ).     * @status-message@ - The reason for the status.
drilFilters :: Lens' DescribeReservedInstancesListings [Filter]
drilFilters = lens _drilFilters (\s a -> s {_drilFilters = a}) . _Default . _Coerce

instance AWSRequest DescribeReservedInstancesListings where
  type
    Rs DescribeReservedInstancesListings =
      DescribeReservedInstancesListingsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeReservedInstancesListingsResponse'
            <$> ( x .@? "reservedInstancesListingsSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReservedInstancesListings

instance NFData DescribeReservedInstancesListings

instance ToHeaders DescribeReservedInstancesListings where
  toHeaders = const mempty

instance ToPath DescribeReservedInstancesListings where
  toPath = const "/"

instance ToQuery DescribeReservedInstancesListings where
  toQuery DescribeReservedInstancesListings' {..} =
    mconcat
      [ "Action"
          =: ("DescribeReservedInstancesListings" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "ReservedInstancesId" =: _drilReservedInstancesId,
        "ReservedInstancesListingId"
          =: _drilReservedInstancesListingId,
        toQuery (toQueryList "Filter" <$> _drilFilters)
      ]

-- | Contains the output of DescribeReservedInstancesListings.
--
--
--
-- /See:/ 'describeReservedInstancesListingsResponse' smart constructor.
data DescribeReservedInstancesListingsResponse = DescribeReservedInstancesListingsResponse'
  { _drilrrsReservedInstancesListings ::
      !( Maybe
           [ReservedInstancesListing]
       ),
    _drilrrsResponseStatus ::
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

-- | Creates a value of 'DescribeReservedInstancesListingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drilrrsReservedInstancesListings' - Information about the Reserved Instance listing.
--
-- * 'drilrrsResponseStatus' - -- | The response status code.
describeReservedInstancesListingsResponse ::
  -- | 'drilrrsResponseStatus'
  Int ->
  DescribeReservedInstancesListingsResponse
describeReservedInstancesListingsResponse
  pResponseStatus_ =
    DescribeReservedInstancesListingsResponse'
      { _drilrrsReservedInstancesListings =
          Nothing,
        _drilrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the Reserved Instance listing.
drilrrsReservedInstancesListings :: Lens' DescribeReservedInstancesListingsResponse [ReservedInstancesListing]
drilrrsReservedInstancesListings = lens _drilrrsReservedInstancesListings (\s a -> s {_drilrrsReservedInstancesListings = a}) . _Default . _Coerce

-- | -- | The response status code.
drilrrsResponseStatus :: Lens' DescribeReservedInstancesListingsResponse Int
drilrrsResponseStatus = lens _drilrrsResponseStatus (\s a -> s {_drilrrsResponseStatus = a})

instance
  NFData
    DescribeReservedInstancesListingsResponse
