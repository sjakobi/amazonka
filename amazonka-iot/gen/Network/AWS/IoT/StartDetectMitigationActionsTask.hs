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
-- Module      : Network.AWS.IoT.StartDetectMitigationActionsTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a Device Defender ML Detect mitigation actions task.
module Network.AWS.IoT.StartDetectMitigationActionsTask
  ( -- * Creating a Request
    startDetectMitigationActionsTask,
    StartDetectMitigationActionsTask,

    -- * Request Lenses
    sdmatIncludeSuppressedAlerts,
    sdmatIncludeOnlyActiveViolations,
    sdmatViolationEventOccurrenceRange,
    sdmatTaskId,
    sdmatTarget,
    sdmatActions,
    sdmatClientRequestToken,

    -- * Destructuring the Response
    startDetectMitigationActionsTaskResponse,
    StartDetectMitigationActionsTaskResponse,

    -- * Response Lenses
    sdmatrrsTaskId,
    sdmatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startDetectMitigationActionsTask' smart constructor.
data StartDetectMitigationActionsTask = StartDetectMitigationActionsTask'
  { _sdmatIncludeSuppressedAlerts ::
      !( Maybe
           Bool
       ),
    _sdmatIncludeOnlyActiveViolations ::
      !( Maybe
           Bool
       ),
    _sdmatViolationEventOccurrenceRange ::
      !( Maybe
           ViolationEventOccurrenceRange
       ),
    _sdmatTaskId ::
      !Text,
    _sdmatTarget ::
      !DetectMitigationActionsTaskTarget,
    _sdmatActions ::
      !( List1
           Text
       ),
    _sdmatClientRequestToken ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartDetectMitigationActionsTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdmatIncludeSuppressedAlerts' - Specifies to include suppressed alerts.
--
-- * 'sdmatIncludeOnlyActiveViolations' - Specifies to list only active violations.
--
-- * 'sdmatViolationEventOccurrenceRange' - Specifies the time period of which violation events occurred between.
--
-- * 'sdmatTaskId' - The unique identifier of the task.
--
-- * 'sdmatTarget' - Specifies the ML Detect findings to which the mitigation actions are applied.
--
-- * 'sdmatActions' - The actions to be performed when a device has unexpected behavior.
--
-- * 'sdmatClientRequestToken' - Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
startDetectMitigationActionsTask ::
  -- | 'sdmatTaskId'
  Text ->
  -- | 'sdmatTarget'
  DetectMitigationActionsTaskTarget ->
  -- | 'sdmatActions'
  NonEmpty Text ->
  -- | 'sdmatClientRequestToken'
  Text ->
  StartDetectMitigationActionsTask
startDetectMitigationActionsTask
  pTaskId_
  pTarget_
  pActions_
  pClientRequestToken_ =
    StartDetectMitigationActionsTask'
      { _sdmatIncludeSuppressedAlerts =
          Nothing,
        _sdmatIncludeOnlyActiveViolations =
          Nothing,
        _sdmatViolationEventOccurrenceRange =
          Nothing,
        _sdmatTaskId = pTaskId_,
        _sdmatTarget = pTarget_,
        _sdmatActions = _List1 # pActions_,
        _sdmatClientRequestToken =
          pClientRequestToken_
      }

-- | Specifies to include suppressed alerts.
sdmatIncludeSuppressedAlerts :: Lens' StartDetectMitigationActionsTask (Maybe Bool)
sdmatIncludeSuppressedAlerts = lens _sdmatIncludeSuppressedAlerts (\s a -> s {_sdmatIncludeSuppressedAlerts = a})

-- | Specifies to list only active violations.
sdmatIncludeOnlyActiveViolations :: Lens' StartDetectMitigationActionsTask (Maybe Bool)
sdmatIncludeOnlyActiveViolations = lens _sdmatIncludeOnlyActiveViolations (\s a -> s {_sdmatIncludeOnlyActiveViolations = a})

-- | Specifies the time period of which violation events occurred between.
sdmatViolationEventOccurrenceRange :: Lens' StartDetectMitigationActionsTask (Maybe ViolationEventOccurrenceRange)
sdmatViolationEventOccurrenceRange = lens _sdmatViolationEventOccurrenceRange (\s a -> s {_sdmatViolationEventOccurrenceRange = a})

-- | The unique identifier of the task.
sdmatTaskId :: Lens' StartDetectMitigationActionsTask Text
sdmatTaskId = lens _sdmatTaskId (\s a -> s {_sdmatTaskId = a})

-- | Specifies the ML Detect findings to which the mitigation actions are applied.
sdmatTarget :: Lens' StartDetectMitigationActionsTask DetectMitigationActionsTaskTarget
sdmatTarget = lens _sdmatTarget (\s a -> s {_sdmatTarget = a})

-- | The actions to be performed when a device has unexpected behavior.
sdmatActions :: Lens' StartDetectMitigationActionsTask (NonEmpty Text)
sdmatActions = lens _sdmatActions (\s a -> s {_sdmatActions = a}) . _List1

-- | Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
sdmatClientRequestToken :: Lens' StartDetectMitigationActionsTask Text
sdmatClientRequestToken = lens _sdmatClientRequestToken (\s a -> s {_sdmatClientRequestToken = a})

instance AWSRequest StartDetectMitigationActionsTask where
  type
    Rs StartDetectMitigationActionsTask =
      StartDetectMitigationActionsTaskResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          StartDetectMitigationActionsTaskResponse'
            <$> (x .?> "taskId") <*> (pure (fromEnum s))
      )

instance Hashable StartDetectMitigationActionsTask

instance NFData StartDetectMitigationActionsTask

instance ToHeaders StartDetectMitigationActionsTask where
  toHeaders = const mempty

instance ToJSON StartDetectMitigationActionsTask where
  toJSON StartDetectMitigationActionsTask' {..} =
    object
      ( catMaybes
          [ ("includeSuppressedAlerts" .=)
              <$> _sdmatIncludeSuppressedAlerts,
            ("includeOnlyActiveViolations" .=)
              <$> _sdmatIncludeOnlyActiveViolations,
            ("violationEventOccurrenceRange" .=)
              <$> _sdmatViolationEventOccurrenceRange,
            Just ("target" .= _sdmatTarget),
            Just ("actions" .= _sdmatActions),
            Just
              ("clientRequestToken" .= _sdmatClientRequestToken)
          ]
      )

instance ToPath StartDetectMitigationActionsTask where
  toPath StartDetectMitigationActionsTask' {..} =
    mconcat
      [ "/detect/mitigationactions/tasks/",
        toBS _sdmatTaskId
      ]

instance ToQuery StartDetectMitigationActionsTask where
  toQuery = const mempty

-- | /See:/ 'startDetectMitigationActionsTaskResponse' smart constructor.
data StartDetectMitigationActionsTaskResponse = StartDetectMitigationActionsTaskResponse'
  { _sdmatrrsTaskId ::
      !( Maybe
           Text
       ),
    _sdmatrrsResponseStatus ::
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

-- | Creates a value of 'StartDetectMitigationActionsTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdmatrrsTaskId' - The unique identifier of the task.
--
-- * 'sdmatrrsResponseStatus' - -- | The response status code.
startDetectMitigationActionsTaskResponse ::
  -- | 'sdmatrrsResponseStatus'
  Int ->
  StartDetectMitigationActionsTaskResponse
startDetectMitigationActionsTaskResponse
  pResponseStatus_ =
    StartDetectMitigationActionsTaskResponse'
      { _sdmatrrsTaskId =
          Nothing,
        _sdmatrrsResponseStatus =
          pResponseStatus_
      }

-- | The unique identifier of the task.
sdmatrrsTaskId :: Lens' StartDetectMitigationActionsTaskResponse (Maybe Text)
sdmatrrsTaskId = lens _sdmatrrsTaskId (\s a -> s {_sdmatrrsTaskId = a})

-- | -- | The response status code.
sdmatrrsResponseStatus :: Lens' StartDetectMitigationActionsTaskResponse Int
sdmatrrsResponseStatus = lens _sdmatrrsResponseStatus (\s a -> s {_sdmatrrsResponseStatus = a})

instance
  NFData
    StartDetectMitigationActionsTaskResponse
