{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HostReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostReservation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CurrencyCodeValues
import Network.AWS.EC2.Types.PaymentOption
import Network.AWS.EC2.Types.ReservationState
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about the Dedicated Host Reservation and associated Dedicated Hosts.
--
--
--
-- /See:/ 'hostReservation' smart constructor.
data HostReservation = HostReservation'
  { _hrInstanceFamily ::
      !(Maybe Text),
    _hrEnd :: !(Maybe ISO8601),
    _hrHostIdSet :: !(Maybe [Text]),
    _hrUpfrontPrice :: !(Maybe Text),
    _hrPaymentOption ::
      !(Maybe PaymentOption),
    _hrDuration :: !(Maybe Int),
    _hrOfferingId :: !(Maybe Text),
    _hrHostReservationId :: !(Maybe Text),
    _hrCurrencyCode ::
      !(Maybe CurrencyCodeValues),
    _hrState :: !(Maybe ReservationState),
    _hrTags :: !(Maybe [Tag]),
    _hrCount :: !(Maybe Int),
    _hrHourlyPrice :: !(Maybe Text),
    _hrStart :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HostReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrInstanceFamily' - The instance family of the Dedicated Host Reservation. The instance family on the Dedicated Host must be the same in order for it to benefit from the reservation.
--
-- * 'hrEnd' - The date and time that the reservation ends.
--
-- * 'hrHostIdSet' - The IDs of the Dedicated Hosts associated with the reservation.
--
-- * 'hrUpfrontPrice' - The upfront price of the reservation.
--
-- * 'hrPaymentOption' - The payment option selected for this reservation.
--
-- * 'hrDuration' - The length of the reservation's term, specified in seconds. Can be @31536000 (1 year)@ | @94608000 (3 years)@ .
--
-- * 'hrOfferingId' - The ID of the reservation. This remains the same regardless of which Dedicated Hosts are associated with it.
--
-- * 'hrHostReservationId' - The ID of the reservation that specifies the associated Dedicated Hosts.
--
-- * 'hrCurrencyCode' - The currency in which the @upfrontPrice@ and @hourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
--
-- * 'hrState' - The state of the reservation.
--
-- * 'hrTags' - Any tags assigned to the Dedicated Host Reservation.
--
-- * 'hrCount' - The number of Dedicated Hosts the reservation is associated with.
--
-- * 'hrHourlyPrice' - The hourly price of the reservation.
--
-- * 'hrStart' - The date and time that the reservation started.
hostReservation ::
  HostReservation
hostReservation =
  HostReservation'
    { _hrInstanceFamily = Nothing,
      _hrEnd = Nothing,
      _hrHostIdSet = Nothing,
      _hrUpfrontPrice = Nothing,
      _hrPaymentOption = Nothing,
      _hrDuration = Nothing,
      _hrOfferingId = Nothing,
      _hrHostReservationId = Nothing,
      _hrCurrencyCode = Nothing,
      _hrState = Nothing,
      _hrTags = Nothing,
      _hrCount = Nothing,
      _hrHourlyPrice = Nothing,
      _hrStart = Nothing
    }

-- | The instance family of the Dedicated Host Reservation. The instance family on the Dedicated Host must be the same in order for it to benefit from the reservation.
hrInstanceFamily :: Lens' HostReservation (Maybe Text)
hrInstanceFamily = lens _hrInstanceFamily (\s a -> s {_hrInstanceFamily = a})

-- | The date and time that the reservation ends.
hrEnd :: Lens' HostReservation (Maybe UTCTime)
hrEnd = lens _hrEnd (\s a -> s {_hrEnd = a}) . mapping _Time

-- | The IDs of the Dedicated Hosts associated with the reservation.
hrHostIdSet :: Lens' HostReservation [Text]
hrHostIdSet = lens _hrHostIdSet (\s a -> s {_hrHostIdSet = a}) . _Default . _Coerce

-- | The upfront price of the reservation.
hrUpfrontPrice :: Lens' HostReservation (Maybe Text)
hrUpfrontPrice = lens _hrUpfrontPrice (\s a -> s {_hrUpfrontPrice = a})

-- | The payment option selected for this reservation.
hrPaymentOption :: Lens' HostReservation (Maybe PaymentOption)
hrPaymentOption = lens _hrPaymentOption (\s a -> s {_hrPaymentOption = a})

-- | The length of the reservation's term, specified in seconds. Can be @31536000 (1 year)@ | @94608000 (3 years)@ .
hrDuration :: Lens' HostReservation (Maybe Int)
hrDuration = lens _hrDuration (\s a -> s {_hrDuration = a})

-- | The ID of the reservation. This remains the same regardless of which Dedicated Hosts are associated with it.
hrOfferingId :: Lens' HostReservation (Maybe Text)
hrOfferingId = lens _hrOfferingId (\s a -> s {_hrOfferingId = a})

-- | The ID of the reservation that specifies the associated Dedicated Hosts.
hrHostReservationId :: Lens' HostReservation (Maybe Text)
hrHostReservationId = lens _hrHostReservationId (\s a -> s {_hrHostReservationId = a})

-- | The currency in which the @upfrontPrice@ and @hourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
hrCurrencyCode :: Lens' HostReservation (Maybe CurrencyCodeValues)
hrCurrencyCode = lens _hrCurrencyCode (\s a -> s {_hrCurrencyCode = a})

-- | The state of the reservation.
hrState :: Lens' HostReservation (Maybe ReservationState)
hrState = lens _hrState (\s a -> s {_hrState = a})

-- | Any tags assigned to the Dedicated Host Reservation.
hrTags :: Lens' HostReservation [Tag]
hrTags = lens _hrTags (\s a -> s {_hrTags = a}) . _Default . _Coerce

-- | The number of Dedicated Hosts the reservation is associated with.
hrCount :: Lens' HostReservation (Maybe Int)
hrCount = lens _hrCount (\s a -> s {_hrCount = a})

-- | The hourly price of the reservation.
hrHourlyPrice :: Lens' HostReservation (Maybe Text)
hrHourlyPrice = lens _hrHourlyPrice (\s a -> s {_hrHourlyPrice = a})

-- | The date and time that the reservation started.
hrStart :: Lens' HostReservation (Maybe UTCTime)
hrStart = lens _hrStart (\s a -> s {_hrStart = a}) . mapping _Time

instance FromXML HostReservation where
  parseXML x =
    HostReservation'
      <$> (x .@? "instanceFamily")
      <*> (x .@? "end")
      <*> ( x .@? "hostIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "upfrontPrice")
      <*> (x .@? "paymentOption")
      <*> (x .@? "duration")
      <*> (x .@? "offeringId")
      <*> (x .@? "hostReservationId")
      <*> (x .@? "currencyCode")
      <*> (x .@? "state")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "count")
      <*> (x .@? "hourlyPrice")
      <*> (x .@? "start")

instance Hashable HostReservation

instance NFData HostReservation
