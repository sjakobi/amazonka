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
-- Module      : Network.AWS.Route53Domains.ViewBilling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all the domain-related billing records for the current AWS account for a specified period
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53Domains.ViewBilling
  ( -- * Creating a Request
    viewBilling,
    ViewBilling,

    -- * Request Lenses
    vbEnd,
    vbStart,
    vbMaxItems,
    vbMarker,

    -- * Destructuring the Response
    viewBillingResponse,
    ViewBillingResponse,

    -- * Response Lenses
    vbrrsBillingRecords,
    vbrrsNextPageMarker,
    vbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The ViewBilling request includes the following elements.
--
--
--
-- /See:/ 'viewBilling' smart constructor.
data ViewBilling = ViewBilling'
  { _vbEnd ::
      !(Maybe POSIX),
    _vbStart :: !(Maybe POSIX),
    _vbMaxItems :: !(Maybe Int),
    _vbMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ViewBilling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbEnd' - The end date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
--
-- * 'vbStart' - The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
--
-- * 'vbMaxItems' - The number of billing records to be returned. Default: 20
--
-- * 'vbMarker' - For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional billing records. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element.  Constraints: The marker must match the value of @NextPageMarker@ that was returned in the previous response.
viewBilling ::
  ViewBilling
viewBilling =
  ViewBilling'
    { _vbEnd = Nothing,
      _vbStart = Nothing,
      _vbMaxItems = Nothing,
      _vbMarker = Nothing
    }

-- | The end date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
vbEnd :: Lens' ViewBilling (Maybe UTCTime)
vbEnd = lens _vbEnd (\s a -> s {_vbEnd = a}) . mapping _Time

-- | The beginning date and time for the time period for which you want a list of billing records. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
vbStart :: Lens' ViewBilling (Maybe UTCTime)
vbStart = lens _vbStart (\s a -> s {_vbStart = a}) . mapping _Time

-- | The number of billing records to be returned. Default: 20
vbMaxItems :: Lens' ViewBilling (Maybe Int)
vbMaxItems = lens _vbMaxItems (\s a -> s {_vbMaxItems = a})

-- | For an initial request for a list of billing records, omit this element. If the number of billing records that are associated with the current AWS account during the specified period is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional billing records. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element.  Constraints: The marker must match the value of @NextPageMarker@ that was returned in the previous response.
vbMarker :: Lens' ViewBilling (Maybe Text)
vbMarker = lens _vbMarker (\s a -> s {_vbMarker = a})

instance AWSPager ViewBilling where
  page rq rs
    | stop (rs ^. vbrrsNextPageMarker) = Nothing
    | stop (rs ^. vbrrsBillingRecords) = Nothing
    | otherwise =
      Just $ rq & vbMarker .~ rs ^. vbrrsNextPageMarker

instance AWSRequest ViewBilling where
  type Rs ViewBilling = ViewBillingResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          ViewBillingResponse'
            <$> (x .?> "BillingRecords" .!@ mempty)
            <*> (x .?> "NextPageMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ViewBilling

instance NFData ViewBilling

instance ToHeaders ViewBilling where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.ViewBilling" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ViewBilling where
  toJSON ViewBilling' {..} =
    object
      ( catMaybes
          [ ("End" .=) <$> _vbEnd,
            ("Start" .=) <$> _vbStart,
            ("MaxItems" .=) <$> _vbMaxItems,
            ("Marker" .=) <$> _vbMarker
          ]
      )

instance ToPath ViewBilling where
  toPath = const "/"

instance ToQuery ViewBilling where
  toQuery = const mempty

-- | The ViewBilling response includes the following elements.
--
--
--
-- /See:/ 'viewBillingResponse' smart constructor.
data ViewBillingResponse = ViewBillingResponse'
  { _vbrrsBillingRecords ::
      !(Maybe [BillingRecord]),
    _vbrrsNextPageMarker ::
      !(Maybe Text),
    _vbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ViewBillingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vbrrsBillingRecords' - A summary of billing records.
--
-- * 'vbrrsNextPageMarker' - If there are more billing records than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
--
-- * 'vbrrsResponseStatus' - -- | The response status code.
viewBillingResponse ::
  -- | 'vbrrsResponseStatus'
  Int ->
  ViewBillingResponse
viewBillingResponse pResponseStatus_ =
  ViewBillingResponse'
    { _vbrrsBillingRecords =
        Nothing,
      _vbrrsNextPageMarker = Nothing,
      _vbrrsResponseStatus = pResponseStatus_
    }

-- | A summary of billing records.
vbrrsBillingRecords :: Lens' ViewBillingResponse [BillingRecord]
vbrrsBillingRecords = lens _vbrrsBillingRecords (\s a -> s {_vbrrsBillingRecords = a}) . _Default . _Coerce

-- | If there are more billing records than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
vbrrsNextPageMarker :: Lens' ViewBillingResponse (Maybe Text)
vbrrsNextPageMarker = lens _vbrrsNextPageMarker (\s a -> s {_vbrrsNextPageMarker = a})

-- | -- | The response status code.
vbrrsResponseStatus :: Lens' ViewBillingResponse Int
vbrrsResponseStatus = lens _vbrrsResponseStatus (\s a -> s {_vbrrsResponseStatus = a})

instance NFData ViewBillingResponse
