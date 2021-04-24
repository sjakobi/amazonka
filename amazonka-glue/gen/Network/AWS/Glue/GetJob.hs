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
-- Module      : Network.AWS.Glue.GetJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an existing job definition.
module Network.AWS.Glue.GetJob
  ( -- * Creating a Request
    getJob,
    GetJob,

    -- * Request Lenses
    gjJobName,

    -- * Destructuring the Response
    getJobResponse,
    GetJobResponse,

    -- * Response Lenses
    gjrrsJob,
    gjrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJob' smart constructor.
newtype GetJob = GetJob' {_gjJobName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjJobName' - The name of the job definition to retrieve.
getJob ::
  -- | 'gjJobName'
  Text ->
  GetJob
getJob pJobName_ = GetJob' {_gjJobName = pJobName_}

-- | The name of the job definition to retrieve.
gjJobName :: Lens' GetJob Text
gjJobName = lens _gjJobName (\s a -> s {_gjJobName = a})

instance AWSRequest GetJob where
  type Rs GetJob = GetJobResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetJobResponse'
            <$> (x .?> "Job") <*> (pure (fromEnum s))
      )

instance Hashable GetJob

instance NFData GetJob

instance ToHeaders GetJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target" =# ("AWSGlue.GetJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetJob where
  toJSON GetJob' {..} =
    object (catMaybes [Just ("JobName" .= _gjJobName)])

instance ToPath GetJob where
  toPath = const "/"

instance ToQuery GetJob where
  toQuery = const mempty

-- | /See:/ 'getJobResponse' smart constructor.
data GetJobResponse = GetJobResponse'
  { _gjrrsJob ::
      !(Maybe Job),
    _gjrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjrrsJob' - The requested job definition.
--
-- * 'gjrrsResponseStatus' - -- | The response status code.
getJobResponse ::
  -- | 'gjrrsResponseStatus'
  Int ->
  GetJobResponse
getJobResponse pResponseStatus_ =
  GetJobResponse'
    { _gjrrsJob = Nothing,
      _gjrrsResponseStatus = pResponseStatus_
    }

-- | The requested job definition.
gjrrsJob :: Lens' GetJobResponse (Maybe Job)
gjrrsJob = lens _gjrrsJob (\s a -> s {_gjrrsJob = a})

-- | -- | The response status code.
gjrrsResponseStatus :: Lens' GetJobResponse Int
gjrrsResponseStatus = lens _gjrrsResponseStatus (\s a -> s {_gjrrsResponseStatus = a})

instance NFData GetJobResponse
