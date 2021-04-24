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
-- Module      : Network.AWS.IoT.ListCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the certificates registered in your AWS account.
--
--
-- The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListCertificates
  ( -- * Creating a Request
    listCertificates,
    ListCertificates,

    -- * Request Lenses
    lcPageSize,
    lcAscendingOrder,
    lcMarker,

    -- * Destructuring the Response
    listCertificatesResponse,
    ListCertificatesResponse,

    -- * Response Lenses
    lcrrsNextMarker,
    lcrrsCertificates,
    lcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListCertificates operation.
--
--
--
-- /See:/ 'listCertificates' smart constructor.
data ListCertificates = ListCertificates'
  { _lcPageSize ::
      !(Maybe Nat),
    _lcAscendingOrder :: !(Maybe Bool),
    _lcMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcPageSize' - The result page size.
--
-- * 'lcAscendingOrder' - Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
--
-- * 'lcMarker' - The marker for the next set of results.
listCertificates ::
  ListCertificates
listCertificates =
  ListCertificates'
    { _lcPageSize = Nothing,
      _lcAscendingOrder = Nothing,
      _lcMarker = Nothing
    }

-- | The result page size.
lcPageSize :: Lens' ListCertificates (Maybe Natural)
lcPageSize = lens _lcPageSize (\s a -> s {_lcPageSize = a}) . mapping _Nat

-- | Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
lcAscendingOrder :: Lens' ListCertificates (Maybe Bool)
lcAscendingOrder = lens _lcAscendingOrder (\s a -> s {_lcAscendingOrder = a})

-- | The marker for the next set of results.
lcMarker :: Lens' ListCertificates (Maybe Text)
lcMarker = lens _lcMarker (\s a -> s {_lcMarker = a})

instance AWSPager ListCertificates where
  page rq rs
    | stop (rs ^. lcrrsNextMarker) = Nothing
    | stop (rs ^. lcrrsCertificates) = Nothing
    | otherwise =
      Just $ rq & lcMarker .~ rs ^. lcrrsNextMarker

instance AWSRequest ListCertificates where
  type Rs ListCertificates = ListCertificatesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListCertificatesResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "certificates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCertificates

instance NFData ListCertificates

instance ToHeaders ListCertificates where
  toHeaders = const mempty

instance ToPath ListCertificates where
  toPath = const "/certificates"

instance ToQuery ListCertificates where
  toQuery ListCertificates' {..} =
    mconcat
      [ "pageSize" =: _lcPageSize,
        "isAscendingOrder" =: _lcAscendingOrder,
        "marker" =: _lcMarker
      ]

-- | The output of the ListCertificates operation.
--
--
--
-- /See:/ 'listCertificatesResponse' smart constructor.
data ListCertificatesResponse = ListCertificatesResponse'
  { _lcrrsNextMarker ::
      !(Maybe Text),
    _lcrrsCertificates ::
      !( Maybe
           [Certificate]
       ),
    _lcrrsResponseStatus ::
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

-- | Creates a value of 'ListCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrsNextMarker' - The marker for the next set of results, or null if there are no additional results.
--
-- * 'lcrrsCertificates' - The descriptions of the certificates.
--
-- * 'lcrrsResponseStatus' - -- | The response status code.
listCertificatesResponse ::
  -- | 'lcrrsResponseStatus'
  Int ->
  ListCertificatesResponse
listCertificatesResponse pResponseStatus_ =
  ListCertificatesResponse'
    { _lcrrsNextMarker =
        Nothing,
      _lcrrsCertificates = Nothing,
      _lcrrsResponseStatus = pResponseStatus_
    }

-- | The marker for the next set of results, or null if there are no additional results.
lcrrsNextMarker :: Lens' ListCertificatesResponse (Maybe Text)
lcrrsNextMarker = lens _lcrrsNextMarker (\s a -> s {_lcrrsNextMarker = a})

-- | The descriptions of the certificates.
lcrrsCertificates :: Lens' ListCertificatesResponse [Certificate]
lcrrsCertificates = lens _lcrrsCertificates (\s a -> s {_lcrrsCertificates = a}) . _Default . _Coerce

-- | -- | The response status code.
lcrrsResponseStatus :: Lens' ListCertificatesResponse Int
lcrrsResponseStatus = lens _lcrrsResponseStatus (\s a -> s {_lcrrsResponseStatus = a})

instance NFData ListCertificatesResponse
