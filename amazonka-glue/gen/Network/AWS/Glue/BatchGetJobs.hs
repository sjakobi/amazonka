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
-- Module      : Network.AWS.Glue.BatchGetJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of resource metadata for a given list of job names. After calling the @ListJobs@ operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.
module Network.AWS.Glue.BatchGetJobs
  ( -- * Creating a Request
    batchGetJobs,
    BatchGetJobs,

    -- * Request Lenses
    bgjJobNames,

    -- * Destructuring the Response
    batchGetJobsResponse,
    BatchGetJobsResponse,

    -- * Response Lenses
    bgjrrsJobsNotFound,
    bgjrrsJobs,
    bgjrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchGetJobs' smart constructor.
newtype BatchGetJobs = BatchGetJobs'
  { _bgjJobNames ::
      [Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgjJobNames' - A list of job names, which might be the names returned from the @ListJobs@ operation.
batchGetJobs ::
  BatchGetJobs
batchGetJobs = BatchGetJobs' {_bgjJobNames = mempty}

-- | A list of job names, which might be the names returned from the @ListJobs@ operation.
bgjJobNames :: Lens' BatchGetJobs [Text]
bgjJobNames = lens _bgjJobNames (\s a -> s {_bgjJobNames = a}) . _Coerce

instance AWSRequest BatchGetJobs where
  type Rs BatchGetJobs = BatchGetJobsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          BatchGetJobsResponse'
            <$> (x .?> "JobsNotFound" .!@ mempty)
            <*> (x .?> "Jobs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchGetJobs

instance NFData BatchGetJobs

instance ToHeaders BatchGetJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.BatchGetJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchGetJobs where
  toJSON BatchGetJobs' {..} =
    object
      (catMaybes [Just ("JobNames" .= _bgjJobNames)])

instance ToPath BatchGetJobs where
  toPath = const "/"

instance ToQuery BatchGetJobs where
  toQuery = const mempty

-- | /See:/ 'batchGetJobsResponse' smart constructor.
data BatchGetJobsResponse = BatchGetJobsResponse'
  { _bgjrrsJobsNotFound ::
      !(Maybe [Text]),
    _bgjrrsJobs :: !(Maybe [Job]),
    _bgjrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchGetJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgjrrsJobsNotFound' - A list of names of jobs not found.
--
-- * 'bgjrrsJobs' - A list of job definitions.
--
-- * 'bgjrrsResponseStatus' - -- | The response status code.
batchGetJobsResponse ::
  -- | 'bgjrrsResponseStatus'
  Int ->
  BatchGetJobsResponse
batchGetJobsResponse pResponseStatus_ =
  BatchGetJobsResponse'
    { _bgjrrsJobsNotFound =
        Nothing,
      _bgjrrsJobs = Nothing,
      _bgjrrsResponseStatus = pResponseStatus_
    }

-- | A list of names of jobs not found.
bgjrrsJobsNotFound :: Lens' BatchGetJobsResponse [Text]
bgjrrsJobsNotFound = lens _bgjrrsJobsNotFound (\s a -> s {_bgjrrsJobsNotFound = a}) . _Default . _Coerce

-- | A list of job definitions.
bgjrrsJobs :: Lens' BatchGetJobsResponse [Job]
bgjrrsJobs = lens _bgjrrsJobs (\s a -> s {_bgjrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
bgjrrsResponseStatus :: Lens' BatchGetJobsResponse Int
bgjrrsResponseStatus = lens _bgjrrsResponseStatus (\s a -> s {_bgjrrsResponseStatus = a})

instance NFData BatchGetJobsResponse
