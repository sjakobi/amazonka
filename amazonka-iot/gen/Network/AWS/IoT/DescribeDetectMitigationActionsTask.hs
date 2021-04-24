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
-- Module      : Network.AWS.IoT.DescribeDetectMitigationActionsTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Defender ML Detect mitigation action.
module Network.AWS.IoT.DescribeDetectMitigationActionsTask
  ( -- * Creating a Request
    describeDetectMitigationActionsTask,
    DescribeDetectMitigationActionsTask,

    -- * Request Lenses
    ddmatTaskId,

    -- * Destructuring the Response
    describeDetectMitigationActionsTaskResponse,
    DescribeDetectMitigationActionsTaskResponse,

    -- * Response Lenses
    ddmatrrsTaskSummary,
    ddmatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDetectMitigationActionsTask' smart constructor.
newtype DescribeDetectMitigationActionsTask = DescribeDetectMitigationActionsTask'
  { _ddmatTaskId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDetectMitigationActionsTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddmatTaskId' - The unique identifier of the task.
describeDetectMitigationActionsTask ::
  -- | 'ddmatTaskId'
  Text ->
  DescribeDetectMitigationActionsTask
describeDetectMitigationActionsTask pTaskId_ =
  DescribeDetectMitigationActionsTask'
    { _ddmatTaskId =
        pTaskId_
    }

-- | The unique identifier of the task.
ddmatTaskId :: Lens' DescribeDetectMitigationActionsTask Text
ddmatTaskId = lens _ddmatTaskId (\s a -> s {_ddmatTaskId = a})

instance
  AWSRequest
    DescribeDetectMitigationActionsTask
  where
  type
    Rs DescribeDetectMitigationActionsTask =
      DescribeDetectMitigationActionsTaskResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeDetectMitigationActionsTaskResponse'
            <$> (x .?> "taskSummary") <*> (pure (fromEnum s))
      )

instance Hashable DescribeDetectMitigationActionsTask

instance NFData DescribeDetectMitigationActionsTask

instance
  ToHeaders
    DescribeDetectMitigationActionsTask
  where
  toHeaders = const mempty

instance ToPath DescribeDetectMitigationActionsTask where
  toPath DescribeDetectMitigationActionsTask' {..} =
    mconcat
      [ "/detect/mitigationactions/tasks/",
        toBS _ddmatTaskId
      ]

instance ToQuery DescribeDetectMitigationActionsTask where
  toQuery = const mempty

-- | /See:/ 'describeDetectMitigationActionsTaskResponse' smart constructor.
data DescribeDetectMitigationActionsTaskResponse = DescribeDetectMitigationActionsTaskResponse'
  { _ddmatrrsTaskSummary ::
      !( Maybe
           DetectMitigationActionsTaskSummary
       ),
    _ddmatrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDetectMitigationActionsTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddmatrrsTaskSummary' - The description of a task.
--
-- * 'ddmatrrsResponseStatus' - -- | The response status code.
describeDetectMitigationActionsTaskResponse ::
  -- | 'ddmatrrsResponseStatus'
  Int ->
  DescribeDetectMitigationActionsTaskResponse
describeDetectMitigationActionsTaskResponse
  pResponseStatus_ =
    DescribeDetectMitigationActionsTaskResponse'
      { _ddmatrrsTaskSummary =
          Nothing,
        _ddmatrrsResponseStatus =
          pResponseStatus_
      }

-- | The description of a task.
ddmatrrsTaskSummary :: Lens' DescribeDetectMitigationActionsTaskResponse (Maybe DetectMitigationActionsTaskSummary)
ddmatrrsTaskSummary = lens _ddmatrrsTaskSummary (\s a -> s {_ddmatrrsTaskSummary = a})

-- | -- | The response status code.
ddmatrrsResponseStatus :: Lens' DescribeDetectMitigationActionsTaskResponse Int
ddmatrrsResponseStatus = lens _ddmatrrsResponseStatus (\s a -> s {_ddmatrrsResponseStatus = a})

instance
  NFData
    DescribeDetectMitigationActionsTaskResponse
