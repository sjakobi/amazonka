{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ExecutorConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ExecutorConfiguration where

import Network.AWS.CodePipeline.Types.JobWorkerExecutorConfiguration
import Network.AWS.CodePipeline.Types.LambdaExecutorConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The action engine, or executor, related to the supported integration model used to create and update the action type. The available executor types are @Lambda@ and @JobWorker@ .
--
--
--
-- /See:/ 'executorConfiguration' smart constructor.
data ExecutorConfiguration = ExecutorConfiguration'
  { _ecJobWorkerExecutorConfiguration ::
      !( Maybe
           JobWorkerExecutorConfiguration
       ),
    _ecLambdaExecutorConfiguration ::
      !( Maybe
           LambdaExecutorConfiguration
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ExecutorConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecJobWorkerExecutorConfiguration' - Details about the @JobWorker@ executor of the action type.
--
-- * 'ecLambdaExecutorConfiguration' - Details about the @Lambda@ executor of the action type.
executorConfiguration ::
  ExecutorConfiguration
executorConfiguration =
  ExecutorConfiguration'
    { _ecJobWorkerExecutorConfiguration =
        Nothing,
      _ecLambdaExecutorConfiguration = Nothing
    }

-- | Details about the @JobWorker@ executor of the action type.
ecJobWorkerExecutorConfiguration :: Lens' ExecutorConfiguration (Maybe JobWorkerExecutorConfiguration)
ecJobWorkerExecutorConfiguration = lens _ecJobWorkerExecutorConfiguration (\s a -> s {_ecJobWorkerExecutorConfiguration = a})

-- | Details about the @Lambda@ executor of the action type.
ecLambdaExecutorConfiguration :: Lens' ExecutorConfiguration (Maybe LambdaExecutorConfiguration)
ecLambdaExecutorConfiguration = lens _ecLambdaExecutorConfiguration (\s a -> s {_ecLambdaExecutorConfiguration = a})

instance FromJSON ExecutorConfiguration where
  parseJSON =
    withObject
      "ExecutorConfiguration"
      ( \x ->
          ExecutorConfiguration'
            <$> (x .:? "jobWorkerExecutorConfiguration")
            <*> (x .:? "lambdaExecutorConfiguration")
      )

instance Hashable ExecutorConfiguration

instance NFData ExecutorConfiguration

instance ToJSON ExecutorConfiguration where
  toJSON ExecutorConfiguration' {..} =
    object
      ( catMaybes
          [ ("jobWorkerExecutorConfiguration" .=)
              <$> _ecJobWorkerExecutorConfiguration,
            ("lambdaExecutorConfiguration" .=)
              <$> _ecLambdaExecutorConfiguration
          ]
      )
