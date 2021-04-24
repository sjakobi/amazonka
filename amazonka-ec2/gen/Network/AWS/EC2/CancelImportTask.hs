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
-- Module      : Network.AWS.EC2.CancelImportTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels an in-process import virtual machine or import snapshot task.
module Network.AWS.EC2.CancelImportTask
  ( -- * Creating a Request
    cancelImportTask,
    CancelImportTask,

    -- * Request Lenses
    citDryRun,
    citImportTaskId,
    citCancelReason,

    -- * Destructuring the Response
    cancelImportTaskResponse,
    CancelImportTaskResponse,

    -- * Response Lenses
    citrrsImportTaskId,
    citrrsState,
    citrrsPreviousState,
    citrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelImportTask' smart constructor.
data CancelImportTask = CancelImportTask'
  { _citDryRun ::
      !(Maybe Bool),
    _citImportTaskId :: !(Maybe Text),
    _citCancelReason :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CancelImportTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'citImportTaskId' - The ID of the import image or import snapshot task to be canceled.
--
-- * 'citCancelReason' - The reason for canceling the task.
cancelImportTask ::
  CancelImportTask
cancelImportTask =
  CancelImportTask'
    { _citDryRun = Nothing,
      _citImportTaskId = Nothing,
      _citCancelReason = Nothing
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
citDryRun :: Lens' CancelImportTask (Maybe Bool)
citDryRun = lens _citDryRun (\s a -> s {_citDryRun = a})

-- | The ID of the import image or import snapshot task to be canceled.
citImportTaskId :: Lens' CancelImportTask (Maybe Text)
citImportTaskId = lens _citImportTaskId (\s a -> s {_citImportTaskId = a})

-- | The reason for canceling the task.
citCancelReason :: Lens' CancelImportTask (Maybe Text)
citCancelReason = lens _citCancelReason (\s a -> s {_citCancelReason = a})

instance AWSRequest CancelImportTask where
  type Rs CancelImportTask = CancelImportTaskResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CancelImportTaskResponse'
            <$> (x .@? "importTaskId")
            <*> (x .@? "state")
            <*> (x .@? "previousState")
            <*> (pure (fromEnum s))
      )

instance Hashable CancelImportTask

instance NFData CancelImportTask

instance ToHeaders CancelImportTask where
  toHeaders = const mempty

instance ToPath CancelImportTask where
  toPath = const "/"

instance ToQuery CancelImportTask where
  toQuery CancelImportTask' {..} =
    mconcat
      [ "Action" =: ("CancelImportTask" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _citDryRun,
        "ImportTaskId" =: _citImportTaskId,
        "CancelReason" =: _citCancelReason
      ]

-- | /See:/ 'cancelImportTaskResponse' smart constructor.
data CancelImportTaskResponse = CancelImportTaskResponse'
  { _citrrsImportTaskId ::
      !(Maybe Text),
    _citrrsState ::
      !(Maybe Text),
    _citrrsPreviousState ::
      !(Maybe Text),
    _citrrsResponseStatus ::
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

-- | Creates a value of 'CancelImportTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'citrrsImportTaskId' - The ID of the task being canceled.
--
-- * 'citrrsState' - The current state of the task being canceled.
--
-- * 'citrrsPreviousState' - The current state of the task being canceled.
--
-- * 'citrrsResponseStatus' - -- | The response status code.
cancelImportTaskResponse ::
  -- | 'citrrsResponseStatus'
  Int ->
  CancelImportTaskResponse
cancelImportTaskResponse pResponseStatus_ =
  CancelImportTaskResponse'
    { _citrrsImportTaskId =
        Nothing,
      _citrrsState = Nothing,
      _citrrsPreviousState = Nothing,
      _citrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the task being canceled.
citrrsImportTaskId :: Lens' CancelImportTaskResponse (Maybe Text)
citrrsImportTaskId = lens _citrrsImportTaskId (\s a -> s {_citrrsImportTaskId = a})

-- | The current state of the task being canceled.
citrrsState :: Lens' CancelImportTaskResponse (Maybe Text)
citrrsState = lens _citrrsState (\s a -> s {_citrrsState = a})

-- | The current state of the task being canceled.
citrrsPreviousState :: Lens' CancelImportTaskResponse (Maybe Text)
citrrsPreviousState = lens _citrrsPreviousState (\s a -> s {_citrrsPreviousState = a})

-- | -- | The response status code.
citrrsResponseStatus :: Lens' CancelImportTaskResponse Int
citrrsResponseStatus = lens _citrrsResponseStatus (\s a -> s {_citrrsResponseStatus = a})

instance NFData CancelImportTaskResponse
