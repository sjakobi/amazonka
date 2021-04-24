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
-- Module      : Network.AWS.Pinpoint.GetJourney
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for a journey.
module Network.AWS.Pinpoint.GetJourney
  ( -- * Creating a Request
    getJourney,
    GetJourney,

    -- * Request Lenses
    gjJourneyId,
    gjApplicationId,

    -- * Destructuring the Response
    getJourneyResponse,
    GetJourneyResponse,

    -- * Response Lenses
    gjrrsResponseStatus,
    gjrrsJourneyResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJourney' smart constructor.
data GetJourney = GetJourney'
  { _gjJourneyId :: !Text,
    _gjApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJourney' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjJourneyId' - The unique identifier for the journey.
--
-- * 'gjApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getJourney ::
  -- | 'gjJourneyId'
  Text ->
  -- | 'gjApplicationId'
  Text ->
  GetJourney
getJourney pJourneyId_ pApplicationId_ =
  GetJourney'
    { _gjJourneyId = pJourneyId_,
      _gjApplicationId = pApplicationId_
    }

-- | The unique identifier for the journey.
gjJourneyId :: Lens' GetJourney Text
gjJourneyId = lens _gjJourneyId (\s a -> s {_gjJourneyId = a})

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gjApplicationId :: Lens' GetJourney Text
gjApplicationId = lens _gjApplicationId (\s a -> s {_gjApplicationId = a})

instance AWSRequest GetJourney where
  type Rs GetJourney = GetJourneyResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetJourneyResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetJourney

instance NFData GetJourney

instance ToHeaders GetJourney where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetJourney where
  toPath GetJourney' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gjApplicationId,
        "/journeys/",
        toBS _gjJourneyId
      ]

instance ToQuery GetJourney where
  toQuery = const mempty

-- | /See:/ 'getJourneyResponse' smart constructor.
data GetJourneyResponse = GetJourneyResponse'
  { _gjrrsResponseStatus ::
      !Int,
    _gjrrsJourneyResponse ::
      !JourneyResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJourneyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjrrsResponseStatus' - -- | The response status code.
--
-- * 'gjrrsJourneyResponse' - Undocumented member.
getJourneyResponse ::
  -- | 'gjrrsResponseStatus'
  Int ->
  -- | 'gjrrsJourneyResponse'
  JourneyResponse ->
  GetJourneyResponse
getJourneyResponse pResponseStatus_ pJourneyResponse_ =
  GetJourneyResponse'
    { _gjrrsResponseStatus =
        pResponseStatus_,
      _gjrrsJourneyResponse = pJourneyResponse_
    }

-- | -- | The response status code.
gjrrsResponseStatus :: Lens' GetJourneyResponse Int
gjrrsResponseStatus = lens _gjrrsResponseStatus (\s a -> s {_gjrrsResponseStatus = a})

-- | Undocumented member.
gjrrsJourneyResponse :: Lens' GetJourneyResponse JourneyResponse
gjrrsJourneyResponse = lens _gjrrsJourneyResponse (\s a -> s {_gjrrsJourneyResponse = a})

instance NFData GetJourneyResponse
