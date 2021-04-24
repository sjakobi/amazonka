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
-- Module      : Network.AWS.CloudWatchLogs.StopQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a CloudWatch Logs Insights query that is in progress. If the query has already ended, the operation returns an error indicating that the specified query is not running.
module Network.AWS.CloudWatchLogs.StopQuery
  ( -- * Creating a Request
    stopQuery,
    StopQuery,

    -- * Request Lenses
    sqQueryId,

    -- * Destructuring the Response
    stopQueryResponse,
    StopQueryResponse,

    -- * Response Lenses
    sqrrsSuccess,
    sqrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopQuery' smart constructor.
newtype StopQuery = StopQuery' {_sqQueryId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqQueryId' - The ID number of the query to stop. To find this ID number, use @DescribeQueries@ .
stopQuery ::
  -- | 'sqQueryId'
  Text ->
  StopQuery
stopQuery pQueryId_ =
  StopQuery' {_sqQueryId = pQueryId_}

-- | The ID number of the query to stop. To find this ID number, use @DescribeQueries@ .
sqQueryId :: Lens' StopQuery Text
sqQueryId = lens _sqQueryId (\s a -> s {_sqQueryId = a})

instance AWSRequest StopQuery where
  type Rs StopQuery = StopQueryResponse
  request = postJSON cloudWatchLogs
  response =
    receiveJSON
      ( \s h x ->
          StopQueryResponse'
            <$> (x .?> "success") <*> (pure (fromEnum s))
      )

instance Hashable StopQuery

instance NFData StopQuery

instance ToHeaders StopQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Logs_20140328.StopQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopQuery where
  toJSON StopQuery' {..} =
    object (catMaybes [Just ("queryId" .= _sqQueryId)])

instance ToPath StopQuery where
  toPath = const "/"

instance ToQuery StopQuery where
  toQuery = const mempty

-- | /See:/ 'stopQueryResponse' smart constructor.
data StopQueryResponse = StopQueryResponse'
  { _sqrrsSuccess ::
      !(Maybe Bool),
    _sqrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqrrsSuccess' - This is true if the query was stopped by the @StopQuery@ operation.
--
-- * 'sqrrsResponseStatus' - -- | The response status code.
stopQueryResponse ::
  -- | 'sqrrsResponseStatus'
  Int ->
  StopQueryResponse
stopQueryResponse pResponseStatus_ =
  StopQueryResponse'
    { _sqrrsSuccess = Nothing,
      _sqrrsResponseStatus = pResponseStatus_
    }

-- | This is true if the query was stopped by the @StopQuery@ operation.
sqrrsSuccess :: Lens' StopQueryResponse (Maybe Bool)
sqrrsSuccess = lens _sqrrsSuccess (\s a -> s {_sqrrsSuccess = a})

-- | -- | The response status code.
sqrrsResponseStatus :: Lens' StopQueryResponse Int
sqrrsResponseStatus = lens _sqrrsResponseStatus (\s a -> s {_sqrrsResponseStatus = a})

instance NFData StopQueryResponse
