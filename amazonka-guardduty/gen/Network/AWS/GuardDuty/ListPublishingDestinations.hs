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
-- Module      : Network.AWS.GuardDuty.ListPublishingDestinations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of publishing destinations associated with the specified @dectectorId@ .
module Network.AWS.GuardDuty.ListPublishingDestinations
  ( -- * Creating a Request
    listPublishingDestinations,
    ListPublishingDestinations,

    -- * Request Lenses
    lpdNextToken,
    lpdMaxResults,
    lpdDetectorId,

    -- * Destructuring the Response
    listPublishingDestinationsResponse,
    ListPublishingDestinationsResponse,

    -- * Response Lenses
    lpdrrsNextToken,
    lpdrrsResponseStatus,
    lpdrrsDestinations,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPublishingDestinations' smart constructor.
data ListPublishingDestinations = ListPublishingDestinations'
  { _lpdNextToken ::
      !(Maybe Text),
    _lpdMaxResults ::
      !(Maybe Nat),
    _lpdDetectorId ::
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

-- | Creates a value of 'ListPublishingDestinations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdNextToken' - A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
--
-- * 'lpdMaxResults' - The maximum number of results to return in the response.
--
-- * 'lpdDetectorId' - The ID of the detector to retrieve publishing destinations for.
listPublishingDestinations ::
  -- | 'lpdDetectorId'
  Text ->
  ListPublishingDestinations
listPublishingDestinations pDetectorId_ =
  ListPublishingDestinations'
    { _lpdNextToken =
        Nothing,
      _lpdMaxResults = Nothing,
      _lpdDetectorId = pDetectorId_
    }

-- | A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
lpdNextToken :: Lens' ListPublishingDestinations (Maybe Text)
lpdNextToken = lens _lpdNextToken (\s a -> s {_lpdNextToken = a})

-- | The maximum number of results to return in the response.
lpdMaxResults :: Lens' ListPublishingDestinations (Maybe Natural)
lpdMaxResults = lens _lpdMaxResults (\s a -> s {_lpdMaxResults = a}) . mapping _Nat

-- | The ID of the detector to retrieve publishing destinations for.
lpdDetectorId :: Lens' ListPublishingDestinations Text
lpdDetectorId = lens _lpdDetectorId (\s a -> s {_lpdDetectorId = a})

instance AWSRequest ListPublishingDestinations where
  type
    Rs ListPublishingDestinations =
      ListPublishingDestinationsResponse
  request = get guardDuty
  response =
    receiveJSON
      ( \s h x ->
          ListPublishingDestinationsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "destinations" .!@ mempty)
      )

instance Hashable ListPublishingDestinations

instance NFData ListPublishingDestinations

instance ToHeaders ListPublishingDestinations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListPublishingDestinations where
  toPath ListPublishingDestinations' {..} =
    mconcat
      [ "/detector/",
        toBS _lpdDetectorId,
        "/publishingDestination"
      ]

instance ToQuery ListPublishingDestinations where
  toQuery ListPublishingDestinations' {..} =
    mconcat
      [ "nextToken" =: _lpdNextToken,
        "maxResults" =: _lpdMaxResults
      ]

-- | /See:/ 'listPublishingDestinationsResponse' smart constructor.
data ListPublishingDestinationsResponse = ListPublishingDestinationsResponse'
  { _lpdrrsNextToken ::
      !( Maybe
           Text
       ),
    _lpdrrsResponseStatus ::
      !Int,
    _lpdrrsDestinations ::
      ![Destination]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPublishingDestinationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdrrsNextToken' - A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
--
-- * 'lpdrrsResponseStatus' - -- | The response status code.
--
-- * 'lpdrrsDestinations' - A @Destinations@ object that includes information about each publishing destination returned.
listPublishingDestinationsResponse ::
  -- | 'lpdrrsResponseStatus'
  Int ->
  ListPublishingDestinationsResponse
listPublishingDestinationsResponse pResponseStatus_ =
  ListPublishingDestinationsResponse'
    { _lpdrrsNextToken =
        Nothing,
      _lpdrrsResponseStatus =
        pResponseStatus_,
      _lpdrrsDestinations = mempty
    }

-- | A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the @NextToken@ value returned from the previous request to continue listing results after the first page.
lpdrrsNextToken :: Lens' ListPublishingDestinationsResponse (Maybe Text)
lpdrrsNextToken = lens _lpdrrsNextToken (\s a -> s {_lpdrrsNextToken = a})

-- | -- | The response status code.
lpdrrsResponseStatus :: Lens' ListPublishingDestinationsResponse Int
lpdrrsResponseStatus = lens _lpdrrsResponseStatus (\s a -> s {_lpdrrsResponseStatus = a})

-- | A @Destinations@ object that includes information about each publishing destination returned.
lpdrrsDestinations :: Lens' ListPublishingDestinationsResponse [Destination]
lpdrrsDestinations = lens _lpdrrsDestinations (\s a -> s {_lpdrrsDestinations = a}) . _Coerce

instance NFData ListPublishingDestinationsResponse
