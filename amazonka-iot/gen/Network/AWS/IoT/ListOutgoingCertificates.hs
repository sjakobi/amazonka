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
-- Module      : Network.AWS.IoT.ListOutgoingCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists certificates that are being transferred but not yet accepted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListOutgoingCertificates
  ( -- * Creating a Request
    listOutgoingCertificates,
    ListOutgoingCertificates,

    -- * Request Lenses
    locPageSize,
    locAscendingOrder,
    locMarker,

    -- * Destructuring the Response
    listOutgoingCertificatesResponse,
    ListOutgoingCertificatesResponse,

    -- * Response Lenses
    locrrsNextMarker,
    locrrsOutgoingCertificates,
    locrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input to the ListOutgoingCertificates operation.
--
--
--
-- /See:/ 'listOutgoingCertificates' smart constructor.
data ListOutgoingCertificates = ListOutgoingCertificates'
  { _locPageSize ::
      !(Maybe Nat),
    _locAscendingOrder ::
      !(Maybe Bool),
    _locMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOutgoingCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locPageSize' - The result page size.
--
-- * 'locAscendingOrder' - Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
--
-- * 'locMarker' - The marker for the next set of results.
listOutgoingCertificates ::
  ListOutgoingCertificates
listOutgoingCertificates =
  ListOutgoingCertificates'
    { _locPageSize = Nothing,
      _locAscendingOrder = Nothing,
      _locMarker = Nothing
    }

-- | The result page size.
locPageSize :: Lens' ListOutgoingCertificates (Maybe Natural)
locPageSize = lens _locPageSize (\s a -> s {_locPageSize = a}) . mapping _Nat

-- | Specifies the order for results. If True, the results are returned in ascending order, based on the creation date.
locAscendingOrder :: Lens' ListOutgoingCertificates (Maybe Bool)
locAscendingOrder = lens _locAscendingOrder (\s a -> s {_locAscendingOrder = a})

-- | The marker for the next set of results.
locMarker :: Lens' ListOutgoingCertificates (Maybe Text)
locMarker = lens _locMarker (\s a -> s {_locMarker = a})

instance AWSPager ListOutgoingCertificates where
  page rq rs
    | stop (rs ^. locrrsNextMarker) = Nothing
    | stop (rs ^. locrrsOutgoingCertificates) = Nothing
    | otherwise =
      Just $ rq & locMarker .~ rs ^. locrrsNextMarker

instance AWSRequest ListOutgoingCertificates where
  type
    Rs ListOutgoingCertificates =
      ListOutgoingCertificatesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListOutgoingCertificatesResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "outgoingCertificates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOutgoingCertificates

instance NFData ListOutgoingCertificates

instance ToHeaders ListOutgoingCertificates where
  toHeaders = const mempty

instance ToPath ListOutgoingCertificates where
  toPath = const "/certificates-out-going"

instance ToQuery ListOutgoingCertificates where
  toQuery ListOutgoingCertificates' {..} =
    mconcat
      [ "pageSize" =: _locPageSize,
        "isAscendingOrder" =: _locAscendingOrder,
        "marker" =: _locMarker
      ]

-- | The output from the ListOutgoingCertificates operation.
--
--
--
-- /See:/ 'listOutgoingCertificatesResponse' smart constructor.
data ListOutgoingCertificatesResponse = ListOutgoingCertificatesResponse'
  { _locrrsNextMarker ::
      !( Maybe
           Text
       ),
    _locrrsOutgoingCertificates ::
      !( Maybe
           [OutgoingCertificate]
       ),
    _locrrsResponseStatus ::
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

-- | Creates a value of 'ListOutgoingCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locrrsNextMarker' - The marker for the next set of results.
--
-- * 'locrrsOutgoingCertificates' - The certificates that are being transferred but not yet accepted.
--
-- * 'locrrsResponseStatus' - -- | The response status code.
listOutgoingCertificatesResponse ::
  -- | 'locrrsResponseStatus'
  Int ->
  ListOutgoingCertificatesResponse
listOutgoingCertificatesResponse pResponseStatus_ =
  ListOutgoingCertificatesResponse'
    { _locrrsNextMarker =
        Nothing,
      _locrrsOutgoingCertificates = Nothing,
      _locrrsResponseStatus = pResponseStatus_
    }

-- | The marker for the next set of results.
locrrsNextMarker :: Lens' ListOutgoingCertificatesResponse (Maybe Text)
locrrsNextMarker = lens _locrrsNextMarker (\s a -> s {_locrrsNextMarker = a})

-- | The certificates that are being transferred but not yet accepted.
locrrsOutgoingCertificates :: Lens' ListOutgoingCertificatesResponse [OutgoingCertificate]
locrrsOutgoingCertificates = lens _locrrsOutgoingCertificates (\s a -> s {_locrrsOutgoingCertificates = a}) . _Default . _Coerce

-- | -- | The response status code.
locrrsResponseStatus :: Lens' ListOutgoingCertificatesResponse Int
locrrsResponseStatus = lens _locrrsResponseStatus (\s a -> s {_locrrsResponseStatus = a})

instance NFData ListOutgoingCertificatesResponse
