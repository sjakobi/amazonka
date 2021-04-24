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
-- Module      : Network.AWS.IoT.CancelDetectMitigationActionsTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a Device Defender ML Detect mitigation action.
module Network.AWS.IoT.CancelDetectMitigationActionsTask
  ( -- * Creating a Request
    cancelDetectMitigationActionsTask,
    CancelDetectMitigationActionsTask,

    -- * Request Lenses
    cdmatTaskId,

    -- * Destructuring the Response
    cancelDetectMitigationActionsTaskResponse,
    CancelDetectMitigationActionsTaskResponse,

    -- * Response Lenses
    cdmatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cancelDetectMitigationActionsTask' smart constructor.
newtype CancelDetectMitigationActionsTask = CancelDetectMitigationActionsTask'
  { _cdmatTaskId ::
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

-- | Creates a value of 'CancelDetectMitigationActionsTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdmatTaskId' - The unique identifier of the task.
cancelDetectMitigationActionsTask ::
  -- | 'cdmatTaskId'
  Text ->
  CancelDetectMitigationActionsTask
cancelDetectMitigationActionsTask pTaskId_ =
  CancelDetectMitigationActionsTask'
    { _cdmatTaskId =
        pTaskId_
    }

-- | The unique identifier of the task.
cdmatTaskId :: Lens' CancelDetectMitigationActionsTask Text
cdmatTaskId = lens _cdmatTaskId (\s a -> s {_cdmatTaskId = a})

instance AWSRequest CancelDetectMitigationActionsTask where
  type
    Rs CancelDetectMitigationActionsTask =
      CancelDetectMitigationActionsTaskResponse
  request = putJSON ioT
  response =
    receiveEmpty
      ( \s h x ->
          CancelDetectMitigationActionsTaskResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable CancelDetectMitigationActionsTask

instance NFData CancelDetectMitigationActionsTask

instance ToHeaders CancelDetectMitigationActionsTask where
  toHeaders = const mempty

instance ToJSON CancelDetectMitigationActionsTask where
  toJSON = const (Object mempty)

instance ToPath CancelDetectMitigationActionsTask where
  toPath CancelDetectMitigationActionsTask' {..} =
    mconcat
      [ "/detect/mitigationactions/tasks/",
        toBS _cdmatTaskId,
        "/cancel"
      ]

instance ToQuery CancelDetectMitigationActionsTask where
  toQuery = const mempty

-- | /See:/ 'cancelDetectMitigationActionsTaskResponse' smart constructor.
newtype CancelDetectMitigationActionsTaskResponse = CancelDetectMitigationActionsTaskResponse'
  { _cdmatrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CancelDetectMitigationActionsTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdmatrrsResponseStatus' - -- | The response status code.
cancelDetectMitigationActionsTaskResponse ::
  -- | 'cdmatrrsResponseStatus'
  Int ->
  CancelDetectMitigationActionsTaskResponse
cancelDetectMitigationActionsTaskResponse
  pResponseStatus_ =
    CancelDetectMitigationActionsTaskResponse'
      { _cdmatrrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
cdmatrrsResponseStatus :: Lens' CancelDetectMitigationActionsTaskResponse Int
cdmatrrsResponseStatus = lens _cdmatrrsResponseStatus (\s a -> s {_cdmatrrsResponseStatus = a})

instance
  NFData
    CancelDetectMitigationActionsTaskResponse
