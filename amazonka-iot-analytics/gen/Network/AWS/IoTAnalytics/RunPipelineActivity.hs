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
-- Module      : Network.AWS.IoTAnalytics.RunPipelineActivity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Simulates the results of running a pipeline activity on a message payload.
module Network.AWS.IoTAnalytics.RunPipelineActivity
  ( -- * Creating a Request
    runPipelineActivity,
    RunPipelineActivity,

    -- * Request Lenses
    rpaPipelineActivity,
    rpaPayloads,

    -- * Destructuring the Response
    runPipelineActivityResponse,
    RunPipelineActivityResponse,

    -- * Response Lenses
    rparrsLogResult,
    rparrsPayloads,
    rparrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'runPipelineActivity' smart constructor.
data RunPipelineActivity = RunPipelineActivity'
  { _rpaPipelineActivity ::
      !PipelineActivity,
    _rpaPayloads :: !(List1 Base64)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RunPipelineActivity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpaPipelineActivity' - The pipeline activity that is run. This must not be a channel activity or a datastore activity because these activities are used in a pipeline only to load the original message and to store the (possibly) transformed message. If a lambda activity is specified, only short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be used.
--
-- * 'rpaPayloads' - The sample message payloads on which the pipeline activity is run.
runPipelineActivity ::
  -- | 'rpaPipelineActivity'
  PipelineActivity ->
  -- | 'rpaPayloads'
  NonEmpty ByteString ->
  RunPipelineActivity
runPipelineActivity pPipelineActivity_ pPayloads_ =
  RunPipelineActivity'
    { _rpaPipelineActivity =
        pPipelineActivity_,
      _rpaPayloads = _List1 # pPayloads_
    }

-- | The pipeline activity that is run. This must not be a channel activity or a datastore activity because these activities are used in a pipeline only to load the original message and to store the (possibly) transformed message. If a lambda activity is specified, only short-running Lambda functions (those with a timeout of less than 30 seconds or less) can be used.
rpaPipelineActivity :: Lens' RunPipelineActivity PipelineActivity
rpaPipelineActivity = lens _rpaPipelineActivity (\s a -> s {_rpaPipelineActivity = a})

-- | The sample message payloads on which the pipeline activity is run.
rpaPayloads :: Lens' RunPipelineActivity (NonEmpty ByteString)
rpaPayloads = lens _rpaPayloads (\s a -> s {_rpaPayloads = a}) . _List1

instance AWSRequest RunPipelineActivity where
  type
    Rs RunPipelineActivity =
      RunPipelineActivityResponse
  request = postJSON ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          RunPipelineActivityResponse'
            <$> (x .?> "logResult")
            <*> (x .?> "payloads")
            <*> (pure (fromEnum s))
      )

instance Hashable RunPipelineActivity

instance NFData RunPipelineActivity

instance ToHeaders RunPipelineActivity where
  toHeaders = const mempty

instance ToJSON RunPipelineActivity where
  toJSON RunPipelineActivity' {..} =
    object
      ( catMaybes
          [ Just ("pipelineActivity" .= _rpaPipelineActivity),
            Just ("payloads" .= _rpaPayloads)
          ]
      )

instance ToPath RunPipelineActivity where
  toPath = const "/pipelineactivities/run"

instance ToQuery RunPipelineActivity where
  toQuery = const mempty

-- | /See:/ 'runPipelineActivityResponse' smart constructor.
data RunPipelineActivityResponse = RunPipelineActivityResponse'
  { _rparrsLogResult ::
      !(Maybe Text),
    _rparrsPayloads ::
      !( Maybe
           ( List1
               Base64
           )
       ),
    _rparrsResponseStatus ::
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

-- | Creates a value of 'RunPipelineActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rparrsLogResult' - In case the pipeline activity fails, the log message that is generated.
--
-- * 'rparrsPayloads' - The enriched or transformed sample message payloads as base64-encoded strings. (The results of running the pipeline activity on each input sample message payload, encoded in base64.)
--
-- * 'rparrsResponseStatus' - -- | The response status code.
runPipelineActivityResponse ::
  -- | 'rparrsResponseStatus'
  Int ->
  RunPipelineActivityResponse
runPipelineActivityResponse pResponseStatus_ =
  RunPipelineActivityResponse'
    { _rparrsLogResult =
        Nothing,
      _rparrsPayloads = Nothing,
      _rparrsResponseStatus = pResponseStatus_
    }

-- | In case the pipeline activity fails, the log message that is generated.
rparrsLogResult :: Lens' RunPipelineActivityResponse (Maybe Text)
rparrsLogResult = lens _rparrsLogResult (\s a -> s {_rparrsLogResult = a})

-- | The enriched or transformed sample message payloads as base64-encoded strings. (The results of running the pipeline activity on each input sample message payload, encoded in base64.)
rparrsPayloads :: Lens' RunPipelineActivityResponse (Maybe (NonEmpty ByteString))
rparrsPayloads = lens _rparrsPayloads (\s a -> s {_rparrsPayloads = a}) . mapping _List1

-- | -- | The response status code.
rparrsResponseStatus :: Lens' RunPipelineActivityResponse Int
rparrsResponseStatus = lens _rparrsResponseStatus (\s a -> s {_rparrsResponseStatus = a})

instance NFData RunPipelineActivityResponse
