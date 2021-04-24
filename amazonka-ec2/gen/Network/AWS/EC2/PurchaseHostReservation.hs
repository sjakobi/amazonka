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
-- Module      : Network.AWS.EC2.PurchaseHostReservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.
module Network.AWS.EC2.PurchaseHostReservation
  ( -- * Creating a Request
    purchaseHostReservation,
    PurchaseHostReservation,

    -- * Request Lenses
    phrTagSpecifications,
    phrCurrencyCode,
    phrLimitPrice,
    phrClientToken,
    phrHostIdSet,
    phrOfferingId,

    -- * Destructuring the Response
    purchaseHostReservationResponse,
    PurchaseHostReservationResponse,

    -- * Response Lenses
    phrrrsTotalUpfrontPrice,
    phrrrsCurrencyCode,
    phrrrsPurchase,
    phrrrsTotalHourlyPrice,
    phrrrsClientToken,
    phrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'purchaseHostReservation' smart constructor.
data PurchaseHostReservation = PurchaseHostReservation'
  { _phrTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _phrCurrencyCode ::
      !( Maybe
           CurrencyCodeValues
       ),
    _phrLimitPrice ::
      !(Maybe Text),
    _phrClientToken ::
      !(Maybe Text),
    _phrHostIdSet ::
      ![Text],
    _phrOfferingId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PurchaseHostReservation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phrTagSpecifications' - The tags to apply to the Dedicated Host Reservation during purchase.
--
-- * 'phrCurrencyCode' - The currency in which the @totalUpfrontPrice@ , @LimitPrice@ , and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
--
-- * 'phrLimitPrice' - The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is @USD@ . For example, to indicate a limit price of USD 100, specify 100.00.
--
-- * 'phrClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'phrHostIdSet' - The IDs of the Dedicated Hosts with which the reservation will be associated.
--
-- * 'phrOfferingId' - The ID of the offering.
purchaseHostReservation ::
  -- | 'phrOfferingId'
  Text ->
  PurchaseHostReservation
purchaseHostReservation pOfferingId_ =
  PurchaseHostReservation'
    { _phrTagSpecifications =
        Nothing,
      _phrCurrencyCode = Nothing,
      _phrLimitPrice = Nothing,
      _phrClientToken = Nothing,
      _phrHostIdSet = mempty,
      _phrOfferingId = pOfferingId_
    }

-- | The tags to apply to the Dedicated Host Reservation during purchase.
phrTagSpecifications :: Lens' PurchaseHostReservation [TagSpecification]
phrTagSpecifications = lens _phrTagSpecifications (\s a -> s {_phrTagSpecifications = a}) . _Default . _Coerce

-- | The currency in which the @totalUpfrontPrice@ , @LimitPrice@ , and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
phrCurrencyCode :: Lens' PurchaseHostReservation (Maybe CurrencyCodeValues)
phrCurrencyCode = lens _phrCurrencyCode (\s a -> s {_phrCurrencyCode = a})

-- | The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is @USD@ . For example, to indicate a limit price of USD 100, specify 100.00.
phrLimitPrice :: Lens' PurchaseHostReservation (Maybe Text)
phrLimitPrice = lens _phrLimitPrice (\s a -> s {_phrLimitPrice = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
phrClientToken :: Lens' PurchaseHostReservation (Maybe Text)
phrClientToken = lens _phrClientToken (\s a -> s {_phrClientToken = a})

-- | The IDs of the Dedicated Hosts with which the reservation will be associated.
phrHostIdSet :: Lens' PurchaseHostReservation [Text]
phrHostIdSet = lens _phrHostIdSet (\s a -> s {_phrHostIdSet = a}) . _Coerce

-- | The ID of the offering.
phrOfferingId :: Lens' PurchaseHostReservation Text
phrOfferingId = lens _phrOfferingId (\s a -> s {_phrOfferingId = a})

instance AWSRequest PurchaseHostReservation where
  type
    Rs PurchaseHostReservation =
      PurchaseHostReservationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          PurchaseHostReservationResponse'
            <$> (x .@? "totalUpfrontPrice")
            <*> (x .@? "currencyCode")
            <*> ( x .@? "purchase" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "totalHourlyPrice")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance Hashable PurchaseHostReservation

instance NFData PurchaseHostReservation

instance ToHeaders PurchaseHostReservation where
  toHeaders = const mempty

instance ToPath PurchaseHostReservation where
  toPath = const "/"

instance ToQuery PurchaseHostReservation where
  toQuery PurchaseHostReservation' {..} =
    mconcat
      [ "Action"
          =: ("PurchaseHostReservation" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _phrTagSpecifications
          ),
        "CurrencyCode" =: _phrCurrencyCode,
        "LimitPrice" =: _phrLimitPrice,
        "ClientToken" =: _phrClientToken,
        toQueryList "HostIdSet" _phrHostIdSet,
        "OfferingId" =: _phrOfferingId
      ]

-- | /See:/ 'purchaseHostReservationResponse' smart constructor.
data PurchaseHostReservationResponse = PurchaseHostReservationResponse'
  { _phrrrsTotalUpfrontPrice ::
      !( Maybe
           Text
       ),
    _phrrrsCurrencyCode ::
      !( Maybe
           CurrencyCodeValues
       ),
    _phrrrsPurchase ::
      !( Maybe
           [Purchase]
       ),
    _phrrrsTotalHourlyPrice ::
      !( Maybe
           Text
       ),
    _phrrrsClientToken ::
      !( Maybe
           Text
       ),
    _phrrrsResponseStatus ::
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

-- | Creates a value of 'PurchaseHostReservationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'phrrrsTotalUpfrontPrice' - The total amount charged to your account when you purchase the reservation.
--
-- * 'phrrrsCurrencyCode' - The currency in which the @totalUpfrontPrice@ and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
--
-- * 'phrrrsPurchase' - Describes the details of the purchase.
--
-- * 'phrrrsTotalHourlyPrice' - The total hourly price of the reservation calculated per hour.
--
-- * 'phrrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'phrrrsResponseStatus' - -- | The response status code.
purchaseHostReservationResponse ::
  -- | 'phrrrsResponseStatus'
  Int ->
  PurchaseHostReservationResponse
purchaseHostReservationResponse pResponseStatus_ =
  PurchaseHostReservationResponse'
    { _phrrrsTotalUpfrontPrice =
        Nothing,
      _phrrrsCurrencyCode = Nothing,
      _phrrrsPurchase = Nothing,
      _phrrrsTotalHourlyPrice = Nothing,
      _phrrrsClientToken = Nothing,
      _phrrrsResponseStatus = pResponseStatus_
    }

-- | The total amount charged to your account when you purchase the reservation.
phrrrsTotalUpfrontPrice :: Lens' PurchaseHostReservationResponse (Maybe Text)
phrrrsTotalUpfrontPrice = lens _phrrrsTotalUpfrontPrice (\s a -> s {_phrrrsTotalUpfrontPrice = a})

-- | The currency in which the @totalUpfrontPrice@ and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
phrrrsCurrencyCode :: Lens' PurchaseHostReservationResponse (Maybe CurrencyCodeValues)
phrrrsCurrencyCode = lens _phrrrsCurrencyCode (\s a -> s {_phrrrsCurrencyCode = a})

-- | Describes the details of the purchase.
phrrrsPurchase :: Lens' PurchaseHostReservationResponse [Purchase]
phrrrsPurchase = lens _phrrrsPurchase (\s a -> s {_phrrrsPurchase = a}) . _Default . _Coerce

-- | The total hourly price of the reservation calculated per hour.
phrrrsTotalHourlyPrice :: Lens' PurchaseHostReservationResponse (Maybe Text)
phrrrsTotalHourlyPrice = lens _phrrrsTotalHourlyPrice (\s a -> s {_phrrrsTotalHourlyPrice = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
phrrrsClientToken :: Lens' PurchaseHostReservationResponse (Maybe Text)
phrrrsClientToken = lens _phrrrsClientToken (\s a -> s {_phrrrsClientToken = a})

-- | -- | The response status code.
phrrrsResponseStatus :: Lens' PurchaseHostReservationResponse Int
phrrrsResponseStatus = lens _phrrrsResponseStatus (\s a -> s {_phrrrsResponseStatus = a})

instance NFData PurchaseHostReservationResponse
