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
-- Module      : Network.AWS.IoT.ListCACertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the CA certificates registered for your AWS account.
--
--
-- The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListCACertificates
  ( -- * Creating a Request
    listCACertificates,
    ListCACertificates,

    -- * Request Lenses
    lcacPageSize,
    lcacAscendingOrder,
    lcacMarker,

    -- * Destructuring the Response
    listCACertificatesResponse,
    ListCACertificatesResponse,

    -- * Response Lenses
    lcacrrsNextMarker,
    lcacrrsCertificates,
    lcacrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input for the ListCACertificates operation.
--
--
--
-- /See:/ 'listCACertificates' smart constructor.
data ListCACertificates = ListCACertificates'
  { _lcacPageSize ::
      !(Maybe Nat),
    _lcacAscendingOrder ::
      !(Maybe Bool),
    _lcacMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListCACertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcacPageSize' - The result page size.
--
-- * 'lcacAscendingOrder' - Determines the order of the results.
--
-- * 'lcacMarker' - The marker for the next set of results.
listCACertificates ::
  ListCACertificates
listCACertificates =
  ListCACertificates'
    { _lcacPageSize = Nothing,
      _lcacAscendingOrder = Nothing,
      _lcacMarker = Nothing
    }

-- | The result page size.
lcacPageSize :: Lens' ListCACertificates (Maybe Natural)
lcacPageSize = lens _lcacPageSize (\s a -> s {_lcacPageSize = a}) . mapping _Nat

-- | Determines the order of the results.
lcacAscendingOrder :: Lens' ListCACertificates (Maybe Bool)
lcacAscendingOrder = lens _lcacAscendingOrder (\s a -> s {_lcacAscendingOrder = a})

-- | The marker for the next set of results.
lcacMarker :: Lens' ListCACertificates (Maybe Text)
lcacMarker = lens _lcacMarker (\s a -> s {_lcacMarker = a})

instance AWSPager ListCACertificates where
  page rq rs
    | stop (rs ^. lcacrrsNextMarker) = Nothing
    | stop (rs ^. lcacrrsCertificates) = Nothing
    | otherwise =
      Just $ rq & lcacMarker .~ rs ^. lcacrrsNextMarker

instance AWSRequest ListCACertificates where
  type
    Rs ListCACertificates =
      ListCACertificatesResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListCACertificatesResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "certificates" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListCACertificates

instance NFData ListCACertificates

instance ToHeaders ListCACertificates where
  toHeaders = const mempty

instance ToPath ListCACertificates where
  toPath = const "/cacertificates"

instance ToQuery ListCACertificates where
  toQuery ListCACertificates' {..} =
    mconcat
      [ "pageSize" =: _lcacPageSize,
        "isAscendingOrder" =: _lcacAscendingOrder,
        "marker" =: _lcacMarker
      ]

-- | The output from the ListCACertificates operation.
--
--
--
-- /See:/ 'listCACertificatesResponse' smart constructor.
data ListCACertificatesResponse = ListCACertificatesResponse'
  { _lcacrrsNextMarker ::
      !(Maybe Text),
    _lcacrrsCertificates ::
      !( Maybe
           [CACertificate]
       ),
    _lcacrrsResponseStatus ::
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

-- | Creates a value of 'ListCACertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcacrrsNextMarker' - The current position within the list of CA certificates.
--
-- * 'lcacrrsCertificates' - The CA certificates registered in your AWS account.
--
-- * 'lcacrrsResponseStatus' - -- | The response status code.
listCACertificatesResponse ::
  -- | 'lcacrrsResponseStatus'
  Int ->
  ListCACertificatesResponse
listCACertificatesResponse pResponseStatus_ =
  ListCACertificatesResponse'
    { _lcacrrsNextMarker =
        Nothing,
      _lcacrrsCertificates = Nothing,
      _lcacrrsResponseStatus = pResponseStatus_
    }

-- | The current position within the list of CA certificates.
lcacrrsNextMarker :: Lens' ListCACertificatesResponse (Maybe Text)
lcacrrsNextMarker = lens _lcacrrsNextMarker (\s a -> s {_lcacrrsNextMarker = a})

-- | The CA certificates registered in your AWS account.
lcacrrsCertificates :: Lens' ListCACertificatesResponse [CACertificate]
lcacrrsCertificates = lens _lcacrrsCertificates (\s a -> s {_lcacrrsCertificates = a}) . _Default . _Coerce

-- | -- | The response status code.
lcacrrsResponseStatus :: Lens' ListCACertificatesResponse Int
lcacrrsResponseStatus = lens _lcacrrsResponseStatus (\s a -> s {_lcacrrsResponseStatus = a})

instance NFData ListCACertificatesResponse
