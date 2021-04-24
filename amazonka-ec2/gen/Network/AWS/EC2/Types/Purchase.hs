{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Purchase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Purchase where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CurrencyCodeValues
import Network.AWS.EC2.Types.PaymentOption
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the result of the purchase.
--
--
--
-- /See:/ 'purchase' smart constructor.
data Purchase = Purchase'
  { _pInstanceFamily ::
      !(Maybe Text),
    _pHostIdSet :: !(Maybe [Text]),
    _pUpfrontPrice :: !(Maybe Text),
    _pPaymentOption :: !(Maybe PaymentOption),
    _pDuration :: !(Maybe Int),
    _pHostReservationId :: !(Maybe Text),
    _pCurrencyCode :: !(Maybe CurrencyCodeValues),
    _pHourlyPrice :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Purchase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pInstanceFamily' - The instance family on the Dedicated Host that the reservation can be associated with.
--
-- * 'pHostIdSet' - The IDs of the Dedicated Hosts associated with the reservation.
--
-- * 'pUpfrontPrice' - The upfront price of the reservation.
--
-- * 'pPaymentOption' - The payment option for the reservation.
--
-- * 'pDuration' - The duration of the reservation's term in seconds.
--
-- * 'pHostReservationId' - The ID of the reservation.
--
-- * 'pCurrencyCode' - The currency in which the @UpfrontPrice@ and @HourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
--
-- * 'pHourlyPrice' - The hourly price of the reservation per hour.
purchase ::
  Purchase
purchase =
  Purchase'
    { _pInstanceFamily = Nothing,
      _pHostIdSet = Nothing,
      _pUpfrontPrice = Nothing,
      _pPaymentOption = Nothing,
      _pDuration = Nothing,
      _pHostReservationId = Nothing,
      _pCurrencyCode = Nothing,
      _pHourlyPrice = Nothing
    }

-- | The instance family on the Dedicated Host that the reservation can be associated with.
pInstanceFamily :: Lens' Purchase (Maybe Text)
pInstanceFamily = lens _pInstanceFamily (\s a -> s {_pInstanceFamily = a})

-- | The IDs of the Dedicated Hosts associated with the reservation.
pHostIdSet :: Lens' Purchase [Text]
pHostIdSet = lens _pHostIdSet (\s a -> s {_pHostIdSet = a}) . _Default . _Coerce

-- | The upfront price of the reservation.
pUpfrontPrice :: Lens' Purchase (Maybe Text)
pUpfrontPrice = lens _pUpfrontPrice (\s a -> s {_pUpfrontPrice = a})

-- | The payment option for the reservation.
pPaymentOption :: Lens' Purchase (Maybe PaymentOption)
pPaymentOption = lens _pPaymentOption (\s a -> s {_pPaymentOption = a})

-- | The duration of the reservation's term in seconds.
pDuration :: Lens' Purchase (Maybe Int)
pDuration = lens _pDuration (\s a -> s {_pDuration = a})

-- | The ID of the reservation.
pHostReservationId :: Lens' Purchase (Maybe Text)
pHostReservationId = lens _pHostReservationId (\s a -> s {_pHostReservationId = a})

-- | The currency in which the @UpfrontPrice@ and @HourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
pCurrencyCode :: Lens' Purchase (Maybe CurrencyCodeValues)
pCurrencyCode = lens _pCurrencyCode (\s a -> s {_pCurrencyCode = a})

-- | The hourly price of the reservation per hour.
pHourlyPrice :: Lens' Purchase (Maybe Text)
pHourlyPrice = lens _pHourlyPrice (\s a -> s {_pHourlyPrice = a})

instance FromXML Purchase where
  parseXML x =
    Purchase'
      <$> (x .@? "instanceFamily")
      <*> ( x .@? "hostIdSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "upfrontPrice")
      <*> (x .@? "paymentOption")
      <*> (x .@? "duration")
      <*> (x .@? "hostReservationId")
      <*> (x .@? "currencyCode")
      <*> (x .@? "hourlyPrice")

instance Hashable Purchase

instance NFData Purchase
