{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.TaskOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskOverride where

import Network.AWS.ECS.Types.ContainerOverride
import Network.AWS.ECS.Types.InferenceAcceleratorOverride
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The overrides associated with a task.
--
--
--
-- /See:/ 'taskOverride' smart constructor.
data TaskOverride = TaskOverride'
  { _toTaskRoleARN ::
      !(Maybe Text),
    _toMemory :: !(Maybe Text),
    _toExecutionRoleARN :: !(Maybe Text),
    _toInferenceAcceleratorOverrides ::
      !(Maybe [InferenceAcceleratorOverride]),
    _toContainerOverrides ::
      !(Maybe [ContainerOverride]),
    _toCpu :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskOverride' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toTaskRoleARN' - The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
--
-- * 'toMemory' - The memory override for the task.
--
-- * 'toExecutionRoleARN' - The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
--
-- * 'toInferenceAcceleratorOverrides' - The Elastic Inference accelerator override for the task.
--
-- * 'toContainerOverrides' - One or more container overrides sent to a task.
--
-- * 'toCpu' - The cpu override for the task.
taskOverride ::
  TaskOverride
taskOverride =
  TaskOverride'
    { _toTaskRoleARN = Nothing,
      _toMemory = Nothing,
      _toExecutionRoleARN = Nothing,
      _toInferenceAcceleratorOverrides = Nothing,
      _toContainerOverrides = Nothing,
      _toCpu = Nothing
    }

-- | The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
toTaskRoleARN :: Lens' TaskOverride (Maybe Text)
toTaskRoleARN = lens _toTaskRoleARN (\s a -> s {_toTaskRoleARN = a})

-- | The memory override for the task.
toMemory :: Lens' TaskOverride (Maybe Text)
toMemory = lens _toMemory (\s a -> s {_toMemory = a})

-- | The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
toExecutionRoleARN :: Lens' TaskOverride (Maybe Text)
toExecutionRoleARN = lens _toExecutionRoleARN (\s a -> s {_toExecutionRoleARN = a})

-- | The Elastic Inference accelerator override for the task.
toInferenceAcceleratorOverrides :: Lens' TaskOverride [InferenceAcceleratorOverride]
toInferenceAcceleratorOverrides = lens _toInferenceAcceleratorOverrides (\s a -> s {_toInferenceAcceleratorOverrides = a}) . _Default . _Coerce

-- | One or more container overrides sent to a task.
toContainerOverrides :: Lens' TaskOverride [ContainerOverride]
toContainerOverrides = lens _toContainerOverrides (\s a -> s {_toContainerOverrides = a}) . _Default . _Coerce

-- | The cpu override for the task.
toCpu :: Lens' TaskOverride (Maybe Text)
toCpu = lens _toCpu (\s a -> s {_toCpu = a})

instance FromJSON TaskOverride where
  parseJSON =
    withObject
      "TaskOverride"
      ( \x ->
          TaskOverride'
            <$> (x .:? "taskRoleArn")
            <*> (x .:? "memory")
            <*> (x .:? "executionRoleArn")
            <*> (x .:? "inferenceAcceleratorOverrides" .!= mempty)
            <*> (x .:? "containerOverrides" .!= mempty)
            <*> (x .:? "cpu")
      )

instance Hashable TaskOverride

instance NFData TaskOverride

instance ToJSON TaskOverride where
  toJSON TaskOverride' {..} =
    object
      ( catMaybes
          [ ("taskRoleArn" .=) <$> _toTaskRoleARN,
            ("memory" .=) <$> _toMemory,
            ("executionRoleArn" .=) <$> _toExecutionRoleARN,
            ("inferenceAcceleratorOverrides" .=)
              <$> _toInferenceAcceleratorOverrides,
            ("containerOverrides" .=) <$> _toContainerOverrides,
            ("cpu" .=) <$> _toCpu
          ]
      )
