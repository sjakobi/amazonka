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
-- Module      : Network.AWS.Redshift.GetReservedNodeExchangeOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.GetReservedNodeExchangeOfferings
  ( -- * Creating a Request
    getReservedNodeExchangeOfferings,
    GetReservedNodeExchangeOfferings,

    -- * Request Lenses
    grneoMarker,
    grneoMaxRecords,
    grneoReservedNodeId,

    -- * Destructuring the Response
    getReservedNodeExchangeOfferingsResponse,
    GetReservedNodeExchangeOfferingsResponse,

    -- * Response Lenses
    grneorrsReservedNodeOfferings,
    grneorrsMarker,
    grneorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'getReservedNodeExchangeOfferings' smart constructor.
data GetReservedNodeExchangeOfferings = GetReservedNodeExchangeOfferings'
  { _grneoMarker ::
      !( Maybe
           Text
       ),
    _grneoMaxRecords ::
      !( Maybe
           Int
       ),
    _grneoReservedNodeId ::
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

-- | Creates a value of 'GetReservedNodeExchangeOfferings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grneoMarker' - A value that indicates the starting point for the next set of ReservedNodeOfferings.
--
-- * 'grneoMaxRecords' - An integer setting the maximum number of ReservedNodeOfferings to retrieve.
--
-- * 'grneoReservedNodeId' - A string representing the node identifier for the DC1 Reserved Node to be exchanged.
getReservedNodeExchangeOfferings ::
  -- | 'grneoReservedNodeId'
  Text ->
  GetReservedNodeExchangeOfferings
getReservedNodeExchangeOfferings pReservedNodeId_ =
  GetReservedNodeExchangeOfferings'
    { _grneoMarker =
        Nothing,
      _grneoMaxRecords = Nothing,
      _grneoReservedNodeId = pReservedNodeId_
    }

-- | A value that indicates the starting point for the next set of ReservedNodeOfferings.
grneoMarker :: Lens' GetReservedNodeExchangeOfferings (Maybe Text)
grneoMarker = lens _grneoMarker (\s a -> s {_grneoMarker = a})

-- | An integer setting the maximum number of ReservedNodeOfferings to retrieve.
grneoMaxRecords :: Lens' GetReservedNodeExchangeOfferings (Maybe Int)
grneoMaxRecords = lens _grneoMaxRecords (\s a -> s {_grneoMaxRecords = a})

-- | A string representing the node identifier for the DC1 Reserved Node to be exchanged.
grneoReservedNodeId :: Lens' GetReservedNodeExchangeOfferings Text
grneoReservedNodeId = lens _grneoReservedNodeId (\s a -> s {_grneoReservedNodeId = a})

instance AWSPager GetReservedNodeExchangeOfferings where
  page rq rs
    | stop (rs ^. grneorrsMarker) = Nothing
    | stop (rs ^. grneorrsReservedNodeOfferings) =
      Nothing
    | otherwise =
      Just $ rq & grneoMarker .~ rs ^. grneorrsMarker

instance AWSRequest GetReservedNodeExchangeOfferings where
  type
    Rs GetReservedNodeExchangeOfferings =
      GetReservedNodeExchangeOfferingsResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "GetReservedNodeExchangeOfferingsResult"
      ( \s h x ->
          GetReservedNodeExchangeOfferingsResponse'
            <$> ( x .@? "ReservedNodeOfferings" .!@ mempty
                    >>= may (parseXMLList "ReservedNodeOffering")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable GetReservedNodeExchangeOfferings

instance NFData GetReservedNodeExchangeOfferings

instance ToHeaders GetReservedNodeExchangeOfferings where
  toHeaders = const mempty

instance ToPath GetReservedNodeExchangeOfferings where
  toPath = const "/"

instance ToQuery GetReservedNodeExchangeOfferings where
  toQuery GetReservedNodeExchangeOfferings' {..} =
    mconcat
      [ "Action"
          =: ("GetReservedNodeExchangeOfferings" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Marker" =: _grneoMarker,
        "MaxRecords" =: _grneoMaxRecords,
        "ReservedNodeId" =: _grneoReservedNodeId
      ]

-- | /See:/ 'getReservedNodeExchangeOfferingsResponse' smart constructor.
data GetReservedNodeExchangeOfferingsResponse = GetReservedNodeExchangeOfferingsResponse'
  { _grneorrsReservedNodeOfferings ::
      !( Maybe
           [ReservedNodeOffering]
       ),
    _grneorrsMarker ::
      !( Maybe
           Text
       ),
    _grneorrsResponseStatus ::
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

-- | Creates a value of 'GetReservedNodeExchangeOfferingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grneorrsReservedNodeOfferings' - Returns an array of 'ReservedNodeOffering' objects.
--
-- * 'grneorrsMarker' - An optional parameter that specifies the starting point for returning a set of response records. When the results of a @GetReservedNodeExchangeOfferings@ request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request.
--
-- * 'grneorrsResponseStatus' - -- | The response status code.
getReservedNodeExchangeOfferingsResponse ::
  -- | 'grneorrsResponseStatus'
  Int ->
  GetReservedNodeExchangeOfferingsResponse
getReservedNodeExchangeOfferingsResponse
  pResponseStatus_ =
    GetReservedNodeExchangeOfferingsResponse'
      { _grneorrsReservedNodeOfferings =
          Nothing,
        _grneorrsMarker = Nothing,
        _grneorrsResponseStatus =
          pResponseStatus_
      }

-- | Returns an array of 'ReservedNodeOffering' objects.
grneorrsReservedNodeOfferings :: Lens' GetReservedNodeExchangeOfferingsResponse [ReservedNodeOffering]
grneorrsReservedNodeOfferings = lens _grneorrsReservedNodeOfferings (\s a -> s {_grneorrsReservedNodeOfferings = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point for returning a set of response records. When the results of a @GetReservedNodeExchangeOfferings@ request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the marker field of the response. You can retrieve the next set of response records by providing the returned marker value in the marker parameter and retrying the request.
grneorrsMarker :: Lens' GetReservedNodeExchangeOfferingsResponse (Maybe Text)
grneorrsMarker = lens _grneorrsMarker (\s a -> s {_grneorrsMarker = a})

-- | -- | The response status code.
grneorrsResponseStatus :: Lens' GetReservedNodeExchangeOfferingsResponse Int
grneorrsResponseStatus = lens _grneorrsResponseStatus (\s a -> s {_grneorrsResponseStatus = a})

instance
  NFData
    GetReservedNodeExchangeOfferingsResponse
