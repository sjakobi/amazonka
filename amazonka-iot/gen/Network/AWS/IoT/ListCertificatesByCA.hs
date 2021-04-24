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
-- Module      : Network.AWS.IoT.ListCertificatesByCA
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the device certificates signed by the specified CA certificate.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListCertificatesByCA
  ( -- * Creating a Request
    listCertificatesByCA,
    ListCertificatesByCA,

    -- * Request Lenses
    lcbcaPageSize,
    lcbcaAscendingOrder,
    lcbcaMarker,
    lcbcaCaCertificateId,

    -- * Destructuring the Response
    listCertificatesByCAResponse,
    ListCertificatesByCAResponse,

    -- * Response Lenses
    lcbcarrsNextMarker,
    lcbcarrsCertificates,
    lcbcarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input to the ListCertificatesByCA operation.
--
--
--
-- /See:/ 'listCertificatesByCA' smart constructor.
data ListCertificatesByCA = ListCertificatesByCA'
  { _lcbcaPageSize ::
      !(Maybe Nat),
    _lcbcaAscendingOrder ::
      !(Maybe Bool),
    _lcbcaMarker :: !(Maybe Text),
    _lcbcaCaCertificateId ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCertificatesByCA' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbcaPageSize' - The result page size.
--
-- * 'lcbcaAscendingOrder' - Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
--
-- * 'lcbcaMarker' - The marker for the next set of results.
--
-- * 'lcbcaCaCertificateId' - The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.
listCertificatesByCA ::
  -- | 'lcbcaCaCertificateId'
  Text ->
  ListCertificatesByCA
listCertificatesByCA pCaCertificateId_ =
  ListCertificatesByCA'
    { _lcbcaPageSize = Nothing,
      _lcbcaAscendingOrder = Nothing,
      _lcbcaMarker = Nothing,
      _lcbcaCaCertificateId = pCaCertificateId_
    }

-- | The result page size.
lcbcaPageSize :: Lens' ListCertificatesByCA (Maybe Natural)
lcbcaPageSize = lens _lcbcaPageSize (\s a -> s {_lcbcaPageSize = a}) . mapping _Nat

-- | Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
lcbcaAscendingOrder :: Lens' ListCertificatesByCA (Maybe Bool)
lcbcaAscendingOrder = lens _lcbcaAscendingOrder (\s a -> s {_lcbcaAscendingOrder = a})

-- | The marker for the next set of results.
lcbcaMarker :: Lens' ListCertificatesByCA (Maybe Text)
lcbcaMarker = lens _lcbcaMarker (\s a -> s {_lcbcaMarker = a})

-- | The ID of the CA certificate. This operation will list all registered device certificate that were signed by this CA certificate.
lcbcaCaCertificateId :: Lens' ListCertificatesByCA Text
lcbcaCaCertificateId = lens _lcbcaCaCertificateId (\s a -> s {_lcbcaCaCertificateId = a})

instance AWSPager ListCertificatesByCA where
  page rq rs
    | stop (rs ^. lcbcarrsNextMarker) = Nothing
    | stop (rs ^. lcbcarrsCertificates) = Nothing
    | otherwise =
      Just $ rq & lcbcaMarker .~ rs ^. lcbcarrsNextMarker

instance AWSRequest ListCertificatesByCA where
  type
    Rs ListCertificatesByCA =
      ListCertificatesByCAResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListCertificatesByCAResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "certificates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCertificatesByCA

instance NFData ListCertificatesByCA

instance ToHeaders ListCertificatesByCA where
  toHeaders = const mempty

instance ToPath ListCertificatesByCA where
  toPath ListCertificatesByCA' {..} =
    mconcat
      ["/certificates-by-ca/", toBS _lcbcaCaCertificateId]

instance ToQuery ListCertificatesByCA where
  toQuery ListCertificatesByCA' {..} =
    mconcat
      [ "pageSize" =: _lcbcaPageSize,
        "isAscendingOrder" =: _lcbcaAscendingOrder,
        "marker" =: _lcbcaMarker
      ]

-- | The output of the ListCertificatesByCA operation.
--
--
--
-- /See:/ 'listCertificatesByCAResponse' smart constructor.
data ListCertificatesByCAResponse = ListCertificatesByCAResponse'
  { _lcbcarrsNextMarker ::
      !(Maybe Text),
    _lcbcarrsCertificates ::
      !( Maybe
           [Certificate]
       ),
    _lcbcarrsResponseStatus ::
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

-- | Creates a value of 'ListCertificatesByCAResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbcarrsNextMarker' - The marker for the next set of results, or null if there are no additional results.
--
-- * 'lcbcarrsCertificates' - The device certificates signed by the specified CA certificate.
--
-- * 'lcbcarrsResponseStatus' - -- | The response status code.
listCertificatesByCAResponse ::
  -- | 'lcbcarrsResponseStatus'
  Int ->
  ListCertificatesByCAResponse
listCertificatesByCAResponse pResponseStatus_ =
  ListCertificatesByCAResponse'
    { _lcbcarrsNextMarker =
        Nothing,
      _lcbcarrsCertificates = Nothing,
      _lcbcarrsResponseStatus = pResponseStatus_
    }

-- | The marker for the next set of results, or null if there are no additional results.
lcbcarrsNextMarker :: Lens' ListCertificatesByCAResponse (Maybe Text)
lcbcarrsNextMarker = lens _lcbcarrsNextMarker (\s a -> s {_lcbcarrsNextMarker = a})

-- | The device certificates signed by the specified CA certificate.
lcbcarrsCertificates :: Lens' ListCertificatesByCAResponse [Certificate]
lcbcarrsCertificates = lens _lcbcarrsCertificates (\s a -> s {_lcbcarrsCertificates = a}) . _Default . _Coerce

-- | -- | The response status code.
lcbcarrsResponseStatus :: Lens' ListCertificatesByCAResponse Int
lcbcarrsResponseStatus = lens _lcbcarrsResponseStatus (\s a -> s {_lcbcarrsResponseStatus = a})

instance NFData ListCertificatesByCAResponse
