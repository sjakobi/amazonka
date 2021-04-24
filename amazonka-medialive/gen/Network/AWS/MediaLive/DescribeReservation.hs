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
-- Module      : Network.AWS.MediaLive.DescribeReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get details for a reservation.
module Network.AWS.MediaLive.DescribeReservation
  ( -- * Creating a Request
    describeReservation,
    DescribeReservation,

    -- * Request Lenses
    drReservationId,

    -- * Destructuring the Response
    describeReservationResponse,
    DescribeReservationResponse,

    -- * Response Lenses
    drrrsEnd,
    drrrsDuration,
    drrrsDurationUnits,
    drrrsARN,
    drrrsOfferingId,
    drrrsCurrencyCode,
    drrrsResourceSpecification,
    drrrsState,
    drrrsName,
    drrrsTags,
    drrrsOfferingDescription,
    drrrsCount,
    drrrsFixedPrice,
    drrrsUsagePrice,
    drrrsOfferingType,
    drrrsRegion,
    drrrsStart,
    drrrsReservationId,
    drrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeReservationRequest
--
-- /See:/ 'describeReservation' smart constructor.
newtype DescribeReservation = DescribeReservation'
  { _drReservationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drReservationId' - Unique reservation ID, e.g. '1234567'
describeReservation ::
  -- | 'drReservationId'
  Text ->
  DescribeReservation
describeReservation pReservationId_ =
  DescribeReservation'
    { _drReservationId =
        pReservationId_
    }

-- | Unique reservation ID, e.g. '1234567'
drReservationId :: Lens' DescribeReservation Text
drReservationId = lens _drReservationId (\s a -> s {_drReservationId = a})

instance AWSRequest DescribeReservation where
  type
    Rs DescribeReservation =
      DescribeReservationResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeReservationResponse'
            <$> (x .?> "end")
            <*> (x .?> "duration")
            <*> (x .?> "durationUnits")
            <*> (x .?> "arn")
            <*> (x .?> "offeringId")
            <*> (x .?> "currencyCode")
            <*> (x .?> "resourceSpecification")
            <*> (x .?> "state")
            <*> (x .?> "name")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "offeringDescription")
            <*> (x .?> "count")
            <*> (x .?> "fixedPrice")
            <*> (x .?> "usagePrice")
            <*> (x .?> "offeringType")
            <*> (x .?> "region")
            <*> (x .?> "start")
            <*> (x .?> "reservationId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeReservation

instance NFData DescribeReservation

instance ToHeaders DescribeReservation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeReservation where
  toPath DescribeReservation' {..} =
    mconcat
      ["/prod/reservations/", toBS _drReservationId]

instance ToQuery DescribeReservation where
  toQuery = const mempty

-- | Placeholder documentation for DescribeReservationResponse
--
-- /See:/ 'describeReservationResponse' smart constructor.
data DescribeReservationResponse = DescribeReservationResponse'
  { _drrrsEnd ::
      !(Maybe Text),
    _drrrsDuration ::
      !(Maybe Int),
    _drrrsDurationUnits ::
      !( Maybe
           OfferingDurationUnits
       ),
    _drrrsARN ::
      !(Maybe Text),
    _drrrsOfferingId ::
      !(Maybe Text),
    _drrrsCurrencyCode ::
      !(Maybe Text),
    _drrrsResourceSpecification ::
      !( Maybe
           ReservationResourceSpecification
       ),
    _drrrsState ::
      !( Maybe
           ReservationState
       ),
    _drrrsName ::
      !(Maybe Text),
    _drrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _drrrsOfferingDescription ::
      !(Maybe Text),
    _drrrsCount ::
      !(Maybe Int),
    _drrrsFixedPrice ::
      !(Maybe Double),
    _drrrsUsagePrice ::
      !(Maybe Double),
    _drrrsOfferingType ::
      !( Maybe
           OfferingType
       ),
    _drrrsRegion ::
      !(Maybe Text),
    _drrrsStart ::
      !(Maybe Text),
    _drrrsReservationId ::
      !(Maybe Text),
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

-- | Creates a value of 'DescribeReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsEnd' - Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
--
-- * 'drrrsDuration' - Lease duration, e.g. '12'
--
-- * 'drrrsDurationUnits' - Units for duration, e.g. 'MONTHS'
--
-- * 'drrrsARN' - Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
--
-- * 'drrrsOfferingId' - Unique offering ID, e.g. '87654321'
--
-- * 'drrrsCurrencyCode' - Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
--
-- * 'drrrsResourceSpecification' - Resource configuration details
--
-- * 'drrrsState' - Current state of reservation, e.g. 'ACTIVE'
--
-- * 'drrrsName' - User specified reservation name
--
-- * 'drrrsTags' - A collection of key-value pairs
--
-- * 'drrrsOfferingDescription' - Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
--
-- * 'drrrsCount' - Number of reserved resources
--
-- * 'drrrsFixedPrice' - One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
--
-- * 'drrrsUsagePrice' - Recurring usage charge for each reserved resource, e.g. '157.0'
--
-- * 'drrrsOfferingType' - Offering type, e.g. 'NO_UPFRONT'
--
-- * 'drrrsRegion' - AWS region, e.g. 'us-west-2'
--
-- * 'drrrsStart' - Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
--
-- * 'drrrsReservationId' - Unique reservation ID, e.g. '1234567'
--
-- * 'drrrsResponseStatus' - -- | The response status code.
describeReservationResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DescribeReservationResponse
describeReservationResponse pResponseStatus_ =
  DescribeReservationResponse'
    { _drrrsEnd = Nothing,
      _drrrsDuration = Nothing,
      _drrrsDurationUnits = Nothing,
      _drrrsARN = Nothing,
      _drrrsOfferingId = Nothing,
      _drrrsCurrencyCode = Nothing,
      _drrrsResourceSpecification = Nothing,
      _drrrsState = Nothing,
      _drrrsName = Nothing,
      _drrrsTags = Nothing,
      _drrrsOfferingDescription = Nothing,
      _drrrsCount = Nothing,
      _drrrsFixedPrice = Nothing,
      _drrrsUsagePrice = Nothing,
      _drrrsOfferingType = Nothing,
      _drrrsRegion = Nothing,
      _drrrsStart = Nothing,
      _drrrsReservationId = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
drrrsEnd :: Lens' DescribeReservationResponse (Maybe Text)
drrrsEnd = lens _drrrsEnd (\s a -> s {_drrrsEnd = a})

-- | Lease duration, e.g. '12'
drrrsDuration :: Lens' DescribeReservationResponse (Maybe Int)
drrrsDuration = lens _drrrsDuration (\s a -> s {_drrrsDuration = a})

-- | Units for duration, e.g. 'MONTHS'
drrrsDurationUnits :: Lens' DescribeReservationResponse (Maybe OfferingDurationUnits)
drrrsDurationUnits = lens _drrrsDurationUnits (\s a -> s {_drrrsDurationUnits = a})

-- | Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
drrrsARN :: Lens' DescribeReservationResponse (Maybe Text)
drrrsARN = lens _drrrsARN (\s a -> s {_drrrsARN = a})

-- | Unique offering ID, e.g. '87654321'
drrrsOfferingId :: Lens' DescribeReservationResponse (Maybe Text)
drrrsOfferingId = lens _drrrsOfferingId (\s a -> s {_drrrsOfferingId = a})

-- | Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
drrrsCurrencyCode :: Lens' DescribeReservationResponse (Maybe Text)
drrrsCurrencyCode = lens _drrrsCurrencyCode (\s a -> s {_drrrsCurrencyCode = a})

-- | Resource configuration details
drrrsResourceSpecification :: Lens' DescribeReservationResponse (Maybe ReservationResourceSpecification)
drrrsResourceSpecification = lens _drrrsResourceSpecification (\s a -> s {_drrrsResourceSpecification = a})

-- | Current state of reservation, e.g. 'ACTIVE'
drrrsState :: Lens' DescribeReservationResponse (Maybe ReservationState)
drrrsState = lens _drrrsState (\s a -> s {_drrrsState = a})

-- | User specified reservation name
drrrsName :: Lens' DescribeReservationResponse (Maybe Text)
drrrsName = lens _drrrsName (\s a -> s {_drrrsName = a})

-- | A collection of key-value pairs
drrrsTags :: Lens' DescribeReservationResponse (HashMap Text Text)
drrrsTags = lens _drrrsTags (\s a -> s {_drrrsTags = a}) . _Default . _Map

-- | Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
drrrsOfferingDescription :: Lens' DescribeReservationResponse (Maybe Text)
drrrsOfferingDescription = lens _drrrsOfferingDescription (\s a -> s {_drrrsOfferingDescription = a})

-- | Number of reserved resources
drrrsCount :: Lens' DescribeReservationResponse (Maybe Int)
drrrsCount = lens _drrrsCount (\s a -> s {_drrrsCount = a})

-- | One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
drrrsFixedPrice :: Lens' DescribeReservationResponse (Maybe Double)
drrrsFixedPrice = lens _drrrsFixedPrice (\s a -> s {_drrrsFixedPrice = a})

-- | Recurring usage charge for each reserved resource, e.g. '157.0'
drrrsUsagePrice :: Lens' DescribeReservationResponse (Maybe Double)
drrrsUsagePrice = lens _drrrsUsagePrice (\s a -> s {_drrrsUsagePrice = a})

-- | Offering type, e.g. 'NO_UPFRONT'
drrrsOfferingType :: Lens' DescribeReservationResponse (Maybe OfferingType)
drrrsOfferingType = lens _drrrsOfferingType (\s a -> s {_drrrsOfferingType = a})

-- | AWS region, e.g. 'us-west-2'
drrrsRegion :: Lens' DescribeReservationResponse (Maybe Text)
drrrsRegion = lens _drrrsRegion (\s a -> s {_drrrsRegion = a})

-- | Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
drrrsStart :: Lens' DescribeReservationResponse (Maybe Text)
drrrsStart = lens _drrrsStart (\s a -> s {_drrrsStart = a})

-- | Unique reservation ID, e.g. '1234567'
drrrsReservationId :: Lens' DescribeReservationResponse (Maybe Text)
drrrsReservationId = lens _drrrsReservationId (\s a -> s {_drrrsReservationId = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DescribeReservationResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DescribeReservationResponse
