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
-- Module      : Network.AWS.CodePipeline.PollForThirdPartyJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determines whether there are any third party jobs for a job worker to act on. Used for partner actions only.
--
--
-- /Important:/ When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts.
module Network.AWS.CodePipeline.PollForThirdPartyJobs
  ( -- * Creating a Request
    pollForThirdPartyJobs,
    PollForThirdPartyJobs,

    -- * Request Lenses
    pftpjMaxBatchSize,
    pftpjActionTypeId,

    -- * Destructuring the Response
    pollForThirdPartyJobsResponse,
    PollForThirdPartyJobsResponse,

    -- * Response Lenses
    pftpjrrsJobs,
    pftpjrrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @PollForThirdPartyJobs@ action.
--
--
--
-- /See:/ 'pollForThirdPartyJobs' smart constructor.
data PollForThirdPartyJobs = PollForThirdPartyJobs'
  { _pftpjMaxBatchSize ::
      !(Maybe Nat),
    _pftpjActionTypeId ::
      !ActionTypeId
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PollForThirdPartyJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pftpjMaxBatchSize' - The maximum number of jobs to return in a poll for jobs call.
--
-- * 'pftpjActionTypeId' - Represents information about an action type.
pollForThirdPartyJobs ::
  -- | 'pftpjActionTypeId'
  ActionTypeId ->
  PollForThirdPartyJobs
pollForThirdPartyJobs pActionTypeId_ =
  PollForThirdPartyJobs'
    { _pftpjMaxBatchSize =
        Nothing,
      _pftpjActionTypeId = pActionTypeId_
    }

-- | The maximum number of jobs to return in a poll for jobs call.
pftpjMaxBatchSize :: Lens' PollForThirdPartyJobs (Maybe Natural)
pftpjMaxBatchSize = lens _pftpjMaxBatchSize (\s a -> s {_pftpjMaxBatchSize = a}) . mapping _Nat

-- | Represents information about an action type.
pftpjActionTypeId :: Lens' PollForThirdPartyJobs ActionTypeId
pftpjActionTypeId = lens _pftpjActionTypeId (\s a -> s {_pftpjActionTypeId = a})

instance AWSRequest PollForThirdPartyJobs where
  type
    Rs PollForThirdPartyJobs =
      PollForThirdPartyJobsResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          PollForThirdPartyJobsResponse'
            <$> (x .?> "jobs" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable PollForThirdPartyJobs

instance NFData PollForThirdPartyJobs

instance ToHeaders PollForThirdPartyJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.PollForThirdPartyJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PollForThirdPartyJobs where
  toJSON PollForThirdPartyJobs' {..} =
    object
      ( catMaybes
          [ ("maxBatchSize" .=) <$> _pftpjMaxBatchSize,
            Just ("actionTypeId" .= _pftpjActionTypeId)
          ]
      )

instance ToPath PollForThirdPartyJobs where
  toPath = const "/"

instance ToQuery PollForThirdPartyJobs where
  toQuery = const mempty

-- | Represents the output of a @PollForThirdPartyJobs@ action.
--
--
--
-- /See:/ 'pollForThirdPartyJobsResponse' smart constructor.
data PollForThirdPartyJobsResponse = PollForThirdPartyJobsResponse'
  { _pftpjrrsJobs ::
      !( Maybe
           [ThirdPartyJob]
       ),
    _pftpjrrsResponseStatus ::
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

-- | Creates a value of 'PollForThirdPartyJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pftpjrrsJobs' - Information about the jobs to take action on.
--
-- * 'pftpjrrsResponseStatus' - -- | The response status code.
pollForThirdPartyJobsResponse ::
  -- | 'pftpjrrsResponseStatus'
  Int ->
  PollForThirdPartyJobsResponse
pollForThirdPartyJobsResponse pResponseStatus_ =
  PollForThirdPartyJobsResponse'
    { _pftpjrrsJobs =
        Nothing,
      _pftpjrrsResponseStatus = pResponseStatus_
    }

-- | Information about the jobs to take action on.
pftpjrrsJobs :: Lens' PollForThirdPartyJobsResponse [ThirdPartyJob]
pftpjrrsJobs = lens _pftpjrrsJobs (\s a -> s {_pftpjrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
pftpjrrsResponseStatus :: Lens' PollForThirdPartyJobsResponse Int
pftpjrrsResponseStatus = lens _pftpjrrsResponseStatus (\s a -> s {_pftpjrrsResponseStatus = a})

instance NFData PollForThirdPartyJobsResponse
