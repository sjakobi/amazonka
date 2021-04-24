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
-- Module      : Network.AWS.DeviceFarm.ListTestGridSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of sessions for a 'TestGridProject' .
module Network.AWS.DeviceFarm.ListTestGridSessions
  ( -- * Creating a Request
    listTestGridSessions,
    ListTestGridSessions,

    -- * Request Lenses
    ltgsNextToken,
    ltgsStatus,
    ltgsMaxResult,
    ltgsCreationTimeBefore,
    ltgsEndTimeAfter,
    ltgsEndTimeBefore,
    ltgsCreationTimeAfter,
    ltgsProjectARN,

    -- * Destructuring the Response
    listTestGridSessionsResponse,
    ListTestGridSessionsResponse,

    -- * Response Lenses
    ltgsrrsNextToken,
    ltgsrrsTestGridSessions,
    ltgsrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTestGridSessions' smart constructor.
data ListTestGridSessions = ListTestGridSessions'
  { _ltgsNextToken ::
      !(Maybe Text),
    _ltgsStatus ::
      !( Maybe
           TestGridSessionStatus
       ),
    _ltgsMaxResult ::
      !(Maybe Nat),
    _ltgsCreationTimeBefore ::
      !(Maybe POSIX),
    _ltgsEndTimeAfter ::
      !(Maybe POSIX),
    _ltgsEndTimeBefore ::
      !(Maybe POSIX),
    _ltgsCreationTimeAfter ::
      !(Maybe POSIX),
    _ltgsProjectARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTestGridSessions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgsNextToken' - Pagination token.
--
-- * 'ltgsStatus' - Return only sessions in this state.
--
-- * 'ltgsMaxResult' - Return only this many results at a time.
--
-- * 'ltgsCreationTimeBefore' - Return only sessions created before this time.
--
-- * 'ltgsEndTimeAfter' - Return only sessions that ended after this time.
--
-- * 'ltgsEndTimeBefore' - Return only sessions that ended before this time.
--
-- * 'ltgsCreationTimeAfter' - Return only sessions created after this time.
--
-- * 'ltgsProjectARN' - ARN of a 'TestGridProject' .
listTestGridSessions ::
  -- | 'ltgsProjectARN'
  Text ->
  ListTestGridSessions
listTestGridSessions pProjectARN_ =
  ListTestGridSessions'
    { _ltgsNextToken = Nothing,
      _ltgsStatus = Nothing,
      _ltgsMaxResult = Nothing,
      _ltgsCreationTimeBefore = Nothing,
      _ltgsEndTimeAfter = Nothing,
      _ltgsEndTimeBefore = Nothing,
      _ltgsCreationTimeAfter = Nothing,
      _ltgsProjectARN = pProjectARN_
    }

-- | Pagination token.
ltgsNextToken :: Lens' ListTestGridSessions (Maybe Text)
ltgsNextToken = lens _ltgsNextToken (\s a -> s {_ltgsNextToken = a})

-- | Return only sessions in this state.
ltgsStatus :: Lens' ListTestGridSessions (Maybe TestGridSessionStatus)
ltgsStatus = lens _ltgsStatus (\s a -> s {_ltgsStatus = a})

-- | Return only this many results at a time.
ltgsMaxResult :: Lens' ListTestGridSessions (Maybe Natural)
ltgsMaxResult = lens _ltgsMaxResult (\s a -> s {_ltgsMaxResult = a}) . mapping _Nat

-- | Return only sessions created before this time.
ltgsCreationTimeBefore :: Lens' ListTestGridSessions (Maybe UTCTime)
ltgsCreationTimeBefore = lens _ltgsCreationTimeBefore (\s a -> s {_ltgsCreationTimeBefore = a}) . mapping _Time

-- | Return only sessions that ended after this time.
ltgsEndTimeAfter :: Lens' ListTestGridSessions (Maybe UTCTime)
ltgsEndTimeAfter = lens _ltgsEndTimeAfter (\s a -> s {_ltgsEndTimeAfter = a}) . mapping _Time

-- | Return only sessions that ended before this time.
ltgsEndTimeBefore :: Lens' ListTestGridSessions (Maybe UTCTime)
ltgsEndTimeBefore = lens _ltgsEndTimeBefore (\s a -> s {_ltgsEndTimeBefore = a}) . mapping _Time

-- | Return only sessions created after this time.
ltgsCreationTimeAfter :: Lens' ListTestGridSessions (Maybe UTCTime)
ltgsCreationTimeAfter = lens _ltgsCreationTimeAfter (\s a -> s {_ltgsCreationTimeAfter = a}) . mapping _Time

-- | ARN of a 'TestGridProject' .
ltgsProjectARN :: Lens' ListTestGridSessions Text
ltgsProjectARN = lens _ltgsProjectARN (\s a -> s {_ltgsProjectARN = a})

instance AWSRequest ListTestGridSessions where
  type
    Rs ListTestGridSessions =
      ListTestGridSessionsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListTestGridSessionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "testGridSessions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTestGridSessions

instance NFData ListTestGridSessions

instance ToHeaders ListTestGridSessions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.ListTestGridSessions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTestGridSessions where
  toJSON ListTestGridSessions' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltgsNextToken,
            ("status" .=) <$> _ltgsStatus,
            ("maxResult" .=) <$> _ltgsMaxResult,
            ("creationTimeBefore" .=)
              <$> _ltgsCreationTimeBefore,
            ("endTimeAfter" .=) <$> _ltgsEndTimeAfter,
            ("endTimeBefore" .=) <$> _ltgsEndTimeBefore,
            ("creationTimeAfter" .=) <$> _ltgsCreationTimeAfter,
            Just ("projectArn" .= _ltgsProjectARN)
          ]
      )

instance ToPath ListTestGridSessions where
  toPath = const "/"

instance ToQuery ListTestGridSessions where
  toQuery = const mempty

-- | /See:/ 'listTestGridSessionsResponse' smart constructor.
data ListTestGridSessionsResponse = ListTestGridSessionsResponse'
  { _ltgsrrsNextToken ::
      !(Maybe Text),
    _ltgsrrsTestGridSessions ::
      !( Maybe
           [TestGridSession]
       ),
    _ltgsrrsResponseStatus ::
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

-- | Creates a value of 'ListTestGridSessionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltgsrrsNextToken' - Pagination token.
--
-- * 'ltgsrrsTestGridSessions' - The sessions that match the criteria in a 'ListTestGridSessionsRequest' .
--
-- * 'ltgsrrsResponseStatus' - -- | The response status code.
listTestGridSessionsResponse ::
  -- | 'ltgsrrsResponseStatus'
  Int ->
  ListTestGridSessionsResponse
listTestGridSessionsResponse pResponseStatus_ =
  ListTestGridSessionsResponse'
    { _ltgsrrsNextToken =
        Nothing,
      _ltgsrrsTestGridSessions = Nothing,
      _ltgsrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
ltgsrrsNextToken :: Lens' ListTestGridSessionsResponse (Maybe Text)
ltgsrrsNextToken = lens _ltgsrrsNextToken (\s a -> s {_ltgsrrsNextToken = a})

-- | The sessions that match the criteria in a 'ListTestGridSessionsRequest' .
ltgsrrsTestGridSessions :: Lens' ListTestGridSessionsResponse [TestGridSession]
ltgsrrsTestGridSessions = lens _ltgsrrsTestGridSessions (\s a -> s {_ltgsrrsTestGridSessions = a}) . _Default . _Coerce

-- | -- | The response status code.
ltgsrrsResponseStatus :: Lens' ListTestGridSessionsResponse Int
ltgsrrsResponseStatus = lens _ltgsrrsResponseStatus (\s a -> s {_ltgsrrsResponseStatus = a})

instance NFData ListTestGridSessionsResponse
