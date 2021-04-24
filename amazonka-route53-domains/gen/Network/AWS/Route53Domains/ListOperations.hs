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
-- Module      : Network.AWS.Route53Domains.ListOperations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all of the operations that return an operation ID and that have ever been performed on domains that were registered by the current account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Route53Domains.ListOperations
  ( -- * Creating a Request
    listOperations,
    ListOperations,

    -- * Request Lenses
    loSubmittedSince,
    loMaxItems,
    loMarker,

    -- * Destructuring the Response
    listOperationsResponse,
    ListOperationsResponse,

    -- * Response Lenses
    lorrsNextPageMarker,
    lorrsResponseStatus,
    lorrsOperations,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The ListOperations request includes the following elements.
--
--
--
-- /See:/ 'listOperations' smart constructor.
data ListOperations = ListOperations'
  { _loSubmittedSince ::
      !(Maybe POSIX),
    _loMaxItems :: !(Maybe Int),
    _loMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOperations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loSubmittedSince' - An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
--
-- * 'loMaxItems' - Number of domains to be returned. Default: 20
--
-- * 'loMarker' - For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional operations. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element.
listOperations ::
  ListOperations
listOperations =
  ListOperations'
    { _loSubmittedSince = Nothing,
      _loMaxItems = Nothing,
      _loMarker = Nothing
    }

-- | An optional parameter that lets you get information about all the operations that you submitted after a specified date and time. Specify the date and time in Unix time format and Coordinated Universal time (UTC).
loSubmittedSince :: Lens' ListOperations (Maybe UTCTime)
loSubmittedSince = lens _loSubmittedSince (\s a -> s {_loSubmittedSince = a}) . mapping _Time

-- | Number of domains to be returned. Default: 20
loMaxItems :: Lens' ListOperations (Maybe Int)
loMaxItems = lens _loMaxItems (\s a -> s {_loMaxItems = a})

-- | For an initial request for a list of operations, omit this element. If the number of operations that are not yet complete is greater than the value that you specified for @MaxItems@ , you can use @Marker@ to return additional operations. Get the value of @NextPageMarker@ from the previous response, and submit another request that includes the value of @NextPageMarker@ in the @Marker@ element.
loMarker :: Lens' ListOperations (Maybe Text)
loMarker = lens _loMarker (\s a -> s {_loMarker = a})

instance AWSPager ListOperations where
  page rq rs
    | stop (rs ^. lorrsNextPageMarker) = Nothing
    | stop (rs ^. lorrsOperations) = Nothing
    | otherwise =
      Just $ rq & loMarker .~ rs ^. lorrsNextPageMarker

instance AWSRequest ListOperations where
  type Rs ListOperations = ListOperationsResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          ListOperationsResponse'
            <$> (x .?> "NextPageMarker")
            <*> (pure (fromEnum s))
            <*> (x .?> "Operations" .!@ mempty)
      )

instance Hashable ListOperations

instance NFData ListOperations

instance ToHeaders ListOperations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.ListOperations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOperations where
  toJSON ListOperations' {..} =
    object
      ( catMaybes
          [ ("SubmittedSince" .=) <$> _loSubmittedSince,
            ("MaxItems" .=) <$> _loMaxItems,
            ("Marker" .=) <$> _loMarker
          ]
      )

instance ToPath ListOperations where
  toPath = const "/"

instance ToQuery ListOperations where
  toQuery = const mempty

-- | The ListOperations response includes the following elements.
--
--
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse'
  { _lorrsNextPageMarker ::
      !(Maybe Text),
    _lorrsResponseStatus ::
      !Int,
    _lorrsOperations ::
      ![OperationSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsNextPageMarker' - If there are more operations than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
--
-- * 'lorrsResponseStatus' - -- | The response status code.
--
-- * 'lorrsOperations' - Lists summaries of the operations.
listOperationsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListOperationsResponse
listOperationsResponse pResponseStatus_ =
  ListOperationsResponse'
    { _lorrsNextPageMarker =
        Nothing,
      _lorrsResponseStatus = pResponseStatus_,
      _lorrsOperations = mempty
    }

-- | If there are more operations than you specified for @MaxItems@ in the request, submit another request and include the value of @NextPageMarker@ in the value of @Marker@ .
lorrsNextPageMarker :: Lens' ListOperationsResponse (Maybe Text)
lorrsNextPageMarker = lens _lorrsNextPageMarker (\s a -> s {_lorrsNextPageMarker = a})

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListOperationsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

-- | Lists summaries of the operations.
lorrsOperations :: Lens' ListOperationsResponse [OperationSummary]
lorrsOperations = lens _lorrsOperations (\s a -> s {_lorrsOperations = a}) . _Coerce

instance NFData ListOperationsResponse
