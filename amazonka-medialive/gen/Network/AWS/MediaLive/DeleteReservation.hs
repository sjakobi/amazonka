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
-- Module      : Network.AWS.MediaLive.DeleteReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an expired reservation.
module Network.AWS.MediaLive.DeleteReservation
  ( -- * Creating a Request
    deleteReservation,
    DeleteReservation,

    -- * Request Lenses
    dReservationId,

    -- * Destructuring the Response
    deleteReservationResponse,
    DeleteReservationResponse,

    -- * Response Lenses
    drrrrsEnd,
    drrrrsDuration,
    drrrrsDurationUnits,
    drrrrsARN,
    drrrrsOfferingId,
    drrrrsCurrencyCode,
    drrrrsResourceSpecification,
    drrrrsState,
    drrrrsName,
    drrrrsTags,
    drrrrsOfferingDescription,
    drrrrsCount,
    drrrrsFixedPrice,
    drrrrsUsagePrice,
    drrrrsOfferingType,
    drrrrsRegion,
    drrrrsStart,
    drrrrsReservationId,
    drrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DeleteReservationRequest
--
-- /See:/ 'deleteReservation' smart constructor.
newtype DeleteReservation = DeleteReservation'
  { _dReservationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dReservationId' - Unique reservation ID, e.g. '1234567'
deleteReservation ::
  -- | 'dReservationId'
  Text ->
  DeleteReservation
deleteReservation pReservationId_ =
  DeleteReservation'
    { _dReservationId =
        pReservationId_
    }

-- | Unique reservation ID, e.g. '1234567'
dReservationId :: Lens' DeleteReservation Text
dReservationId = lens _dReservationId (\s a -> s {_dReservationId = a})

instance AWSRequest DeleteReservation where
  type Rs DeleteReservation = DeleteReservationResponse
  request = delete mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DeleteReservationResponse'
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

instance Hashable DeleteReservation

instance NFData DeleteReservation

instance ToHeaders DeleteReservation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteReservation where
  toPath DeleteReservation' {..} =
    mconcat
      ["/prod/reservations/", toBS _dReservationId]

instance ToQuery DeleteReservation where
  toQuery = const mempty

-- | Placeholder documentation for DeleteReservationResponse
--
-- /See:/ 'deleteReservationResponse' smart constructor.
data DeleteReservationResponse = DeleteReservationResponse'
  { _drrrrsEnd ::
      !(Maybe Text),
    _drrrrsDuration ::
      !(Maybe Int),
    _drrrrsDurationUnits ::
      !( Maybe
           OfferingDurationUnits
       ),
    _drrrrsARN ::
      !(Maybe Text),
    _drrrrsOfferingId ::
      !(Maybe Text),
    _drrrrsCurrencyCode ::
      !(Maybe Text),
    _drrrrsResourceSpecification ::
      !( Maybe
           ReservationResourceSpecification
       ),
    _drrrrsState ::
      !( Maybe
           ReservationState
       ),
    _drrrrsName ::
      !(Maybe Text),
    _drrrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _drrrrsOfferingDescription ::
      !(Maybe Text),
    _drrrrsCount ::
      !(Maybe Int),
    _drrrrsFixedPrice ::
      !(Maybe Double),
    _drrrrsUsagePrice ::
      !(Maybe Double),
    _drrrrsOfferingType ::
      !( Maybe
           OfferingType
       ),
    _drrrrsRegion ::
      !(Maybe Text),
    _drrrrsStart ::
      !(Maybe Text),
    _drrrrsReservationId ::
      !(Maybe Text),
    _drrrrsResponseStatus ::
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

-- | Creates a value of 'DeleteReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrrsEnd' - Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
--
-- * 'drrrrsDuration' - Lease duration, e.g. '12'
--
-- * 'drrrrsDurationUnits' - Units for duration, e.g. 'MONTHS'
--
-- * 'drrrrsARN' - Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
--
-- * 'drrrrsOfferingId' - Unique offering ID, e.g. '87654321'
--
-- * 'drrrrsCurrencyCode' - Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
--
-- * 'drrrrsResourceSpecification' - Resource configuration details
--
-- * 'drrrrsState' - Current state of reservation, e.g. 'ACTIVE'
--
-- * 'drrrrsName' - User specified reservation name
--
-- * 'drrrrsTags' - A collection of key-value pairs
--
-- * 'drrrrsOfferingDescription' - Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
--
-- * 'drrrrsCount' - Number of reserved resources
--
-- * 'drrrrsFixedPrice' - One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
--
-- * 'drrrrsUsagePrice' - Recurring usage charge for each reserved resource, e.g. '157.0'
--
-- * 'drrrrsOfferingType' - Offering type, e.g. 'NO_UPFRONT'
--
-- * 'drrrrsRegion' - AWS region, e.g. 'us-west-2'
--
-- * 'drrrrsStart' - Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
--
-- * 'drrrrsReservationId' - Unique reservation ID, e.g. '1234567'
--
-- * 'drrrrsResponseStatus' - -- | The response status code.
deleteReservationResponse ::
  -- | 'drrrrsResponseStatus'
  Int ->
  DeleteReservationResponse
deleteReservationResponse pResponseStatus_ =
  DeleteReservationResponse'
    { _drrrrsEnd = Nothing,
      _drrrrsDuration = Nothing,
      _drrrrsDurationUnits = Nothing,
      _drrrrsARN = Nothing,
      _drrrrsOfferingId = Nothing,
      _drrrrsCurrencyCode = Nothing,
      _drrrrsResourceSpecification = Nothing,
      _drrrrsState = Nothing,
      _drrrrsName = Nothing,
      _drrrrsTags = Nothing,
      _drrrrsOfferingDescription = Nothing,
      _drrrrsCount = Nothing,
      _drrrrsFixedPrice = Nothing,
      _drrrrsUsagePrice = Nothing,
      _drrrrsOfferingType = Nothing,
      _drrrrsRegion = Nothing,
      _drrrrsStart = Nothing,
      _drrrrsReservationId = Nothing,
      _drrrrsResponseStatus = pResponseStatus_
    }

-- | Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
drrrrsEnd :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsEnd = lens _drrrrsEnd (\s a -> s {_drrrrsEnd = a})

-- | Lease duration, e.g. '12'
drrrrsDuration :: Lens' DeleteReservationResponse (Maybe Int)
drrrrsDuration = lens _drrrrsDuration (\s a -> s {_drrrrsDuration = a})

-- | Units for duration, e.g. 'MONTHS'
drrrrsDurationUnits :: Lens' DeleteReservationResponse (Maybe OfferingDurationUnits)
drrrrsDurationUnits = lens _drrrrsDurationUnits (\s a -> s {_drrrrsDurationUnits = a})

-- | Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
drrrrsARN :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsARN = lens _drrrrsARN (\s a -> s {_drrrrsARN = a})

-- | Unique offering ID, e.g. '87654321'
drrrrsOfferingId :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsOfferingId = lens _drrrrsOfferingId (\s a -> s {_drrrrsOfferingId = a})

-- | Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
drrrrsCurrencyCode :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsCurrencyCode = lens _drrrrsCurrencyCode (\s a -> s {_drrrrsCurrencyCode = a})

-- | Resource configuration details
drrrrsResourceSpecification :: Lens' DeleteReservationResponse (Maybe ReservationResourceSpecification)
drrrrsResourceSpecification = lens _drrrrsResourceSpecification (\s a -> s {_drrrrsResourceSpecification = a})

-- | Current state of reservation, e.g. 'ACTIVE'
drrrrsState :: Lens' DeleteReservationResponse (Maybe ReservationState)
drrrrsState = lens _drrrrsState (\s a -> s {_drrrrsState = a})

-- | User specified reservation name
drrrrsName :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsName = lens _drrrrsName (\s a -> s {_drrrrsName = a})

-- | A collection of key-value pairs
drrrrsTags :: Lens' DeleteReservationResponse (HashMap Text Text)
drrrrsTags = lens _drrrrsTags (\s a -> s {_drrrrsTags = a}) . _Default . _Map

-- | Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
drrrrsOfferingDescription :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsOfferingDescription = lens _drrrrsOfferingDescription (\s a -> s {_drrrrsOfferingDescription = a})

-- | Number of reserved resources
drrrrsCount :: Lens' DeleteReservationResponse (Maybe Int)
drrrrsCount = lens _drrrrsCount (\s a -> s {_drrrrsCount = a})

-- | One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
drrrrsFixedPrice :: Lens' DeleteReservationResponse (Maybe Double)
drrrrsFixedPrice = lens _drrrrsFixedPrice (\s a -> s {_drrrrsFixedPrice = a})

-- | Recurring usage charge for each reserved resource, e.g. '157.0'
drrrrsUsagePrice :: Lens' DeleteReservationResponse (Maybe Double)
drrrrsUsagePrice = lens _drrrrsUsagePrice (\s a -> s {_drrrrsUsagePrice = a})

-- | Offering type, e.g. 'NO_UPFRONT'
drrrrsOfferingType :: Lens' DeleteReservationResponse (Maybe OfferingType)
drrrrsOfferingType = lens _drrrrsOfferingType (\s a -> s {_drrrrsOfferingType = a})

-- | AWS region, e.g. 'us-west-2'
drrrrsRegion :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsRegion = lens _drrrrsRegion (\s a -> s {_drrrrsRegion = a})

-- | Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
drrrrsStart :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsStart = lens _drrrrsStart (\s a -> s {_drrrrsStart = a})

-- | Unique reservation ID, e.g. '1234567'
drrrrsReservationId :: Lens' DeleteReservationResponse (Maybe Text)
drrrrsReservationId = lens _drrrrsReservationId (\s a -> s {_drrrrsReservationId = a})

-- | -- | The response status code.
drrrrsResponseStatus :: Lens' DeleteReservationResponse Int
drrrrsResponseStatus = lens _drrrrsResponseStatus (\s a -> s {_drrrrsResponseStatus = a})

instance NFData DeleteReservationResponse
