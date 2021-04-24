{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Reservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Reservation where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.OfferingDurationUnits
import Network.AWS.MediaLive.Types.OfferingType
import Network.AWS.MediaLive.Types.ReservationResourceSpecification
import Network.AWS.MediaLive.Types.ReservationState
import Network.AWS.Prelude

-- | Reserved resources available to use
--
-- /See:/ 'reservation' smart constructor.
data Reservation = Reservation'
  { _rEnd ::
      !(Maybe Text),
    _rDuration :: !(Maybe Int),
    _rDurationUnits ::
      !(Maybe OfferingDurationUnits),
    _rARN :: !(Maybe Text),
    _rOfferingId :: !(Maybe Text),
    _rCurrencyCode :: !(Maybe Text),
    _rResourceSpecification ::
      !(Maybe ReservationResourceSpecification),
    _rState :: !(Maybe ReservationState),
    _rName :: !(Maybe Text),
    _rTags :: !(Maybe (Map Text Text)),
    _rOfferingDescription :: !(Maybe Text),
    _rCount :: !(Maybe Int),
    _rFixedPrice :: !(Maybe Double),
    _rUsagePrice :: !(Maybe Double),
    _rOfferingType :: !(Maybe OfferingType),
    _rRegion :: !(Maybe Text),
    _rStart :: !(Maybe Text),
    _rReservationId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Reservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rEnd' - Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
--
-- * 'rDuration' - Lease duration, e.g. '12'
--
-- * 'rDurationUnits' - Units for duration, e.g. 'MONTHS'
--
-- * 'rARN' - Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
--
-- * 'rOfferingId' - Unique offering ID, e.g. '87654321'
--
-- * 'rCurrencyCode' - Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
--
-- * 'rResourceSpecification' - Resource configuration details
--
-- * 'rState' - Current state of reservation, e.g. 'ACTIVE'
--
-- * 'rName' - User specified reservation name
--
-- * 'rTags' - A collection of key-value pairs
--
-- * 'rOfferingDescription' - Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
--
-- * 'rCount' - Number of reserved resources
--
-- * 'rFixedPrice' - One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
--
-- * 'rUsagePrice' - Recurring usage charge for each reserved resource, e.g. '157.0'
--
-- * 'rOfferingType' - Offering type, e.g. 'NO_UPFRONT'
--
-- * 'rRegion' - AWS region, e.g. 'us-west-2'
--
-- * 'rStart' - Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
--
-- * 'rReservationId' - Unique reservation ID, e.g. '1234567'
reservation ::
  Reservation
reservation =
  Reservation'
    { _rEnd = Nothing,
      _rDuration = Nothing,
      _rDurationUnits = Nothing,
      _rARN = Nothing,
      _rOfferingId = Nothing,
      _rCurrencyCode = Nothing,
      _rResourceSpecification = Nothing,
      _rState = Nothing,
      _rName = Nothing,
      _rTags = Nothing,
      _rOfferingDescription = Nothing,
      _rCount = Nothing,
      _rFixedPrice = Nothing,
      _rUsagePrice = Nothing,
      _rOfferingType = Nothing,
      _rRegion = Nothing,
      _rStart = Nothing,
      _rReservationId = Nothing
    }

-- | Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
rEnd :: Lens' Reservation (Maybe Text)
rEnd = lens _rEnd (\s a -> s {_rEnd = a})

-- | Lease duration, e.g. '12'
rDuration :: Lens' Reservation (Maybe Int)
rDuration = lens _rDuration (\s a -> s {_rDuration = a})

-- | Units for duration, e.g. 'MONTHS'
rDurationUnits :: Lens' Reservation (Maybe OfferingDurationUnits)
rDurationUnits = lens _rDurationUnits (\s a -> s {_rDurationUnits = a})

-- | Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
rARN :: Lens' Reservation (Maybe Text)
rARN = lens _rARN (\s a -> s {_rARN = a})

-- | Unique offering ID, e.g. '87654321'
rOfferingId :: Lens' Reservation (Maybe Text)
rOfferingId = lens _rOfferingId (\s a -> s {_rOfferingId = a})

-- | Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
rCurrencyCode :: Lens' Reservation (Maybe Text)
rCurrencyCode = lens _rCurrencyCode (\s a -> s {_rCurrencyCode = a})

-- | Resource configuration details
rResourceSpecification :: Lens' Reservation (Maybe ReservationResourceSpecification)
rResourceSpecification = lens _rResourceSpecification (\s a -> s {_rResourceSpecification = a})

-- | Current state of reservation, e.g. 'ACTIVE'
rState :: Lens' Reservation (Maybe ReservationState)
rState = lens _rState (\s a -> s {_rState = a})

-- | User specified reservation name
rName :: Lens' Reservation (Maybe Text)
rName = lens _rName (\s a -> s {_rName = a})

-- | A collection of key-value pairs
rTags :: Lens' Reservation (HashMap Text Text)
rTags = lens _rTags (\s a -> s {_rTags = a}) . _Default . _Map

-- | Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
rOfferingDescription :: Lens' Reservation (Maybe Text)
rOfferingDescription = lens _rOfferingDescription (\s a -> s {_rOfferingDescription = a})

-- | Number of reserved resources
rCount :: Lens' Reservation (Maybe Int)
rCount = lens _rCount (\s a -> s {_rCount = a})

-- | One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
rFixedPrice :: Lens' Reservation (Maybe Double)
rFixedPrice = lens _rFixedPrice (\s a -> s {_rFixedPrice = a})

-- | Recurring usage charge for each reserved resource, e.g. '157.0'
rUsagePrice :: Lens' Reservation (Maybe Double)
rUsagePrice = lens _rUsagePrice (\s a -> s {_rUsagePrice = a})

-- | Offering type, e.g. 'NO_UPFRONT'
rOfferingType :: Lens' Reservation (Maybe OfferingType)
rOfferingType = lens _rOfferingType (\s a -> s {_rOfferingType = a})

-- | AWS region, e.g. 'us-west-2'
rRegion :: Lens' Reservation (Maybe Text)
rRegion = lens _rRegion (\s a -> s {_rRegion = a})

-- | Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
rStart :: Lens' Reservation (Maybe Text)
rStart = lens _rStart (\s a -> s {_rStart = a})

-- | Unique reservation ID, e.g. '1234567'
rReservationId :: Lens' Reservation (Maybe Text)
rReservationId = lens _rReservationId (\s a -> s {_rReservationId = a})

instance FromJSON Reservation where
  parseJSON =
    withObject
      "Reservation"
      ( \x ->
          Reservation'
            <$> (x .:? "end")
            <*> (x .:? "duration")
            <*> (x .:? "durationUnits")
            <*> (x .:? "arn")
            <*> (x .:? "offeringId")
            <*> (x .:? "currencyCode")
            <*> (x .:? "resourceSpecification")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "offeringDescription")
            <*> (x .:? "count")
            <*> (x .:? "fixedPrice")
            <*> (x .:? "usagePrice")
            <*> (x .:? "offeringType")
            <*> (x .:? "region")
            <*> (x .:? "start")
            <*> (x .:? "reservationId")
      )

instance Hashable Reservation

instance NFData Reservation
