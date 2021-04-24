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
-- Module      : Network.AWS.Polly.GetSpeechSynthesisTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specific SpeechSynthesisTask object based on its TaskID. This object contains information about the given speech synthesis task, including the status of the task, and a link to the S3 bucket containing the output of the task.
module Network.AWS.Polly.GetSpeechSynthesisTask
  ( -- * Creating a Request
    getSpeechSynthesisTask,
    GetSpeechSynthesisTask,

    -- * Request Lenses
    gsstTaskId,

    -- * Destructuring the Response
    getSpeechSynthesisTaskResponse,
    GetSpeechSynthesisTaskResponse,

    -- * Response Lenses
    gsstrrsSynthesisTask,
    gsstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSpeechSynthesisTask' smart constructor.
newtype GetSpeechSynthesisTask = GetSpeechSynthesisTask'
  { _gsstTaskId ::
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

-- | Creates a value of 'GetSpeechSynthesisTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsstTaskId' - The Amazon Polly generated identifier for a speech synthesis task.
getSpeechSynthesisTask ::
  -- | 'gsstTaskId'
  Text ->
  GetSpeechSynthesisTask
getSpeechSynthesisTask pTaskId_ =
  GetSpeechSynthesisTask' {_gsstTaskId = pTaskId_}

-- | The Amazon Polly generated identifier for a speech synthesis task.
gsstTaskId :: Lens' GetSpeechSynthesisTask Text
gsstTaskId = lens _gsstTaskId (\s a -> s {_gsstTaskId = a})

instance AWSRequest GetSpeechSynthesisTask where
  type
    Rs GetSpeechSynthesisTask =
      GetSpeechSynthesisTaskResponse
  request = get polly
  response =
    receiveJSON
      ( \s h x ->
          GetSpeechSynthesisTaskResponse'
            <$> (x .?> "SynthesisTask") <*> (pure (fromEnum s))
      )

instance Hashable GetSpeechSynthesisTask

instance NFData GetSpeechSynthesisTask

instance ToHeaders GetSpeechSynthesisTask where
  toHeaders = const mempty

instance ToPath GetSpeechSynthesisTask where
  toPath GetSpeechSynthesisTask' {..} =
    mconcat ["/v1/synthesisTasks/", toBS _gsstTaskId]

instance ToQuery GetSpeechSynthesisTask where
  toQuery = const mempty

-- | /See:/ 'getSpeechSynthesisTaskResponse' smart constructor.
data GetSpeechSynthesisTaskResponse = GetSpeechSynthesisTaskResponse'
  { _gsstrrsSynthesisTask ::
      !( Maybe
           SynthesisTask
       ),
    _gsstrrsResponseStatus ::
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

-- | Creates a value of 'GetSpeechSynthesisTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsstrrsSynthesisTask' - SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.
--
-- * 'gsstrrsResponseStatus' - -- | The response status code.
getSpeechSynthesisTaskResponse ::
  -- | 'gsstrrsResponseStatus'
  Int ->
  GetSpeechSynthesisTaskResponse
getSpeechSynthesisTaskResponse pResponseStatus_ =
  GetSpeechSynthesisTaskResponse'
    { _gsstrrsSynthesisTask =
        Nothing,
      _gsstrrsResponseStatus = pResponseStatus_
    }

-- | SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.
gsstrrsSynthesisTask :: Lens' GetSpeechSynthesisTaskResponse (Maybe SynthesisTask)
gsstrrsSynthesisTask = lens _gsstrrsSynthesisTask (\s a -> s {_gsstrrsSynthesisTask = a})

-- | -- | The response status code.
gsstrrsResponseStatus :: Lens' GetSpeechSynthesisTaskResponse Int
gsstrrsResponseStatus = lens _gsstrrsResponseStatus (\s a -> s {_gsstrrsResponseStatus = a})

instance NFData GetSpeechSynthesisTaskResponse
