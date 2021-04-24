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
-- Module      : Network.AWS.Glue.CancelMLTaskRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels (stops) a task run. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can cancel a machine learning task run at any time by calling @CancelMLTaskRun@ with a task run's parent transform's @TransformID@ and the task run's @TaskRunId@ .
module Network.AWS.Glue.CancelMLTaskRun
  ( -- * Creating a Request
    cancelMLTaskRun,
    CancelMLTaskRun,

    -- * Request Lenses
    cmltrTransformId,
    cmltrTaskRunId,

    -- * Destructuring the Response
    cancelMLTaskRunResponse,
    CancelMLTaskRunResponse,

    -- * Response Lenses
    cmltrrrsStatus,
    cmltrrrsTransformId,
    cmltrrrsTaskRunId,
    cmltrrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelMLTaskRun' smart constructor.
data CancelMLTaskRun = CancelMLTaskRun'
  { _cmltrTransformId ::
      !Text,
    _cmltrTaskRunId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelMLTaskRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmltrTransformId' - The unique identifier of the machine learning transform.
--
-- * 'cmltrTaskRunId' - A unique identifier for the task run.
cancelMLTaskRun ::
  -- | 'cmltrTransformId'
  Text ->
  -- | 'cmltrTaskRunId'
  Text ->
  CancelMLTaskRun
cancelMLTaskRun pTransformId_ pTaskRunId_ =
  CancelMLTaskRun'
    { _cmltrTransformId = pTransformId_,
      _cmltrTaskRunId = pTaskRunId_
    }

-- | The unique identifier of the machine learning transform.
cmltrTransformId :: Lens' CancelMLTaskRun Text
cmltrTransformId = lens _cmltrTransformId (\s a -> s {_cmltrTransformId = a})

-- | A unique identifier for the task run.
cmltrTaskRunId :: Lens' CancelMLTaskRun Text
cmltrTaskRunId = lens _cmltrTaskRunId (\s a -> s {_cmltrTaskRunId = a})

instance AWSRequest CancelMLTaskRun where
  type Rs CancelMLTaskRun = CancelMLTaskRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CancelMLTaskRunResponse'
            <$> (x .?> "Status")
            <*> (x .?> "TransformId")
            <*> (x .?> "TaskRunId")
            <*> (pure (fromEnum s))
      )

instance Hashable CancelMLTaskRun

instance NFData CancelMLTaskRun

instance ToHeaders CancelMLTaskRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CancelMLTaskRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CancelMLTaskRun where
  toJSON CancelMLTaskRun' {..} =
    object
      ( catMaybes
          [ Just ("TransformId" .= _cmltrTransformId),
            Just ("TaskRunId" .= _cmltrTaskRunId)
          ]
      )

instance ToPath CancelMLTaskRun where
  toPath = const "/"

instance ToQuery CancelMLTaskRun where
  toQuery = const mempty

-- | /See:/ 'cancelMLTaskRunResponse' smart constructor.
data CancelMLTaskRunResponse = CancelMLTaskRunResponse'
  { _cmltrrrsStatus ::
      !(Maybe TaskStatusType),
    _cmltrrrsTransformId ::
      !(Maybe Text),
    _cmltrrrsTaskRunId ::
      !(Maybe Text),
    _cmltrrrsResponseStatus ::
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

-- | Creates a value of 'CancelMLTaskRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cmltrrrsStatus' - The status for this run.
--
-- * 'cmltrrrsTransformId' - The unique identifier of the machine learning transform.
--
-- * 'cmltrrrsTaskRunId' - The unique identifier for the task run.
--
-- * 'cmltrrrsResponseStatus' - -- | The response status code.
cancelMLTaskRunResponse ::
  -- | 'cmltrrrsResponseStatus'
  Int ->
  CancelMLTaskRunResponse
cancelMLTaskRunResponse pResponseStatus_ =
  CancelMLTaskRunResponse'
    { _cmltrrrsStatus = Nothing,
      _cmltrrrsTransformId = Nothing,
      _cmltrrrsTaskRunId = Nothing,
      _cmltrrrsResponseStatus = pResponseStatus_
    }

-- | The status for this run.
cmltrrrsStatus :: Lens' CancelMLTaskRunResponse (Maybe TaskStatusType)
cmltrrrsStatus = lens _cmltrrrsStatus (\s a -> s {_cmltrrrsStatus = a})

-- | The unique identifier of the machine learning transform.
cmltrrrsTransformId :: Lens' CancelMLTaskRunResponse (Maybe Text)
cmltrrrsTransformId = lens _cmltrrrsTransformId (\s a -> s {_cmltrrrsTransformId = a})

-- | The unique identifier for the task run.
cmltrrrsTaskRunId :: Lens' CancelMLTaskRunResponse (Maybe Text)
cmltrrrsTaskRunId = lens _cmltrrrsTaskRunId (\s a -> s {_cmltrrrsTaskRunId = a})

-- | -- | The response status code.
cmltrrrsResponseStatus :: Lens' CancelMLTaskRunResponse Int
cmltrrrsResponseStatus = lens _cmltrrrsResponseStatus (\s a -> s {_cmltrrrsResponseStatus = a})

instance NFData CancelMLTaskRunResponse
