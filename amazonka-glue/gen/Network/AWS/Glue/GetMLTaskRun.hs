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
-- Module      : Network.AWS.Glue.GetMLTaskRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details for a specific task run on a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can check the stats of any task run by calling @GetMLTaskRun@ with the @TaskRunID@ and its parent transform's @TransformID@ .
module Network.AWS.Glue.GetMLTaskRun
  ( -- * Creating a Request
    getMLTaskRun,
    GetMLTaskRun,

    -- * Request Lenses
    gTransformId,
    gTaskRunId,

    -- * Destructuring the Response
    getMLTaskRunResponse,
    GetMLTaskRunResponse,

    -- * Response Lenses
    gmltrrmrsExecutionTime,
    gmltrrmrsStatus,
    gmltrrmrsTransformId,
    gmltrrmrsTaskRunId,
    gmltrrmrsErrorString,
    gmltrrmrsLastModifiedOn,
    gmltrrmrsLogGroupName,
    gmltrrmrsCompletedOn,
    gmltrrmrsProperties,
    gmltrrmrsStartedOn,
    gmltrrmrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMLTaskRun' smart constructor.
data GetMLTaskRun = GetMLTaskRun'
  { _gTransformId ::
      !Text,
    _gTaskRunId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLTaskRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gTransformId' - The unique identifier of the machine learning transform.
--
-- * 'gTaskRunId' - The unique identifier of the task run.
getMLTaskRun ::
  -- | 'gTransformId'
  Text ->
  -- | 'gTaskRunId'
  Text ->
  GetMLTaskRun
getMLTaskRun pTransformId_ pTaskRunId_ =
  GetMLTaskRun'
    { _gTransformId = pTransformId_,
      _gTaskRunId = pTaskRunId_
    }

-- | The unique identifier of the machine learning transform.
gTransformId :: Lens' GetMLTaskRun Text
gTransformId = lens _gTransformId (\s a -> s {_gTransformId = a})

-- | The unique identifier of the task run.
gTaskRunId :: Lens' GetMLTaskRun Text
gTaskRunId = lens _gTaskRunId (\s a -> s {_gTaskRunId = a})

instance AWSRequest GetMLTaskRun where
  type Rs GetMLTaskRun = GetMLTaskRunResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetMLTaskRunResponse'
            <$> (x .?> "ExecutionTime")
            <*> (x .?> "Status")
            <*> (x .?> "TransformId")
            <*> (x .?> "TaskRunId")
            <*> (x .?> "ErrorString")
            <*> (x .?> "LastModifiedOn")
            <*> (x .?> "LogGroupName")
            <*> (x .?> "CompletedOn")
            <*> (x .?> "Properties")
            <*> (x .?> "StartedOn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMLTaskRun

instance NFData GetMLTaskRun

instance ToHeaders GetMLTaskRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetMLTaskRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMLTaskRun where
  toJSON GetMLTaskRun' {..} =
    object
      ( catMaybes
          [ Just ("TransformId" .= _gTransformId),
            Just ("TaskRunId" .= _gTaskRunId)
          ]
      )

instance ToPath GetMLTaskRun where
  toPath = const "/"

instance ToQuery GetMLTaskRun where
  toQuery = const mempty

-- | /See:/ 'getMLTaskRunResponse' smart constructor.
data GetMLTaskRunResponse = GetMLTaskRunResponse'
  { _gmltrrmrsExecutionTime ::
      !(Maybe Int),
    _gmltrrmrsStatus ::
      !(Maybe TaskStatusType),
    _gmltrrmrsTransformId ::
      !(Maybe Text),
    _gmltrrmrsTaskRunId ::
      !(Maybe Text),
    _gmltrrmrsErrorString ::
      !(Maybe Text),
    _gmltrrmrsLastModifiedOn ::
      !(Maybe POSIX),
    _gmltrrmrsLogGroupName ::
      !(Maybe Text),
    _gmltrrmrsCompletedOn ::
      !(Maybe POSIX),
    _gmltrrmrsProperties ::
      !(Maybe TaskRunProperties),
    _gmltrrmrsStartedOn ::
      !(Maybe POSIX),
    _gmltrrmrsResponseStatus ::
      !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMLTaskRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmltrrmrsExecutionTime' - The amount of time (in seconds) that the task run consumed resources.
--
-- * 'gmltrrmrsStatus' - The status for this task run.
--
-- * 'gmltrrmrsTransformId' - The unique identifier of the task run.
--
-- * 'gmltrrmrsTaskRunId' - The unique run identifier associated with this run.
--
-- * 'gmltrrmrsErrorString' - The error strings that are associated with the task run.
--
-- * 'gmltrrmrsLastModifiedOn' - The date and time when this task run was last modified.
--
-- * 'gmltrrmrsLogGroupName' - The names of the log groups that are associated with the task run.
--
-- * 'gmltrrmrsCompletedOn' - The date and time when this task run was completed.
--
-- * 'gmltrrmrsProperties' - The list of properties that are associated with the task run.
--
-- * 'gmltrrmrsStartedOn' - The date and time when this task run started.
--
-- * 'gmltrrmrsResponseStatus' - -- | The response status code.
getMLTaskRunResponse ::
  -- | 'gmltrrmrsResponseStatus'
  Int ->
  GetMLTaskRunResponse
getMLTaskRunResponse pResponseStatus_ =
  GetMLTaskRunResponse'
    { _gmltrrmrsExecutionTime =
        Nothing,
      _gmltrrmrsStatus = Nothing,
      _gmltrrmrsTransformId = Nothing,
      _gmltrrmrsTaskRunId = Nothing,
      _gmltrrmrsErrorString = Nothing,
      _gmltrrmrsLastModifiedOn = Nothing,
      _gmltrrmrsLogGroupName = Nothing,
      _gmltrrmrsCompletedOn = Nothing,
      _gmltrrmrsProperties = Nothing,
      _gmltrrmrsStartedOn = Nothing,
      _gmltrrmrsResponseStatus = pResponseStatus_
    }

-- | The amount of time (in seconds) that the task run consumed resources.
gmltrrmrsExecutionTime :: Lens' GetMLTaskRunResponse (Maybe Int)
gmltrrmrsExecutionTime = lens _gmltrrmrsExecutionTime (\s a -> s {_gmltrrmrsExecutionTime = a})

-- | The status for this task run.
gmltrrmrsStatus :: Lens' GetMLTaskRunResponse (Maybe TaskStatusType)
gmltrrmrsStatus = lens _gmltrrmrsStatus (\s a -> s {_gmltrrmrsStatus = a})

-- | The unique identifier of the task run.
gmltrrmrsTransformId :: Lens' GetMLTaskRunResponse (Maybe Text)
gmltrrmrsTransformId = lens _gmltrrmrsTransformId (\s a -> s {_gmltrrmrsTransformId = a})

-- | The unique run identifier associated with this run.
gmltrrmrsTaskRunId :: Lens' GetMLTaskRunResponse (Maybe Text)
gmltrrmrsTaskRunId = lens _gmltrrmrsTaskRunId (\s a -> s {_gmltrrmrsTaskRunId = a})

-- | The error strings that are associated with the task run.
gmltrrmrsErrorString :: Lens' GetMLTaskRunResponse (Maybe Text)
gmltrrmrsErrorString = lens _gmltrrmrsErrorString (\s a -> s {_gmltrrmrsErrorString = a})

-- | The date and time when this task run was last modified.
gmltrrmrsLastModifiedOn :: Lens' GetMLTaskRunResponse (Maybe UTCTime)
gmltrrmrsLastModifiedOn = lens _gmltrrmrsLastModifiedOn (\s a -> s {_gmltrrmrsLastModifiedOn = a}) . mapping _Time

-- | The names of the log groups that are associated with the task run.
gmltrrmrsLogGroupName :: Lens' GetMLTaskRunResponse (Maybe Text)
gmltrrmrsLogGroupName = lens _gmltrrmrsLogGroupName (\s a -> s {_gmltrrmrsLogGroupName = a})

-- | The date and time when this task run was completed.
gmltrrmrsCompletedOn :: Lens' GetMLTaskRunResponse (Maybe UTCTime)
gmltrrmrsCompletedOn = lens _gmltrrmrsCompletedOn (\s a -> s {_gmltrrmrsCompletedOn = a}) . mapping _Time

-- | The list of properties that are associated with the task run.
gmltrrmrsProperties :: Lens' GetMLTaskRunResponse (Maybe TaskRunProperties)
gmltrrmrsProperties = lens _gmltrrmrsProperties (\s a -> s {_gmltrrmrsProperties = a})

-- | The date and time when this task run started.
gmltrrmrsStartedOn :: Lens' GetMLTaskRunResponse (Maybe UTCTime)
gmltrrmrsStartedOn = lens _gmltrrmrsStartedOn (\s a -> s {_gmltrrmrsStartedOn = a}) . mapping _Time

-- | -- | The response status code.
gmltrrmrsResponseStatus :: Lens' GetMLTaskRunResponse Int
gmltrrmrsResponseStatus = lens _gmltrrmrsResponseStatus (\s a -> s {_gmltrrmrsResponseStatus = a})

instance NFData GetMLTaskRunResponse
