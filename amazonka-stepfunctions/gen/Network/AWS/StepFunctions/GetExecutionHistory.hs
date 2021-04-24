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
-- Module      : Network.AWS.StepFunctions.GetExecutionHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the @timeStamp@ of the events. Use the @reverseOrder@ parameter to get the latest events first.
--
--
-- If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- This API action is not supported by @EXPRESS@ state machines.
--
--
-- This operation returns paginated results.
module Network.AWS.StepFunctions.GetExecutionHistory
  ( -- * Creating a Request
    getExecutionHistory,
    GetExecutionHistory,

    -- * Request Lenses
    gehNextToken,
    gehMaxResults,
    gehReverseOrder,
    gehIncludeExecutionData,
    gehExecutionARN,

    -- * Destructuring the Response
    getExecutionHistoryResponse,
    GetExecutionHistoryResponse,

    -- * Response Lenses
    gehrrsNextToken,
    gehrrsResponseStatus,
    gehrrsEvents,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StepFunctions.Types

-- | /See:/ 'getExecutionHistory' smart constructor.
data GetExecutionHistory = GetExecutionHistory'
  { _gehNextToken ::
      !(Maybe Text),
    _gehMaxResults :: !(Maybe Nat),
    _gehReverseOrder ::
      !(Maybe Bool),
    _gehIncludeExecutionData ::
      !(Maybe Bool),
    _gehExecutionARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetExecutionHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gehNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'gehMaxResults' - The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
--
-- * 'gehReverseOrder' - Lists events in descending order of their @timeStamp@ .
--
-- * 'gehIncludeExecutionData' - You can select whether execution data (input or output of a history event) is returned. The default is @true@ .
--
-- * 'gehExecutionARN' - The Amazon Resource Name (ARN) of the execution.
getExecutionHistory ::
  -- | 'gehExecutionARN'
  Text ->
  GetExecutionHistory
getExecutionHistory pExecutionARN_ =
  GetExecutionHistory'
    { _gehNextToken = Nothing,
      _gehMaxResults = Nothing,
      _gehReverseOrder = Nothing,
      _gehIncludeExecutionData = Nothing,
      _gehExecutionARN = pExecutionARN_
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
gehNextToken :: Lens' GetExecutionHistory (Maybe Text)
gehNextToken = lens _gehNextToken (\s a -> s {_gehNextToken = a})

-- | The maximum number of results that are returned per call. You can use @nextToken@ to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default. This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.
gehMaxResults :: Lens' GetExecutionHistory (Maybe Natural)
gehMaxResults = lens _gehMaxResults (\s a -> s {_gehMaxResults = a}) . mapping _Nat

-- | Lists events in descending order of their @timeStamp@ .
gehReverseOrder :: Lens' GetExecutionHistory (Maybe Bool)
gehReverseOrder = lens _gehReverseOrder (\s a -> s {_gehReverseOrder = a})

-- | You can select whether execution data (input or output of a history event) is returned. The default is @true@ .
gehIncludeExecutionData :: Lens' GetExecutionHistory (Maybe Bool)
gehIncludeExecutionData = lens _gehIncludeExecutionData (\s a -> s {_gehIncludeExecutionData = a})

-- | The Amazon Resource Name (ARN) of the execution.
gehExecutionARN :: Lens' GetExecutionHistory Text
gehExecutionARN = lens _gehExecutionARN (\s a -> s {_gehExecutionARN = a})

instance AWSPager GetExecutionHistory where
  page rq rs
    | stop (rs ^. gehrrsNextToken) = Nothing
    | stop (rs ^. gehrrsEvents) = Nothing
    | otherwise =
      Just $ rq & gehNextToken .~ rs ^. gehrrsNextToken

instance AWSRequest GetExecutionHistory where
  type
    Rs GetExecutionHistory =
      GetExecutionHistoryResponse
  request = postJSON stepFunctions
  response =
    receiveJSON
      ( \s h x ->
          GetExecutionHistoryResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "events" .!@ mempty)
      )

instance Hashable GetExecutionHistory

instance NFData GetExecutionHistory

instance ToHeaders GetExecutionHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSStepFunctions.GetExecutionHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON GetExecutionHistory where
  toJSON GetExecutionHistory' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gehNextToken,
            ("maxResults" .=) <$> _gehMaxResults,
            ("reverseOrder" .=) <$> _gehReverseOrder,
            ("includeExecutionData" .=)
              <$> _gehIncludeExecutionData,
            Just ("executionArn" .= _gehExecutionARN)
          ]
      )

instance ToPath GetExecutionHistory where
  toPath = const "/"

instance ToQuery GetExecutionHistory where
  toQuery = const mempty

-- | /See:/ 'getExecutionHistoryResponse' smart constructor.
data GetExecutionHistoryResponse = GetExecutionHistoryResponse'
  { _gehrrsNextToken ::
      !(Maybe Text),
    _gehrrsResponseStatus ::
      !Int,
    _gehrrsEvents ::
      ![HistoryEvent]
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetExecutionHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gehrrsNextToken' - If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
--
-- * 'gehrrsResponseStatus' - -- | The response status code.
--
-- * 'gehrrsEvents' - The list of events that occurred in the execution.
getExecutionHistoryResponse ::
  -- | 'gehrrsResponseStatus'
  Int ->
  GetExecutionHistoryResponse
getExecutionHistoryResponse pResponseStatus_ =
  GetExecutionHistoryResponse'
    { _gehrrsNextToken =
        Nothing,
      _gehrrsResponseStatus = pResponseStatus_,
      _gehrrsEvents = mempty
    }

-- | If @nextToken@ is returned, there are more results available. The value of @nextToken@ is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an /HTTP 400 InvalidToken/ error.
gehrrsNextToken :: Lens' GetExecutionHistoryResponse (Maybe Text)
gehrrsNextToken = lens _gehrrsNextToken (\s a -> s {_gehrrsNextToken = a})

-- | -- | The response status code.
gehrrsResponseStatus :: Lens' GetExecutionHistoryResponse Int
gehrrsResponseStatus = lens _gehrrsResponseStatus (\s a -> s {_gehrrsResponseStatus = a})

-- | The list of events that occurred in the execution.
gehrrsEvents :: Lens' GetExecutionHistoryResponse [HistoryEvent]
gehrrsEvents = lens _gehrrsEvents (\s a -> s {_gehrrsEvents = a}) . _Coerce

instance NFData GetExecutionHistoryResponse
