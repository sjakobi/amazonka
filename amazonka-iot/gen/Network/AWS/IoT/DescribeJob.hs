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
-- Module      : Network.AWS.IoT.DescribeJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a job.
module Network.AWS.IoT.DescribeJob
  ( -- * Creating a Request
    describeJob,
    DescribeJob,

    -- * Request Lenses
    desJobId,

    -- * Destructuring the Response
    describeJobResponse,
    DescribeJobResponse,

    -- * Response Lenses
    djrrsJob,
    djrrsDocumentSource,
    djrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeJob' smart constructor.
newtype DescribeJob = DescribeJob' {_desJobId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desJobId' - The unique identifier you assigned to this job when it was created.
describeJob ::
  -- | 'desJobId'
  Text ->
  DescribeJob
describeJob pJobId_ =
  DescribeJob' {_desJobId = pJobId_}

-- | The unique identifier you assigned to this job when it was created.
desJobId :: Lens' DescribeJob Text
desJobId = lens _desJobId (\s a -> s {_desJobId = a})

instance AWSRequest DescribeJob where
  type Rs DescribeJob = DescribeJobResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeJobResponse'
            <$> (x .?> "job")
            <*> (x .?> "documentSource")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeJob

instance NFData DescribeJob

instance ToHeaders DescribeJob where
  toHeaders = const mempty

instance ToPath DescribeJob where
  toPath DescribeJob' {..} =
    mconcat ["/jobs/", toBS _desJobId]

instance ToQuery DescribeJob where
  toQuery = const mempty

-- | /See:/ 'describeJobResponse' smart constructor.
data DescribeJobResponse = DescribeJobResponse'
  { _djrrsJob ::
      !(Maybe Job),
    _djrrsDocumentSource ::
      !(Maybe Text),
    _djrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djrrsJob' - Information about the job.
--
-- * 'djrrsDocumentSource' - An S3 link to the job document.
--
-- * 'djrrsResponseStatus' - -- | The response status code.
describeJobResponse ::
  -- | 'djrrsResponseStatus'
  Int ->
  DescribeJobResponse
describeJobResponse pResponseStatus_ =
  DescribeJobResponse'
    { _djrrsJob = Nothing,
      _djrrsDocumentSource = Nothing,
      _djrrsResponseStatus = pResponseStatus_
    }

-- | Information about the job.
djrrsJob :: Lens' DescribeJobResponse (Maybe Job)
djrrsJob = lens _djrrsJob (\s a -> s {_djrrsJob = a})

-- | An S3 link to the job document.
djrrsDocumentSource :: Lens' DescribeJobResponse (Maybe Text)
djrrsDocumentSource = lens _djrrsDocumentSource (\s a -> s {_djrrsDocumentSource = a})

-- | -- | The response status code.
djrrsResponseStatus :: Lens' DescribeJobResponse Int
djrrsResponseStatus = lens _djrrsResponseStatus (\s a -> s {_djrrsResponseStatus = a})

instance NFData DescribeJobResponse
