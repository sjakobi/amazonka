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
-- Module      : Network.AWS.EC2.DescribeScheduledInstanceAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds available schedules that meet the specified criteria.
--
--
-- You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
--
-- After you find a schedule that meets your needs, call 'PurchaseScheduledInstances' to purchase Scheduled Instances with that schedule.
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeScheduledInstanceAvailability
  ( -- * Creating a Request
    describeScheduledInstanceAvailability,
    DescribeScheduledInstanceAvailability,

    -- * Request Lenses
    dsiaMinSlotDurationInHours,
    dsiaNextToken,
    dsiaDryRun,
    dsiaMaxResults,
    dsiaFilters,
    dsiaMaxSlotDurationInHours,
    dsiaFirstSlotStartTimeRange,
    dsiaRecurrence,

    -- * Destructuring the Response
    describeScheduledInstanceAvailabilityResponse,
    DescribeScheduledInstanceAvailabilityResponse,

    -- * Response Lenses
    dsiarrsNextToken,
    dsiarrsScheduledInstanceAvailabilitySet,
    dsiarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeScheduledInstanceAvailability.
--
--
--
-- /See:/ 'describeScheduledInstanceAvailability' smart constructor.
data DescribeScheduledInstanceAvailability = DescribeScheduledInstanceAvailability'
  { _dsiaMinSlotDurationInHours ::
      !( Maybe
           Int
       ),
    _dsiaNextToken ::
      !( Maybe
           Text
       ),
    _dsiaDryRun ::
      !( Maybe
           Bool
       ),
    _dsiaMaxResults ::
      !( Maybe
           Nat
       ),
    _dsiaFilters ::
      !( Maybe
           [Filter]
       ),
    _dsiaMaxSlotDurationInHours ::
      !( Maybe
           Int
       ),
    _dsiaFirstSlotStartTimeRange ::
      !SlotDateTimeRangeRequest,
    _dsiaRecurrence ::
      !ScheduledInstanceRecurrenceRequest
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeScheduledInstanceAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiaMinSlotDurationInHours' - The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
--
-- * 'dsiaNextToken' - The token for the next set of results.
--
-- * 'dsiaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsiaMaxResults' - The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dsiaFilters' - The filters.     * @availability-zone@ - The Availability Zone (for example, @us-west-2a@ ).     * @instance-type@ - The instance type (for example, @c4.large@ ).     * @network-platform@ - The network platform (@EC2-Classic@ or @EC2-VPC@ ).     * @platform@ - The platform (@Linux/UNIX@ or @Windows@ ).
--
-- * 'dsiaMaxSlotDurationInHours' - The maximum available duration, in hours. This value must be greater than @MinSlotDurationInHours@ and less than 1,720.
--
-- * 'dsiaFirstSlotStartTimeRange' - The time period for the first schedule to start.
--
-- * 'dsiaRecurrence' - The schedule recurrence.
describeScheduledInstanceAvailability ::
  -- | 'dsiaFirstSlotStartTimeRange'
  SlotDateTimeRangeRequest ->
  -- | 'dsiaRecurrence'
  ScheduledInstanceRecurrenceRequest ->
  DescribeScheduledInstanceAvailability
describeScheduledInstanceAvailability
  pFirstSlotStartTimeRange_
  pRecurrence_ =
    DescribeScheduledInstanceAvailability'
      { _dsiaMinSlotDurationInHours =
          Nothing,
        _dsiaNextToken = Nothing,
        _dsiaDryRun = Nothing,
        _dsiaMaxResults = Nothing,
        _dsiaFilters = Nothing,
        _dsiaMaxSlotDurationInHours =
          Nothing,
        _dsiaFirstSlotStartTimeRange =
          pFirstSlotStartTimeRange_,
        _dsiaRecurrence = pRecurrence_
      }

-- | The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
dsiaMinSlotDurationInHours :: Lens' DescribeScheduledInstanceAvailability (Maybe Int)
dsiaMinSlotDurationInHours = lens _dsiaMinSlotDurationInHours (\s a -> s {_dsiaMinSlotDurationInHours = a})

-- | The token for the next set of results.
dsiaNextToken :: Lens' DescribeScheduledInstanceAvailability (Maybe Text)
dsiaNextToken = lens _dsiaNextToken (\s a -> s {_dsiaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsiaDryRun :: Lens' DescribeScheduledInstanceAvailability (Maybe Bool)
dsiaDryRun = lens _dsiaDryRun (\s a -> s {_dsiaDryRun = a})

-- | The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dsiaMaxResults :: Lens' DescribeScheduledInstanceAvailability (Maybe Natural)
dsiaMaxResults = lens _dsiaMaxResults (\s a -> s {_dsiaMaxResults = a}) . mapping _Nat

-- | The filters.     * @availability-zone@ - The Availability Zone (for example, @us-west-2a@ ).     * @instance-type@ - The instance type (for example, @c4.large@ ).     * @network-platform@ - The network platform (@EC2-Classic@ or @EC2-VPC@ ).     * @platform@ - The platform (@Linux/UNIX@ or @Windows@ ).
dsiaFilters :: Lens' DescribeScheduledInstanceAvailability [Filter]
dsiaFilters = lens _dsiaFilters (\s a -> s {_dsiaFilters = a}) . _Default . _Coerce

-- | The maximum available duration, in hours. This value must be greater than @MinSlotDurationInHours@ and less than 1,720.
dsiaMaxSlotDurationInHours :: Lens' DescribeScheduledInstanceAvailability (Maybe Int)
dsiaMaxSlotDurationInHours = lens _dsiaMaxSlotDurationInHours (\s a -> s {_dsiaMaxSlotDurationInHours = a})

-- | The time period for the first schedule to start.
dsiaFirstSlotStartTimeRange :: Lens' DescribeScheduledInstanceAvailability SlotDateTimeRangeRequest
dsiaFirstSlotStartTimeRange = lens _dsiaFirstSlotStartTimeRange (\s a -> s {_dsiaFirstSlotStartTimeRange = a})

-- | The schedule recurrence.
dsiaRecurrence :: Lens' DescribeScheduledInstanceAvailability ScheduledInstanceRecurrenceRequest
dsiaRecurrence = lens _dsiaRecurrence (\s a -> s {_dsiaRecurrence = a})

instance
  AWSPager
    DescribeScheduledInstanceAvailability
  where
  page rq rs
    | stop (rs ^. dsiarrsNextToken) = Nothing
    | stop
        (rs ^. dsiarrsScheduledInstanceAvailabilitySet) =
      Nothing
    | otherwise =
      Just $ rq & dsiaNextToken .~ rs ^. dsiarrsNextToken

instance
  AWSRequest
    DescribeScheduledInstanceAvailability
  where
  type
    Rs DescribeScheduledInstanceAvailability =
      DescribeScheduledInstanceAvailabilityResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeScheduledInstanceAvailabilityResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "scheduledInstanceAvailabilitySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeScheduledInstanceAvailability

instance NFData DescribeScheduledInstanceAvailability

instance
  ToHeaders
    DescribeScheduledInstanceAvailability
  where
  toHeaders = const mempty

instance ToPath DescribeScheduledInstanceAvailability where
  toPath = const "/"

instance
  ToQuery
    DescribeScheduledInstanceAvailability
  where
  toQuery DescribeScheduledInstanceAvailability' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeScheduledInstanceAvailability" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "MinSlotDurationInHours"
          =: _dsiaMinSlotDurationInHours,
        "NextToken" =: _dsiaNextToken,
        "DryRun" =: _dsiaDryRun,
        "MaxResults" =: _dsiaMaxResults,
        toQuery (toQueryList "Filter" <$> _dsiaFilters),
        "MaxSlotDurationInHours"
          =: _dsiaMaxSlotDurationInHours,
        "FirstSlotStartTimeRange"
          =: _dsiaFirstSlotStartTimeRange,
        "Recurrence" =: _dsiaRecurrence
      ]

-- | Contains the output of DescribeScheduledInstanceAvailability.
--
--
--
-- /See:/ 'describeScheduledInstanceAvailabilityResponse' smart constructor.
data DescribeScheduledInstanceAvailabilityResponse = DescribeScheduledInstanceAvailabilityResponse'
  { _dsiarrsNextToken ::
      !( Maybe
           Text
       ),
    _dsiarrsScheduledInstanceAvailabilitySet ::
      !( Maybe
           [ScheduledInstanceAvailability]
       ),
    _dsiarrsResponseStatus ::
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

-- | Creates a value of 'DescribeScheduledInstanceAvailabilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiarrsNextToken' - The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
--
-- * 'dsiarrsScheduledInstanceAvailabilitySet' - Information about the available Scheduled Instances.
--
-- * 'dsiarrsResponseStatus' - -- | The response status code.
describeScheduledInstanceAvailabilityResponse ::
  -- | 'dsiarrsResponseStatus'
  Int ->
  DescribeScheduledInstanceAvailabilityResponse
describeScheduledInstanceAvailabilityResponse
  pResponseStatus_ =
    DescribeScheduledInstanceAvailabilityResponse'
      { _dsiarrsNextToken =
          Nothing,
        _dsiarrsScheduledInstanceAvailabilitySet =
          Nothing,
        _dsiarrsResponseStatus =
          pResponseStatus_
      }

-- | The token required to retrieve the next set of results. This value is @null@ when there are no more results to return.
dsiarrsNextToken :: Lens' DescribeScheduledInstanceAvailabilityResponse (Maybe Text)
dsiarrsNextToken = lens _dsiarrsNextToken (\s a -> s {_dsiarrsNextToken = a})

-- | Information about the available Scheduled Instances.
dsiarrsScheduledInstanceAvailabilitySet :: Lens' DescribeScheduledInstanceAvailabilityResponse [ScheduledInstanceAvailability]
dsiarrsScheduledInstanceAvailabilitySet = lens _dsiarrsScheduledInstanceAvailabilitySet (\s a -> s {_dsiarrsScheduledInstanceAvailabilitySet = a}) . _Default . _Coerce

-- | -- | The response status code.
dsiarrsResponseStatus :: Lens' DescribeScheduledInstanceAvailabilityResponse Int
dsiarrsResponseStatus = lens _dsiarrsResponseStatus (\s a -> s {_dsiarrsResponseStatus = a})

instance
  NFData
    DescribeScheduledInstanceAvailabilityResponse
