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
-- Module      : Network.AWS.EC2.GetHostReservationPurchasePreview
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.
--
--
-- This is a preview of the 'PurchaseHostReservation' action and does not result in the offering being purchased.
module Network.AWS.EC2.GetHostReservationPurchasePreview
  ( -- * Creating a Request
    getHostReservationPurchasePreview,
    GetHostReservationPurchasePreview,

    -- * Request Lenses
    ghrppHostIdSet,
    ghrppOfferingId,

    -- * Destructuring the Response
    getHostReservationPurchasePreviewResponse,
    GetHostReservationPurchasePreviewResponse,

    -- * Response Lenses
    ghrpprrsTotalUpfrontPrice,
    ghrpprrsCurrencyCode,
    ghrpprrsPurchase,
    ghrpprrsTotalHourlyPrice,
    ghrpprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getHostReservationPurchasePreview' smart constructor.
data GetHostReservationPurchasePreview = GetHostReservationPurchasePreview'
  { _ghrppHostIdSet ::
      ![Text],
    _ghrppOfferingId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetHostReservationPurchasePreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghrppHostIdSet' - The IDs of the Dedicated Hosts with which the reservation is associated.
--
-- * 'ghrppOfferingId' - The offering ID of the reservation.
getHostReservationPurchasePreview ::
  -- | 'ghrppOfferingId'
  Text ->
  GetHostReservationPurchasePreview
getHostReservationPurchasePreview pOfferingId_ =
  GetHostReservationPurchasePreview'
    { _ghrppHostIdSet =
        mempty,
      _ghrppOfferingId = pOfferingId_
    }

-- | The IDs of the Dedicated Hosts with which the reservation is associated.
ghrppHostIdSet :: Lens' GetHostReservationPurchasePreview [Text]
ghrppHostIdSet = lens _ghrppHostIdSet (\s a -> s {_ghrppHostIdSet = a}) . _Coerce

-- | The offering ID of the reservation.
ghrppOfferingId :: Lens' GetHostReservationPurchasePreview Text
ghrppOfferingId = lens _ghrppOfferingId (\s a -> s {_ghrppOfferingId = a})

instance AWSRequest GetHostReservationPurchasePreview where
  type
    Rs GetHostReservationPurchasePreview =
      GetHostReservationPurchasePreviewResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetHostReservationPurchasePreviewResponse'
            <$> (x .@? "totalUpfrontPrice")
            <*> (x .@? "currencyCode")
            <*> ( x .@? "purchase" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "totalHourlyPrice")
            <*> (pure (fromEnum s))
      )

instance Hashable GetHostReservationPurchasePreview

instance NFData GetHostReservationPurchasePreview

instance ToHeaders GetHostReservationPurchasePreview where
  toHeaders = const mempty

instance ToPath GetHostReservationPurchasePreview where
  toPath = const "/"

instance ToQuery GetHostReservationPurchasePreview where
  toQuery GetHostReservationPurchasePreview' {..} =
    mconcat
      [ "Action"
          =: ("GetHostReservationPurchasePreview" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQueryList "HostIdSet" _ghrppHostIdSet,
        "OfferingId" =: _ghrppOfferingId
      ]

-- | /See:/ 'getHostReservationPurchasePreviewResponse' smart constructor.
data GetHostReservationPurchasePreviewResponse = GetHostReservationPurchasePreviewResponse'
  { _ghrpprrsTotalUpfrontPrice ::
      !( Maybe
           Text
       ),
    _ghrpprrsCurrencyCode ::
      !( Maybe
           CurrencyCodeValues
       ),
    _ghrpprrsPurchase ::
      !( Maybe
           [Purchase]
       ),
    _ghrpprrsTotalHourlyPrice ::
      !( Maybe
           Text
       ),
    _ghrpprrsResponseStatus ::
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

-- | Creates a value of 'GetHostReservationPurchasePreviewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghrpprrsTotalUpfrontPrice' - The potential total upfront price. This is billed immediately.
--
-- * 'ghrpprrsCurrencyCode' - The currency in which the @totalUpfrontPrice@ and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
--
-- * 'ghrpprrsPurchase' - The purchase information of the Dedicated Host reservation and the Dedicated Hosts associated with it.
--
-- * 'ghrpprrsTotalHourlyPrice' - The potential total hourly price of the reservation per hour.
--
-- * 'ghrpprrsResponseStatus' - -- | The response status code.
getHostReservationPurchasePreviewResponse ::
  -- | 'ghrpprrsResponseStatus'
  Int ->
  GetHostReservationPurchasePreviewResponse
getHostReservationPurchasePreviewResponse
  pResponseStatus_ =
    GetHostReservationPurchasePreviewResponse'
      { _ghrpprrsTotalUpfrontPrice =
          Nothing,
        _ghrpprrsCurrencyCode = Nothing,
        _ghrpprrsPurchase = Nothing,
        _ghrpprrsTotalHourlyPrice =
          Nothing,
        _ghrpprrsResponseStatus =
          pResponseStatus_
      }

-- | The potential total upfront price. This is billed immediately.
ghrpprrsTotalUpfrontPrice :: Lens' GetHostReservationPurchasePreviewResponse (Maybe Text)
ghrpprrsTotalUpfrontPrice = lens _ghrpprrsTotalUpfrontPrice (\s a -> s {_ghrpprrsTotalUpfrontPrice = a})

-- | The currency in which the @totalUpfrontPrice@ and @totalHourlyPrice@ amounts are specified. At this time, the only supported currency is @USD@ .
ghrpprrsCurrencyCode :: Lens' GetHostReservationPurchasePreviewResponse (Maybe CurrencyCodeValues)
ghrpprrsCurrencyCode = lens _ghrpprrsCurrencyCode (\s a -> s {_ghrpprrsCurrencyCode = a})

-- | The purchase information of the Dedicated Host reservation and the Dedicated Hosts associated with it.
ghrpprrsPurchase :: Lens' GetHostReservationPurchasePreviewResponse [Purchase]
ghrpprrsPurchase = lens _ghrpprrsPurchase (\s a -> s {_ghrpprrsPurchase = a}) . _Default . _Coerce

-- | The potential total hourly price of the reservation per hour.
ghrpprrsTotalHourlyPrice :: Lens' GetHostReservationPurchasePreviewResponse (Maybe Text)
ghrpprrsTotalHourlyPrice = lens _ghrpprrsTotalHourlyPrice (\s a -> s {_ghrpprrsTotalHourlyPrice = a})

-- | -- | The response status code.
ghrpprrsResponseStatus :: Lens' GetHostReservationPurchasePreviewResponse Int
ghrpprrsResponseStatus = lens _ghrpprrsResponseStatus (\s a -> s {_ghrpprrsResponseStatus = a})

instance
  NFData
    GetHostReservationPurchasePreviewResponse
