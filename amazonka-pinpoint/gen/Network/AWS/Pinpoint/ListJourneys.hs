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
-- Module      : Network.AWS.Pinpoint.ListJourneys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for all the journeys that are associated with an application.
module Network.AWS.Pinpoint.ListJourneys
  ( -- * Creating a Request
    listJourneys,
    ListJourneys,

    -- * Request Lenses
    ljPageSize,
    ljToken,
    ljApplicationId,

    -- * Destructuring the Response
    listJourneysResponse,
    ListJourneysResponse,

    -- * Response Lenses
    ljrrsResponseStatus,
    ljrrsJourneysResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJourneys' smart constructor.
data ListJourneys = ListJourneys'
  { _ljPageSize ::
      !(Maybe Text),
    _ljToken :: !(Maybe Text),
    _ljApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJourneys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljPageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- * 'ljToken' - The NextToken string that specifies which page of results to return in a paginated response.
--
-- * 'ljApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
listJourneys ::
  -- | 'ljApplicationId'
  Text ->
  ListJourneys
listJourneys pApplicationId_ =
  ListJourneys'
    { _ljPageSize = Nothing,
      _ljToken = Nothing,
      _ljApplicationId = pApplicationId_
    }

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
ljPageSize :: Lens' ListJourneys (Maybe Text)
ljPageSize = lens _ljPageSize (\s a -> s {_ljPageSize = a})

-- | The NextToken string that specifies which page of results to return in a paginated response.
ljToken :: Lens' ListJourneys (Maybe Text)
ljToken = lens _ljToken (\s a -> s {_ljToken = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
ljApplicationId :: Lens' ListJourneys Text
ljApplicationId = lens _ljApplicationId (\s a -> s {_ljApplicationId = a})

instance AWSRequest ListJourneys where
  type Rs ListJourneys = ListJourneysResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          ListJourneysResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable ListJourneys

instance NFData ListJourneys

instance ToHeaders ListJourneys where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListJourneys where
  toPath ListJourneys' {..} =
    mconcat
      ["/v1/apps/", toBS _ljApplicationId, "/journeys"]

instance ToQuery ListJourneys where
  toQuery ListJourneys' {..} =
    mconcat
      ["page-size" =: _ljPageSize, "token" =: _ljToken]

-- | /See:/ 'listJourneysResponse' smart constructor.
data ListJourneysResponse = ListJourneysResponse'
  { _ljrrsResponseStatus ::
      !Int,
    _ljrrsJourneysResponse ::
      !JourneysResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJourneysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
--
-- * 'ljrrsJourneysResponse' - Undocumented member.
listJourneysResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  -- | 'ljrrsJourneysResponse'
  JourneysResponse ->
  ListJourneysResponse
listJourneysResponse
  pResponseStatus_
  pJourneysResponse_ =
    ListJourneysResponse'
      { _ljrrsResponseStatus =
          pResponseStatus_,
        _ljrrsJourneysResponse = pJourneysResponse_
      }

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJourneysResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

-- | Undocumented member.
ljrrsJourneysResponse :: Lens' ListJourneysResponse JourneysResponse
ljrrsJourneysResponse = lens _ljrrsJourneysResponse (\s a -> s {_ljrrsJourneysResponse = a})

instance NFData ListJourneysResponse
