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
-- Module      : Network.AWS.IoT.ListAuthorizers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the authorizers registered in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuthorizers
  ( -- * Creating a Request
    listAuthorizers,
    ListAuthorizers,

    -- * Request Lenses
    laStatus,
    laPageSize,
    laAscendingOrder,
    laMarker,

    -- * Destructuring the Response
    listAuthorizersResponse,
    ListAuthorizersResponse,

    -- * Response Lenses
    larrsNextMarker,
    larrsAuthorizers,
    larrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAuthorizers' smart constructor.
data ListAuthorizers = ListAuthorizers'
  { _laStatus ::
      !(Maybe AuthorizerStatus),
    _laPageSize :: !(Maybe Nat),
    _laAscendingOrder :: !(Maybe Bool),
    _laMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAuthorizers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laStatus' - The status of the list authorizers request.
--
-- * 'laPageSize' - The maximum number of results to return at one time.
--
-- * 'laAscendingOrder' - Return the list of authorizers in ascending alphabetical order.
--
-- * 'laMarker' - A marker used to get the next set of results.
listAuthorizers ::
  ListAuthorizers
listAuthorizers =
  ListAuthorizers'
    { _laStatus = Nothing,
      _laPageSize = Nothing,
      _laAscendingOrder = Nothing,
      _laMarker = Nothing
    }

-- | The status of the list authorizers request.
laStatus :: Lens' ListAuthorizers (Maybe AuthorizerStatus)
laStatus = lens _laStatus (\s a -> s {_laStatus = a})

-- | The maximum number of results to return at one time.
laPageSize :: Lens' ListAuthorizers (Maybe Natural)
laPageSize = lens _laPageSize (\s a -> s {_laPageSize = a}) . mapping _Nat

-- | Return the list of authorizers in ascending alphabetical order.
laAscendingOrder :: Lens' ListAuthorizers (Maybe Bool)
laAscendingOrder = lens _laAscendingOrder (\s a -> s {_laAscendingOrder = a})

-- | A marker used to get the next set of results.
laMarker :: Lens' ListAuthorizers (Maybe Text)
laMarker = lens _laMarker (\s a -> s {_laMarker = a})

instance AWSPager ListAuthorizers where
  page rq rs
    | stop (rs ^. larrsNextMarker) = Nothing
    | stop (rs ^. larrsAuthorizers) = Nothing
    | otherwise =
      Just $ rq & laMarker .~ rs ^. larrsNextMarker

instance AWSRequest ListAuthorizers where
  type Rs ListAuthorizers = ListAuthorizersResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAuthorizersResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "authorizers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAuthorizers

instance NFData ListAuthorizers

instance ToHeaders ListAuthorizers where
  toHeaders = const mempty

instance ToPath ListAuthorizers where
  toPath = const "/authorizers/"

instance ToQuery ListAuthorizers where
  toQuery ListAuthorizers' {..} =
    mconcat
      [ "status" =: _laStatus,
        "pageSize" =: _laPageSize,
        "isAscendingOrder" =: _laAscendingOrder,
        "marker" =: _laMarker
      ]

-- | /See:/ 'listAuthorizersResponse' smart constructor.
data ListAuthorizersResponse = ListAuthorizersResponse'
  { _larrsNextMarker ::
      !(Maybe Text),
    _larrsAuthorizers ::
      !( Maybe
           [AuthorizerSummary]
       ),
    _larrsResponseStatus ::
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

-- | Creates a value of 'ListAuthorizersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextMarker' - A marker used to get the next set of results.
--
-- * 'larrsAuthorizers' - The authorizers.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAuthorizersResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAuthorizersResponse
listAuthorizersResponse pResponseStatus_ =
  ListAuthorizersResponse'
    { _larrsNextMarker =
        Nothing,
      _larrsAuthorizers = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | A marker used to get the next set of results.
larrsNextMarker :: Lens' ListAuthorizersResponse (Maybe Text)
larrsNextMarker = lens _larrsNextMarker (\s a -> s {_larrsNextMarker = a})

-- | The authorizers.
larrsAuthorizers :: Lens' ListAuthorizersResponse [AuthorizerSummary]
larrsAuthorizers = lens _larrsAuthorizers (\s a -> s {_larrsAuthorizers = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAuthorizersResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAuthorizersResponse
