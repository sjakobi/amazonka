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
-- Module      : Network.AWS.CloudWatchLogs.TestMetricFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.
module Network.AWS.CloudWatchLogs.TestMetricFilter
  ( -- * Creating a Request
    testMetricFilter,
    TestMetricFilter,

    -- * Request Lenses
    tmfFilterPattern,
    tmfLogEventMessages,

    -- * Destructuring the Response
    testMetricFilterResponse,
    TestMetricFilterResponse,

    -- * Response Lenses
    tmfrrsMatches,
    tmfrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'testMetricFilter' smart constructor.
data TestMetricFilter = TestMetricFilter'
  { _tmfFilterPattern ::
      !Text,
    _tmfLogEventMessages :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestMetricFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmfFilterPattern' - Undocumented member.
--
-- * 'tmfLogEventMessages' - The log event messages to test.
testMetricFilter ::
  -- | 'tmfFilterPattern'
  Text ->
  -- | 'tmfLogEventMessages'
  NonEmpty Text ->
  TestMetricFilter
testMetricFilter pFilterPattern_ pLogEventMessages_ =
  TestMetricFilter'
    { _tmfFilterPattern =
        pFilterPattern_,
      _tmfLogEventMessages = _List1 # pLogEventMessages_
    }

-- | Undocumented member.
tmfFilterPattern :: Lens' TestMetricFilter Text
tmfFilterPattern = lens _tmfFilterPattern (\s a -> s {_tmfFilterPattern = a})

-- | The log event messages to test.
tmfLogEventMessages :: Lens' TestMetricFilter (NonEmpty Text)
tmfLogEventMessages = lens _tmfLogEventMessages (\s a -> s {_tmfLogEventMessages = a}) . _List1

instance AWSRequest TestMetricFilter where
  type Rs TestMetricFilter = TestMetricFilterResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          TestMetricFilterResponse'
            <$> (x .?> "matches" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable TestMetricFilter

instance NFData TestMetricFilter

instance ToHeaders TestMetricFilter where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.TestMetricFilter" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TestMetricFilter where
  toJSON TestMetricFilter' {..} =
    object
      ( catMaybes
          [ Just ("filterPattern" .= _tmfFilterPattern),
            Just ("logEventMessages" .= _tmfLogEventMessages)
          ]
      )

instance ToPath TestMetricFilter where
  toPath = const "/"

instance ToQuery TestMetricFilter where
  toQuery = const mempty

-- | /See:/ 'testMetricFilterResponse' smart constructor.
data TestMetricFilterResponse = TestMetricFilterResponse'
  { _tmfrrsMatches ::
      !( Maybe
           [MetricFilterMatchRecord]
       ),
    _tmfrrsResponseStatus ::
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

-- | Creates a value of 'TestMetricFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmfrrsMatches' - The matched events.
--
-- * 'tmfrrsResponseStatus' - -- | The response status code.
testMetricFilterResponse ::
  -- | 'tmfrrsResponseStatus'
  Int ->
  TestMetricFilterResponse
testMetricFilterResponse pResponseStatus_ =
  TestMetricFilterResponse'
    { _tmfrrsMatches = Nothing,
      _tmfrrsResponseStatus = pResponseStatus_
    }

-- | The matched events.
tmfrrsMatches :: Lens' TestMetricFilterResponse [MetricFilterMatchRecord]
tmfrrsMatches = lens _tmfrrsMatches (\s a -> s {_tmfrrsMatches = a}) . _Default . _Coerce

-- | -- | The response status code.
tmfrrsResponseStatus :: Lens' TestMetricFilterResponse Int
tmfrrsResponseStatus = lens _tmfrrsResponseStatus (\s a -> s {_tmfrrsResponseStatus = a})

instance NFData TestMetricFilterResponse
