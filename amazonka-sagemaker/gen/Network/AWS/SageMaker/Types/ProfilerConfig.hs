{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProfilerConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProfilerConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration information for Debugger system monitoring, framework profiling, and storage paths.
--
--
--
-- /See:/ 'profilerConfig' smart constructor.
data ProfilerConfig = ProfilerConfig'
  { _pcProfilingParameters ::
      !(Maybe (Map Text Text)),
    _pcProfilingIntervalInMilliseconds ::
      !(Maybe Integer),
    _pcS3OutputPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProfilerConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcProfilingParameters' - Configuration information for capturing framework metrics. Available key strings for different profiling options are @DetailedProfilingConfig@ , @PythonProfilingConfig@ , and @DataLoaderProfilingConfig@ . The following codes are configuration structures for the @ProfilingParameters@ parameter. To learn more about how to configure the @ProfilingParameters@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
--
-- * 'pcProfilingIntervalInMilliseconds' - A time interval for capturing system metrics in milliseconds. Available values are 100, 200, 500, 1000 (1 second), 5000 (5 seconds), and 60000 (1 minute) milliseconds. The default value is 500 milliseconds.
--
-- * 'pcS3OutputPath' - Path to Amazon S3 storage location for system and framework metrics.
profilerConfig ::
  -- | 'pcS3OutputPath'
  Text ->
  ProfilerConfig
profilerConfig pS3OutputPath_ =
  ProfilerConfig'
    { _pcProfilingParameters = Nothing,
      _pcProfilingIntervalInMilliseconds = Nothing,
      _pcS3OutputPath = pS3OutputPath_
    }

-- | Configuration information for capturing framework metrics. Available key strings for different profiling options are @DetailedProfilingConfig@ , @PythonProfilingConfig@ , and @DataLoaderProfilingConfig@ . The following codes are configuration structures for the @ProfilingParameters@ parameter. To learn more about how to configure the @ProfilingParameters@ parameter, see <https://docs.aws.amazon.com/sagemaker/latest/dg/debugger-createtrainingjob-api.html Use the SageMaker and Debugger Configuration API Operations to Create, Update, and Debug Your Training Job> .
pcProfilingParameters :: Lens' ProfilerConfig (HashMap Text Text)
pcProfilingParameters = lens _pcProfilingParameters (\s a -> s {_pcProfilingParameters = a}) . _Default . _Map

-- | A time interval for capturing system metrics in milliseconds. Available values are 100, 200, 500, 1000 (1 second), 5000 (5 seconds), and 60000 (1 minute) milliseconds. The default value is 500 milliseconds.
pcProfilingIntervalInMilliseconds :: Lens' ProfilerConfig (Maybe Integer)
pcProfilingIntervalInMilliseconds = lens _pcProfilingIntervalInMilliseconds (\s a -> s {_pcProfilingIntervalInMilliseconds = a})

-- | Path to Amazon S3 storage location for system and framework metrics.
pcS3OutputPath :: Lens' ProfilerConfig Text
pcS3OutputPath = lens _pcS3OutputPath (\s a -> s {_pcS3OutputPath = a})

instance FromJSON ProfilerConfig where
  parseJSON =
    withObject
      "ProfilerConfig"
      ( \x ->
          ProfilerConfig'
            <$> (x .:? "ProfilingParameters" .!= mempty)
            <*> (x .:? "ProfilingIntervalInMilliseconds")
            <*> (x .: "S3OutputPath")
      )

instance Hashable ProfilerConfig

instance NFData ProfilerConfig

instance ToJSON ProfilerConfig where
  toJSON ProfilerConfig' {..} =
    object
      ( catMaybes
          [ ("ProfilingParameters" .=)
              <$> _pcProfilingParameters,
            ("ProfilingIntervalInMilliseconds" .=)
              <$> _pcProfilingIntervalInMilliseconds,
            Just ("S3OutputPath" .= _pcS3OutputPath)
          ]
      )
