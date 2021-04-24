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
-- Module      : Network.AWS.SageMaker.UpdateTrainingJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a model training job to request a new Debugger profiling configuration.
module Network.AWS.SageMaker.UpdateTrainingJob
  ( -- * Creating a Request
    updateTrainingJob,
    UpdateTrainingJob,

    -- * Request Lenses
    utjProfilerConfig,
    utjProfilerRuleConfigurations,
    utjTrainingJobName,

    -- * Destructuring the Response
    updateTrainingJobResponse,
    UpdateTrainingJobResponse,

    -- * Response Lenses
    utjrrsResponseStatus,
    utjrrsTrainingJobARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateTrainingJob' smart constructor.
data UpdateTrainingJob = UpdateTrainingJob'
  { _utjProfilerConfig ::
      !(Maybe ProfilerConfigForUpdate),
    _utjProfilerRuleConfigurations ::
      !( Maybe
           [ProfilerRuleConfiguration]
       ),
    _utjTrainingJobName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrainingJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utjProfilerConfig' - Configuration information for Debugger system monitoring, framework profiling, and storage paths.
--
-- * 'utjProfilerRuleConfigurations' - Configuration information for Debugger rules for profiling system and framework metrics.
--
-- * 'utjTrainingJobName' - The name of a training job to update the Debugger profiling configuration.
updateTrainingJob ::
  -- | 'utjTrainingJobName'
  Text ->
  UpdateTrainingJob
updateTrainingJob pTrainingJobName_ =
  UpdateTrainingJob'
    { _utjProfilerConfig = Nothing,
      _utjProfilerRuleConfigurations = Nothing,
      _utjTrainingJobName = pTrainingJobName_
    }

-- | Configuration information for Debugger system monitoring, framework profiling, and storage paths.
utjProfilerConfig :: Lens' UpdateTrainingJob (Maybe ProfilerConfigForUpdate)
utjProfilerConfig = lens _utjProfilerConfig (\s a -> s {_utjProfilerConfig = a})

-- | Configuration information for Debugger rules for profiling system and framework metrics.
utjProfilerRuleConfigurations :: Lens' UpdateTrainingJob [ProfilerRuleConfiguration]
utjProfilerRuleConfigurations = lens _utjProfilerRuleConfigurations (\s a -> s {_utjProfilerRuleConfigurations = a}) . _Default . _Coerce

-- | The name of a training job to update the Debugger profiling configuration.
utjTrainingJobName :: Lens' UpdateTrainingJob Text
utjTrainingJobName = lens _utjTrainingJobName (\s a -> s {_utjTrainingJobName = a})

instance AWSRequest UpdateTrainingJob where
  type Rs UpdateTrainingJob = UpdateTrainingJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateTrainingJobResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "TrainingJobArn")
      )

instance Hashable UpdateTrainingJob

instance NFData UpdateTrainingJob

instance ToHeaders UpdateTrainingJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateTrainingJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTrainingJob where
  toJSON UpdateTrainingJob' {..} =
    object
      ( catMaybes
          [ ("ProfilerConfig" .=) <$> _utjProfilerConfig,
            ("ProfilerRuleConfigurations" .=)
              <$> _utjProfilerRuleConfigurations,
            Just ("TrainingJobName" .= _utjTrainingJobName)
          ]
      )

instance ToPath UpdateTrainingJob where
  toPath = const "/"

instance ToQuery UpdateTrainingJob where
  toQuery = const mempty

-- | /See:/ 'updateTrainingJobResponse' smart constructor.
data UpdateTrainingJobResponse = UpdateTrainingJobResponse'
  { _utjrrsResponseStatus ::
      !Int,
    _utjrrsTrainingJobARN ::
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

-- | Creates a value of 'UpdateTrainingJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utjrrsResponseStatus' - -- | The response status code.
--
-- * 'utjrrsTrainingJobARN' - The Amazon Resource Name (ARN) of the training job.
updateTrainingJobResponse ::
  -- | 'utjrrsResponseStatus'
  Int ->
  -- | 'utjrrsTrainingJobARN'
  Text ->
  UpdateTrainingJobResponse
updateTrainingJobResponse
  pResponseStatus_
  pTrainingJobARN_ =
    UpdateTrainingJobResponse'
      { _utjrrsResponseStatus =
          pResponseStatus_,
        _utjrrsTrainingJobARN = pTrainingJobARN_
      }

-- | -- | The response status code.
utjrrsResponseStatus :: Lens' UpdateTrainingJobResponse Int
utjrrsResponseStatus = lens _utjrrsResponseStatus (\s a -> s {_utjrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the training job.
utjrrsTrainingJobARN :: Lens' UpdateTrainingJobResponse Text
utjrrsTrainingJobARN = lens _utjrrsTrainingJobARN (\s a -> s {_utjrrsTrainingJobARN = a})

instance NFData UpdateTrainingJobResponse
