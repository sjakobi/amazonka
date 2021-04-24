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
-- Module      : Network.AWS.Glue.BatchStopJobRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops one or more job runs for a specified job definition.
module Network.AWS.Glue.BatchStopJobRun
  ( -- * Creating a Request
    batchStopJobRun,
    BatchStopJobRun,

    -- * Request Lenses
    bsjrJobName,
    bsjrJobRunIds,

    -- * Destructuring the Response
    batchStopJobRunResponse,
    BatchStopJobRunResponse,

    -- * Response Lenses
    bsjrrrsSuccessfulSubmissions,
    bsjrrrsErrors,
    bsjrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'batchStopJobRun' smart constructor.
data BatchStopJobRun = BatchStopJobRun'
  { _bsjrJobName ::
      !Text,
    _bsjrJobRunIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BatchStopJobRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsjrJobName' - The name of the job definition for which to stop job runs.
--
-- * 'bsjrJobRunIds' - A list of the @JobRunIds@ that should be stopped for that job definition.
batchStopJobRun ::
  -- | 'bsjrJobName'
  Text ->
  -- | 'bsjrJobRunIds'
  NonEmpty Text ->
  BatchStopJobRun
batchStopJobRun pJobName_ pJobRunIds_ =
  BatchStopJobRun'
    { _bsjrJobName = pJobName_,
      _bsjrJobRunIds = _List1 # pJobRunIds_
    }

-- | The name of the job definition for which to stop job runs.
bsjrJobName :: Lens' BatchStopJobRun Text
bsjrJobName = lens _bsjrJobName (\s a -> s {_bsjrJobName = a})

-- | A list of the @JobRunIds@ that should be stopped for that job definition.
bsjrJobRunIds :: Lens' BatchStopJobRun (NonEmpty Text)
bsjrJobRunIds = lens _bsjrJobRunIds (\s a -> s {_bsjrJobRunIds = a}) . _List1

instance AWSRequest BatchStopJobRun where
  type Rs BatchStopJobRun = BatchStopJobRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          BatchStopJobRunResponse'
            <$> (x .?> "SuccessfulSubmissions" .!@ mempty)
            <*> (x .?> "Errors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable BatchStopJobRun

instance NFData BatchStopJobRun

instance ToHeaders BatchStopJobRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.BatchStopJobRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON BatchStopJobRun where
  toJSON BatchStopJobRun' {..} =
    object
      ( catMaybes
          [ Just ("JobName" .= _bsjrJobName),
            Just ("JobRunIds" .= _bsjrJobRunIds)
          ]
      )

instance ToPath BatchStopJobRun where
  toPath = const "/"

instance ToQuery BatchStopJobRun where
  toQuery = const mempty

-- | /See:/ 'batchStopJobRunResponse' smart constructor.
data BatchStopJobRunResponse = BatchStopJobRunResponse'
  { _bsjrrrsSuccessfulSubmissions ::
      !( Maybe
           [BatchStopJobRunSuccessfulSubmission]
       ),
    _bsjrrrsErrors ::
      !( Maybe
           [BatchStopJobRunError]
       ),
    _bsjrrrsResponseStatus ::
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

-- | Creates a value of 'BatchStopJobRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsjrrrsSuccessfulSubmissions' - A list of the JobRuns that were successfully submitted for stopping.
--
-- * 'bsjrrrsErrors' - A list of the errors that were encountered in trying to stop @JobRuns@ , including the @JobRunId@ for which each error was encountered and details about the error.
--
-- * 'bsjrrrsResponseStatus' - -- | The response status code.
batchStopJobRunResponse ::
  -- | 'bsjrrrsResponseStatus'
  Int ->
  BatchStopJobRunResponse
batchStopJobRunResponse pResponseStatus_ =
  BatchStopJobRunResponse'
    { _bsjrrrsSuccessfulSubmissions =
        Nothing,
      _bsjrrrsErrors = Nothing,
      _bsjrrrsResponseStatus = pResponseStatus_
    }

-- | A list of the JobRuns that were successfully submitted for stopping.
bsjrrrsSuccessfulSubmissions :: Lens' BatchStopJobRunResponse [BatchStopJobRunSuccessfulSubmission]
bsjrrrsSuccessfulSubmissions = lens _bsjrrrsSuccessfulSubmissions (\s a -> s {_bsjrrrsSuccessfulSubmissions = a}) . _Default . _Coerce

-- | A list of the errors that were encountered in trying to stop @JobRuns@ , including the @JobRunId@ for which each error was encountered and details about the error.
bsjrrrsErrors :: Lens' BatchStopJobRunResponse [BatchStopJobRunError]
bsjrrrsErrors = lens _bsjrrrsErrors (\s a -> s {_bsjrrrsErrors = a}) . _Default . _Coerce

-- | -- | The response status code.
bsjrrrsResponseStatus :: Lens' BatchStopJobRunResponse Int
bsjrrrsResponseStatus = lens _bsjrrrsResponseStatus (\s a -> s {_bsjrrrsResponseStatus = a})

instance NFData BatchStopJobRunResponse
