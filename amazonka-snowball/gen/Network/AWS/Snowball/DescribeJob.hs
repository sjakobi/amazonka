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
-- Module      : Network.AWS.Snowball.DescribeJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific job including shipping information, job status, and other important metadata.
module Network.AWS.Snowball.DescribeJob
  ( -- * Creating a Request
    describeJob,
    DescribeJob,

    -- * Request Lenses
    djJobId,

    -- * Destructuring the Response
    describeJobResponse,
    DescribeJobResponse,

    -- * Response Lenses
    djrrsSubJobMetadata,
    djrrsJobMetadata,
    djrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'describeJob' smart constructor.
newtype DescribeJob = DescribeJob' {_djJobId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djJobId' - The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
describeJob ::
  -- | 'djJobId'
  Text ->
  DescribeJob
describeJob pJobId_ =
  DescribeJob' {_djJobId = pJobId_}

-- | The automatically generated ID for a job, for example @JID123e4567-e89b-12d3-a456-426655440000@ .
djJobId :: Lens' DescribeJob Text
djJobId = lens _djJobId (\s a -> s {_djJobId = a})

instance AWSRequest DescribeJob where
  type Rs DescribeJob = DescribeJobResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          DescribeJobResponse'
            <$> (x .?> "SubJobMetadata" .!@ mempty)
            <*> (x .?> "JobMetadata")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeJob

instance NFData DescribeJob

instance ToHeaders DescribeJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.DescribeJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeJob where
  toJSON DescribeJob' {..} =
    object (catMaybes [Just ("JobId" .= _djJobId)])

instance ToPath DescribeJob where
  toPath = const "/"

instance ToQuery DescribeJob where
  toQuery = const mempty

-- | /See:/ 'describeJobResponse' smart constructor.
data DescribeJobResponse = DescribeJobResponse'
  { _djrrsSubJobMetadata ::
      !(Maybe [JobMetadata]),
    _djrrsJobMetadata ::
      !(Maybe JobMetadata),
    _djrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'djrrsSubJobMetadata' - Information about a specific job part (in the case of an export job), including shipping information, job status, and other important metadata.
--
-- * 'djrrsJobMetadata' - Information about a specific job, including shipping information, job status, and other important metadata.
--
-- * 'djrrsResponseStatus' - -- | The response status code.
describeJobResponse ::
  -- | 'djrrsResponseStatus'
  Int ->
  DescribeJobResponse
describeJobResponse pResponseStatus_ =
  DescribeJobResponse'
    { _djrrsSubJobMetadata =
        Nothing,
      _djrrsJobMetadata = Nothing,
      _djrrsResponseStatus = pResponseStatus_
    }

-- | Information about a specific job part (in the case of an export job), including shipping information, job status, and other important metadata.
djrrsSubJobMetadata :: Lens' DescribeJobResponse [JobMetadata]
djrrsSubJobMetadata = lens _djrrsSubJobMetadata (\s a -> s {_djrrsSubJobMetadata = a}) . _Default . _Coerce

-- | Information about a specific job, including shipping information, job status, and other important metadata.
djrrsJobMetadata :: Lens' DescribeJobResponse (Maybe JobMetadata)
djrrsJobMetadata = lens _djrrsJobMetadata (\s a -> s {_djrrsJobMetadata = a})

-- | -- | The response status code.
djrrsResponseStatus :: Lens' DescribeJobResponse Int
djrrsResponseStatus = lens _djrrsResponseStatus (\s a -> s {_djrrsResponseStatus = a})

instance NFData DescribeJobResponse
