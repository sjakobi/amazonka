{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.AttemptContainerDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.AttemptContainerDetail where

import Network.AWS.Batch.Types.NetworkInterface
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An object representing the details of a container that's part of a job attempt.
--
--
--
-- /See:/ 'attemptContainerDetail' smart constructor.
data AttemptContainerDetail = AttemptContainerDetail'
  { _acdLogStreamName ::
      !(Maybe Text),
    _acdContainerInstanceARN ::
      !(Maybe Text),
    _acdExitCode ::
      !(Maybe Int),
    _acdReason ::
      !(Maybe Text),
    _acdTaskARN ::
      !(Maybe Text),
    _acdNetworkInterfaces ::
      !( Maybe
           [NetworkInterface]
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

-- | Creates a value of 'AttemptContainerDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdLogStreamName' - The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is @/aws/batch/job@ . Each container attempt receives a log stream name when they reach the @RUNNING@ status.
--
-- * 'acdContainerInstanceARN' - The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.
--
-- * 'acdExitCode' - The exit code for the job attempt. A non-zero exit code is considered a failure.
--
-- * 'acdReason' - A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
--
-- * 'acdTaskARN' - The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the job attempt. Each container attempt receives a task ARN when they reach the @STARTING@ status.
--
-- * 'acdNetworkInterfaces' - The network interfaces associated with the job attempt.
attemptContainerDetail ::
  AttemptContainerDetail
attemptContainerDetail =
  AttemptContainerDetail'
    { _acdLogStreamName =
        Nothing,
      _acdContainerInstanceARN = Nothing,
      _acdExitCode = Nothing,
      _acdReason = Nothing,
      _acdTaskARN = Nothing,
      _acdNetworkInterfaces = Nothing
    }

-- | The name of the CloudWatch Logs log stream associated with the container. The log group for AWS Batch jobs is @/aws/batch/job@ . Each container attempt receives a log stream name when they reach the @RUNNING@ status.
acdLogStreamName :: Lens' AttemptContainerDetail (Maybe Text)
acdLogStreamName = lens _acdLogStreamName (\s a -> s {_acdLogStreamName = a})

-- | The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.
acdContainerInstanceARN :: Lens' AttemptContainerDetail (Maybe Text)
acdContainerInstanceARN = lens _acdContainerInstanceARN (\s a -> s {_acdContainerInstanceARN = a})

-- | The exit code for the job attempt. A non-zero exit code is considered a failure.
acdExitCode :: Lens' AttemptContainerDetail (Maybe Int)
acdExitCode = lens _acdExitCode (\s a -> s {_acdExitCode = a})

-- | A short (255 max characters) human-readable string to provide additional details about a running or stopped container.
acdReason :: Lens' AttemptContainerDetail (Maybe Text)
acdReason = lens _acdReason (\s a -> s {_acdReason = a})

-- | The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the job attempt. Each container attempt receives a task ARN when they reach the @STARTING@ status.
acdTaskARN :: Lens' AttemptContainerDetail (Maybe Text)
acdTaskARN = lens _acdTaskARN (\s a -> s {_acdTaskARN = a})

-- | The network interfaces associated with the job attempt.
acdNetworkInterfaces :: Lens' AttemptContainerDetail [NetworkInterface]
acdNetworkInterfaces = lens _acdNetworkInterfaces (\s a -> s {_acdNetworkInterfaces = a}) . _Default . _Coerce

instance FromJSON AttemptContainerDetail where
  parseJSON =
    withObject
      "AttemptContainerDetail"
      ( \x ->
          AttemptContainerDetail'
            <$> (x .:? "logStreamName")
            <*> (x .:? "containerInstanceArn")
            <*> (x .:? "exitCode")
            <*> (x .:? "reason")
            <*> (x .:? "taskArn")
            <*> (x .:? "networkInterfaces" .!= mempty)
      )

instance Hashable AttemptContainerDetail

instance NFData AttemptContainerDetail
