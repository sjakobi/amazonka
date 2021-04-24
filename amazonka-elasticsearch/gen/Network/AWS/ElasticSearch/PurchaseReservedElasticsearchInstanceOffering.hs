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
-- Module      : Network.AWS.ElasticSearch.PurchaseReservedElasticsearchInstanceOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to purchase reserved Elasticsearch instances.
module Network.AWS.ElasticSearch.PurchaseReservedElasticsearchInstanceOffering
  ( -- * Creating a Request
    purchaseReservedElasticsearchInstanceOffering,
    PurchaseReservedElasticsearchInstanceOffering,

    -- * Request Lenses
    preioInstanceCount,
    preioReservedElasticsearchInstanceOfferingId,
    preioReservationName,

    -- * Destructuring the Response
    purchaseReservedElasticsearchInstanceOfferingResponse,
    PurchaseReservedElasticsearchInstanceOfferingResponse,

    -- * Response Lenses
    preiorrsReservationName,
    preiorrsReservedElasticsearchInstanceId,
    preiorrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for parameters to @PurchaseReservedElasticsearchInstanceOffering@
--
--
--
-- /See:/ 'purchaseReservedElasticsearchInstanceOffering' smart constructor.
data PurchaseReservedElasticsearchInstanceOffering = PurchaseReservedElasticsearchInstanceOffering'
  { _preioInstanceCount ::
      !( Maybe
           Nat
       ),
    _preioReservedElasticsearchInstanceOfferingId ::
      !Text,
    _preioReservationName ::
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

-- | Creates a value of 'PurchaseReservedElasticsearchInstanceOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'preioInstanceCount' - The number of Elasticsearch instances to reserve.
--
-- * 'preioReservedElasticsearchInstanceOfferingId' - The ID of the reserved Elasticsearch instance offering to purchase.
--
-- * 'preioReservationName' - A customer-specified identifier to track this reservation.
purchaseReservedElasticsearchInstanceOffering ::
  -- | 'preioReservedElasticsearchInstanceOfferingId'
  Text ->
  -- | 'preioReservationName'
  Text ->
  PurchaseReservedElasticsearchInstanceOffering
purchaseReservedElasticsearchInstanceOffering
  pReservedElasticsearchInstanceOfferingId_
  pReservationName_ =
    PurchaseReservedElasticsearchInstanceOffering'
      { _preioInstanceCount =
          Nothing,
        _preioReservedElasticsearchInstanceOfferingId =
          pReservedElasticsearchInstanceOfferingId_,
        _preioReservationName =
          pReservationName_
      }

-- | The number of Elasticsearch instances to reserve.
preioInstanceCount :: Lens' PurchaseReservedElasticsearchInstanceOffering (Maybe Natural)
preioInstanceCount = lens _preioInstanceCount (\s a -> s {_preioInstanceCount = a}) . mapping _Nat

-- | The ID of the reserved Elasticsearch instance offering to purchase.
preioReservedElasticsearchInstanceOfferingId :: Lens' PurchaseReservedElasticsearchInstanceOffering Text
preioReservedElasticsearchInstanceOfferingId = lens _preioReservedElasticsearchInstanceOfferingId (\s a -> s {_preioReservedElasticsearchInstanceOfferingId = a})

-- | A customer-specified identifier to track this reservation.
preioReservationName :: Lens' PurchaseReservedElasticsearchInstanceOffering Text
preioReservationName = lens _preioReservationName (\s a -> s {_preioReservationName = a})

instance
  AWSRequest
    PurchaseReservedElasticsearchInstanceOffering
  where
  type
    Rs PurchaseReservedElasticsearchInstanceOffering =
      PurchaseReservedElasticsearchInstanceOfferingResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          PurchaseReservedElasticsearchInstanceOfferingResponse'
            <$> (x .?> "ReservationName")
              <*> (x .?> "ReservedElasticsearchInstanceId")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    PurchaseReservedElasticsearchInstanceOffering

instance
  NFData
    PurchaseReservedElasticsearchInstanceOffering

instance
  ToHeaders
    PurchaseReservedElasticsearchInstanceOffering
  where
  toHeaders = const mempty

instance
  ToJSON
    PurchaseReservedElasticsearchInstanceOffering
  where
  toJSON
    PurchaseReservedElasticsearchInstanceOffering' {..} =
      object
        ( catMaybes
            [ ("InstanceCount" .=) <$> _preioInstanceCount,
              Just
                ( "ReservedElasticsearchInstanceOfferingId"
                    .= _preioReservedElasticsearchInstanceOfferingId
                ),
              Just ("ReservationName" .= _preioReservationName)
            ]
        )

instance
  ToPath
    PurchaseReservedElasticsearchInstanceOffering
  where
  toPath =
    const
      "/2015-01-01/es/purchaseReservedInstanceOffering"

instance
  ToQuery
    PurchaseReservedElasticsearchInstanceOffering
  where
  toQuery = const mempty

-- | Represents the output of a @PurchaseReservedElasticsearchInstanceOffering@ operation.
--
--
--
-- /See:/ 'purchaseReservedElasticsearchInstanceOfferingResponse' smart constructor.
data PurchaseReservedElasticsearchInstanceOfferingResponse = PurchaseReservedElasticsearchInstanceOfferingResponse'
  { _preiorrsReservationName ::
      !( Maybe
           Text
       ),
    _preiorrsReservedElasticsearchInstanceId ::
      !( Maybe
           Text
       ),
    _preiorrsResponseStatus ::
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

-- | Creates a value of 'PurchaseReservedElasticsearchInstanceOfferingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'preiorrsReservationName' - The customer-specified identifier used to track this reservation.
--
-- * 'preiorrsReservedElasticsearchInstanceId' - Details of the reserved Elasticsearch instance which was purchased.
--
-- * 'preiorrsResponseStatus' - -- | The response status code.
purchaseReservedElasticsearchInstanceOfferingResponse ::
  -- | 'preiorrsResponseStatus'
  Int ->
  PurchaseReservedElasticsearchInstanceOfferingResponse
purchaseReservedElasticsearchInstanceOfferingResponse
  pResponseStatus_ =
    PurchaseReservedElasticsearchInstanceOfferingResponse'
      { _preiorrsReservationName =
          Nothing,
        _preiorrsReservedElasticsearchInstanceId =
          Nothing,
        _preiorrsResponseStatus =
          pResponseStatus_
      }

-- | The customer-specified identifier used to track this reservation.
preiorrsReservationName :: Lens' PurchaseReservedElasticsearchInstanceOfferingResponse (Maybe Text)
preiorrsReservationName = lens _preiorrsReservationName (\s a -> s {_preiorrsReservationName = a})

-- | Details of the reserved Elasticsearch instance which was purchased.
preiorrsReservedElasticsearchInstanceId :: Lens' PurchaseReservedElasticsearchInstanceOfferingResponse (Maybe Text)
preiorrsReservedElasticsearchInstanceId = lens _preiorrsReservedElasticsearchInstanceId (\s a -> s {_preiorrsReservedElasticsearchInstanceId = a})

-- | -- | The response status code.
preiorrsResponseStatus :: Lens' PurchaseReservedElasticsearchInstanceOfferingResponse Int
preiorrsResponseStatus = lens _preiorrsResponseStatus (\s a -> s {_preiorrsResponseStatus = a})

instance
  NFData
    PurchaseReservedElasticsearchInstanceOfferingResponse
