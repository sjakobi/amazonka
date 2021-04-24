{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilerConfigForUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilerConfigForUpdate where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration information for updating the Debugger profile parameters, system and framework metrics configurations, and storage paths.
--
--
--
-- /See:/ 'profilerConfigForUpdate' smart constructor.
data ProfilerConfigForUpdate = ProfilerConfigForUpdate'
  { _pcfuS3OutputPath ::
      !(Maybe Text),
    _pcfuProfilingParameters ::
      !( Maybe
           (Map Text Text)
       ),
    _pcfuProfilingIntervalInMilliseconds ::
      !(Maybe Integer),
    _pcfuDisableProfiler ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProfilerConfigForUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcfuS3OutputPath' - Path to Amazon S3 storage location for system and framework metrics.
--
-- * 'pcfuProfilingParameters' - Configuration information for capturing framework metrics. Available key strings for different profiling options are @DetailedProfilingConfig@ , @PythonProfilingConfig@ , and @DataLoaderProfilingConfig@ . The following codes are configuration structures for the @ProfilingParameters@ parameter. To learn more about how to configure the @ProfilingParameters@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
--
-- * 'pcfuProfilingIntervalInMilliseconds' - A time interval for capturing system metrics in milliseconds. Available values are 100, 200, 500, 1000 (1 second), 5000 (5 seconds), and 60000 (1 minute) milliseconds. The default value is 500 milliseconds.
--
-- * 'pcfuDisableProfiler' - To disable Debugger monitoring and profiling, set to @True@ .
profilerConfigForUpdate ::
  ProfilerConfigForUpdate
profilerConfigForUpdate =
  ProfilerConfigForUpdate'
    { _pcfuS3OutputPath =
        Nothing,
      _pcfuProfilingParameters = Nothing,
      _pcfuProfilingIntervalInMilliseconds = Nothing,
      _pcfuDisableProfiler = Nothing
    }

-- | Path to Amazon S3 storage location for system and framework metrics.
pcfuS3OutputPath :: Lens' ProfilerConfigForUpdate (Maybe Text)
pcfuS3OutputPath = lens _pcfuS3OutputPath (\s a -> s {_pcfuS3OutputPath = a})

-- | Configuration information for capturing framework metrics. Available key strings for different profiling options are @DetailedProfilingConfig@ , @PythonProfilingConfig@ , and @DataLoaderProfilingConfig@ . The following codes are configuration structures for the @ProfilingParameters@ parameter. To learn more about how to configure the @ProfilingParameters@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
pcfuProfilingParameters :: Lens' ProfilerConfigForUpdate (HashMap Text Text)
pcfuProfilingParameters = lens _pcfuProfilingParameters (\s a -> s {_pcfuProfilingParameters = a}) . _Default . _Map

-- | A time interval for capturing system metrics in milliseconds. Available values are 100, 200, 500, 1000 (1 second), 5000 (5 seconds), and 60000 (1 minute) milliseconds. The default value is 500 milliseconds.
pcfuProfilingIntervalInMilliseconds :: Lens' ProfilerConfigForUpdate (Maybe Integer)
pcfuProfilingIntervalInMilliseconds = lens _pcfuProfilingIntervalInMilliseconds (\s a -> s {_pcfuProfilingIntervalInMilliseconds = a})

-- | To disable Debugger monitoring and profiling, set to @True@ .
pcfuDisableProfiler :: Lens' ProfilerConfigForUpdate (Maybe Bool)
pcfuDisableProfiler = lens _pcfuDisableProfiler (\s a -> s {_pcfuDisableProfiler = a})

instance Hashable ProfilerConfigForUpdate

instance NFData ProfilerConfigForUpdate

instance ToJSON ProfilerConfigForUpdate where
  toJSON ProfilerConfigForUpdate' {..} =
    object
      ( catMaybes
          [ ("S3OutputPath" .=) <$> _pcfuS3OutputPath,
            ("ProfilingParameters" .=)
              <$> _pcfuProfilingParameters,
            ("ProfilingIntervalInMilliseconds" .=)
              <$> _pcfuProfilingIntervalInMilliseconds,
            ("DisableProfiler" .=) <$> _pcfuDisableProfiler
          ]
      )
