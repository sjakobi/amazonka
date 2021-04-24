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
-- Module      : Network.AWS.SageMaker.DescribeAutoMLJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an Amazon SageMaker job.
module Network.AWS.SageMaker.DescribeAutoMLJob
  ( -- * Creating a Request
    describeAutoMLJob,
    DescribeAutoMLJob,

    -- * Request Lenses
    damljAutoMLJobName,

    -- * Destructuring the Response
    describeAutoMLJobResponse,
    DescribeAutoMLJobResponse,

    -- * Response Lenses
    damljrrsGenerateCandidateDefinitionsOnly,
    damljrrsEndTime,
    damljrrsResolvedAttributes,
    damljrrsAutoMLJobArtifacts,
    damljrrsFailureReason,
    damljrrsAutoMLJobObjective,
    damljrrsAutoMLJobConfig,
    damljrrsProblemType,
    damljrrsBestCandidate,
    damljrrsResponseStatus,
    damljrrsAutoMLJobName,
    damljrrsAutoMLJobARN,
    damljrrsInputDataConfig,
    damljrrsOutputDataConfig,
    damljrrsRoleARN,
    damljrrsCreationTime,
    damljrrsLastModifiedTime,
    damljrrsAutoMLJobStatus,
    damljrrsAutoMLJobSecondaryStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeAutoMLJob' smart constructor.
newtype DescribeAutoMLJob = DescribeAutoMLJob'
  { _damljAutoMLJobName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAutoMLJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damljAutoMLJobName' - Request information about a job using that job's unique name.
describeAutoMLJob ::
  -- | 'damljAutoMLJobName'
  Text ->
  DescribeAutoMLJob
describeAutoMLJob pAutoMLJobName_ =
  DescribeAutoMLJob'
    { _damljAutoMLJobName =
        pAutoMLJobName_
    }

-- | Request information about a job using that job's unique name.
damljAutoMLJobName :: Lens' DescribeAutoMLJob Text
damljAutoMLJobName = lens _damljAutoMLJobName (\s a -> s {_damljAutoMLJobName = a})

instance AWSRequest DescribeAutoMLJob where
  type Rs DescribeAutoMLJob = DescribeAutoMLJobResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeAutoMLJobResponse'
            <$> (x .?> "GenerateCandidateDefinitionsOnly")
            <*> (x .?> "EndTime")
            <*> (x .?> "ResolvedAttributes")
            <*> (x .?> "AutoMLJobArtifacts")
            <*> (x .?> "FailureReason")
            <*> (x .?> "AutoMLJobObjective")
            <*> (x .?> "AutoMLJobConfig")
            <*> (x .?> "ProblemType")
            <*> (x .?> "BestCandidate")
            <*> (pure (fromEnum s))
            <*> (x .:> "AutoMLJobName")
            <*> (x .:> "AutoMLJobArn")
            <*> (x .:> "InputDataConfig")
            <*> (x .:> "OutputDataConfig")
            <*> (x .:> "RoleArn")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
            <*> (x .:> "AutoMLJobStatus")
            <*> (x .:> "AutoMLJobSecondaryStatus")
      )

instance Hashable DescribeAutoMLJob

instance NFData DescribeAutoMLJob

instance ToHeaders DescribeAutoMLJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeAutoMLJob" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAutoMLJob where
  toJSON DescribeAutoMLJob' {..} =
    object
      ( catMaybes
          [Just ("AutoMLJobName" .= _damljAutoMLJobName)]
      )

instance ToPath DescribeAutoMLJob where
  toPath = const "/"

instance ToQuery DescribeAutoMLJob where
  toQuery = const mempty

-- | /See:/ 'describeAutoMLJobResponse' smart constructor.
data DescribeAutoMLJobResponse = DescribeAutoMLJobResponse'
  { _damljrrsGenerateCandidateDefinitionsOnly ::
      !(Maybe Bool),
    _damljrrsEndTime ::
      !(Maybe POSIX),
    _damljrrsResolvedAttributes ::
      !( Maybe
           ResolvedAttributes
       ),
    _damljrrsAutoMLJobArtifacts ::
      !( Maybe
           AutoMLJobArtifacts
       ),
    _damljrrsFailureReason ::
      !(Maybe Text),
    _damljrrsAutoMLJobObjective ::
      !( Maybe
           AutoMLJobObjective
       ),
    _damljrrsAutoMLJobConfig ::
      !( Maybe
           AutoMLJobConfig
       ),
    _damljrrsProblemType ::
      !( Maybe
           ProblemType
       ),
    _damljrrsBestCandidate ::
      !( Maybe
           AutoMLCandidate
       ),
    _damljrrsResponseStatus ::
      !Int,
    _damljrrsAutoMLJobName ::
      !Text,
    _damljrrsAutoMLJobARN ::
      !Text,
    _damljrrsInputDataConfig ::
      !( List1
           AutoMLChannel
       ),
    _damljrrsOutputDataConfig ::
      !AutoMLOutputDataConfig,
    _damljrrsRoleARN ::
      !Text,
    _damljrrsCreationTime ::
      !POSIX,
    _damljrrsLastModifiedTime ::
      !POSIX,
    _damljrrsAutoMLJobStatus ::
      !AutoMLJobStatus,
    _damljrrsAutoMLJobSecondaryStatus ::
      !AutoMLJobSecondaryStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAutoMLJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damljrrsGenerateCandidateDefinitionsOnly' - Returns the job's output from GenerateCandidateDefinitionsOnly.
--
-- * 'damljrrsEndTime' - Returns the job's end time.
--
-- * 'damljrrsResolvedAttributes' - This contains ProblemType, AutoMLJobObjective and CompletionCriteria. They're auto-inferred values, if not provided by you. If you do provide them, then they'll be the same as provided.
--
-- * 'damljrrsAutoMLJobArtifacts' - Returns information on the job's artifacts found in AutoMLJobArtifacts.
--
-- * 'damljrrsFailureReason' - Returns the job's FailureReason.
--
-- * 'damljrrsAutoMLJobObjective' - Returns the job's objective.
--
-- * 'damljrrsAutoMLJobConfig' - Returns the job's config.
--
-- * 'damljrrsProblemType' - Returns the job's problem type.
--
-- * 'damljrrsBestCandidate' - Returns the job's BestCandidate.
--
-- * 'damljrrsResponseStatus' - -- | The response status code.
--
-- * 'damljrrsAutoMLJobName' - Returns the name of a job.
--
-- * 'damljrrsAutoMLJobARN' - Returns the job's ARN.
--
-- * 'damljrrsInputDataConfig' - Returns the job's input data config.
--
-- * 'damljrrsOutputDataConfig' - Returns the job's output data config.
--
-- * 'damljrrsRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
--
-- * 'damljrrsCreationTime' - Returns the job's creation time.
--
-- * 'damljrrsLastModifiedTime' - Returns the job's last modified time.
--
-- * 'damljrrsAutoMLJobStatus' - Returns the job's AutoMLJobStatus.
--
-- * 'damljrrsAutoMLJobSecondaryStatus' - Returns the job's AutoMLJobSecondaryStatus.
describeAutoMLJobResponse ::
  -- | 'damljrrsResponseStatus'
  Int ->
  -- | 'damljrrsAutoMLJobName'
  Text ->
  -- | 'damljrrsAutoMLJobARN'
  Text ->
  -- | 'damljrrsInputDataConfig'
  NonEmpty AutoMLChannel ->
  -- | 'damljrrsOutputDataConfig'
  AutoMLOutputDataConfig ->
  -- | 'damljrrsRoleARN'
  Text ->
  -- | 'damljrrsCreationTime'
  UTCTime ->
  -- | 'damljrrsLastModifiedTime'
  UTCTime ->
  -- | 'damljrrsAutoMLJobStatus'
  AutoMLJobStatus ->
  -- | 'damljrrsAutoMLJobSecondaryStatus'
  AutoMLJobSecondaryStatus ->
  DescribeAutoMLJobResponse
describeAutoMLJobResponse
  pResponseStatus_
  pAutoMLJobName_
  pAutoMLJobARN_
  pInputDataConfig_
  pOutputDataConfig_
  pRoleARN_
  pCreationTime_
  pLastModifiedTime_
  pAutoMLJobStatus_
  pAutoMLJobSecondaryStatus_ =
    DescribeAutoMLJobResponse'
      { _damljrrsGenerateCandidateDefinitionsOnly =
          Nothing,
        _damljrrsEndTime = Nothing,
        _damljrrsResolvedAttributes = Nothing,
        _damljrrsAutoMLJobArtifacts = Nothing,
        _damljrrsFailureReason = Nothing,
        _damljrrsAutoMLJobObjective = Nothing,
        _damljrrsAutoMLJobConfig = Nothing,
        _damljrrsProblemType = Nothing,
        _damljrrsBestCandidate = Nothing,
        _damljrrsResponseStatus = pResponseStatus_,
        _damljrrsAutoMLJobName = pAutoMLJobName_,
        _damljrrsAutoMLJobARN = pAutoMLJobARN_,
        _damljrrsInputDataConfig =
          _List1 # pInputDataConfig_,
        _damljrrsOutputDataConfig = pOutputDataConfig_,
        _damljrrsRoleARN = pRoleARN_,
        _damljrrsCreationTime = _Time # pCreationTime_,
        _damljrrsLastModifiedTime =
          _Time # pLastModifiedTime_,
        _damljrrsAutoMLJobStatus = pAutoMLJobStatus_,
        _damljrrsAutoMLJobSecondaryStatus =
          pAutoMLJobSecondaryStatus_
      }

-- | Returns the job's output from GenerateCandidateDefinitionsOnly.
damljrrsGenerateCandidateDefinitionsOnly :: Lens' DescribeAutoMLJobResponse (Maybe Bool)
damljrrsGenerateCandidateDefinitionsOnly = lens _damljrrsGenerateCandidateDefinitionsOnly (\s a -> s {_damljrrsGenerateCandidateDefinitionsOnly = a})

-- | Returns the job's end time.
damljrrsEndTime :: Lens' DescribeAutoMLJobResponse (Maybe UTCTime)
damljrrsEndTime = lens _damljrrsEndTime (\s a -> s {_damljrrsEndTime = a}) . mapping _Time

-- | This contains ProblemType, AutoMLJobObjective and CompletionCriteria. They're auto-inferred values, if not provided by you. If you do provide them, then they'll be the same as provided.
damljrrsResolvedAttributes :: Lens' DescribeAutoMLJobResponse (Maybe ResolvedAttributes)
damljrrsResolvedAttributes = lens _damljrrsResolvedAttributes (\s a -> s {_damljrrsResolvedAttributes = a})

-- | Returns information on the job's artifacts found in AutoMLJobArtifacts.
damljrrsAutoMLJobArtifacts :: Lens' DescribeAutoMLJobResponse (Maybe AutoMLJobArtifacts)
damljrrsAutoMLJobArtifacts = lens _damljrrsAutoMLJobArtifacts (\s a -> s {_damljrrsAutoMLJobArtifacts = a})

-- | Returns the job's FailureReason.
damljrrsFailureReason :: Lens' DescribeAutoMLJobResponse (Maybe Text)
damljrrsFailureReason = lens _damljrrsFailureReason (\s a -> s {_damljrrsFailureReason = a})

-- | Returns the job's objective.
damljrrsAutoMLJobObjective :: Lens' DescribeAutoMLJobResponse (Maybe AutoMLJobObjective)
damljrrsAutoMLJobObjective = lens _damljrrsAutoMLJobObjective (\s a -> s {_damljrrsAutoMLJobObjective = a})

-- | Returns the job's config.
damljrrsAutoMLJobConfig :: Lens' DescribeAutoMLJobResponse (Maybe AutoMLJobConfig)
damljrrsAutoMLJobConfig = lens _damljrrsAutoMLJobConfig (\s a -> s {_damljrrsAutoMLJobConfig = a})

-- | Returns the job's problem type.
damljrrsProblemType :: Lens' DescribeAutoMLJobResponse (Maybe ProblemType)
damljrrsProblemType = lens _damljrrsProblemType (\s a -> s {_damljrrsProblemType = a})

-- | Returns the job's BestCandidate.
damljrrsBestCandidate :: Lens' DescribeAutoMLJobResponse (Maybe AutoMLCandidate)
damljrrsBestCandidate = lens _damljrrsBestCandidate (\s a -> s {_damljrrsBestCandidate = a})

-- | -- | The response status code.
damljrrsResponseStatus :: Lens' DescribeAutoMLJobResponse Int
damljrrsResponseStatus = lens _damljrrsResponseStatus (\s a -> s {_damljrrsResponseStatus = a})

-- | Returns the name of a job.
damljrrsAutoMLJobName :: Lens' DescribeAutoMLJobResponse Text
damljrrsAutoMLJobName = lens _damljrrsAutoMLJobName (\s a -> s {_damljrrsAutoMLJobName = a})

-- | Returns the job's ARN.
damljrrsAutoMLJobARN :: Lens' DescribeAutoMLJobResponse Text
damljrrsAutoMLJobARN = lens _damljrrsAutoMLJobARN (\s a -> s {_damljrrsAutoMLJobARN = a})

-- | Returns the job's input data config.
damljrrsInputDataConfig :: Lens' DescribeAutoMLJobResponse (NonEmpty AutoMLChannel)
damljrrsInputDataConfig = lens _damljrrsInputDataConfig (\s a -> s {_damljrrsInputDataConfig = a}) . _List1

-- | Returns the job's output data config.
damljrrsOutputDataConfig :: Lens' DescribeAutoMLJobResponse AutoMLOutputDataConfig
damljrrsOutputDataConfig = lens _damljrrsOutputDataConfig (\s a -> s {_damljrrsOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that has read permission to the input data location and write permission to the output data location in Amazon S3.
damljrrsRoleARN :: Lens' DescribeAutoMLJobResponse Text
damljrrsRoleARN = lens _damljrrsRoleARN (\s a -> s {_damljrrsRoleARN = a})

-- | Returns the job's creation time.
damljrrsCreationTime :: Lens' DescribeAutoMLJobResponse UTCTime
damljrrsCreationTime = lens _damljrrsCreationTime (\s a -> s {_damljrrsCreationTime = a}) . _Time

-- | Returns the job's last modified time.
damljrrsLastModifiedTime :: Lens' DescribeAutoMLJobResponse UTCTime
damljrrsLastModifiedTime = lens _damljrrsLastModifiedTime (\s a -> s {_damljrrsLastModifiedTime = a}) . _Time

-- | Returns the job's AutoMLJobStatus.
damljrrsAutoMLJobStatus :: Lens' DescribeAutoMLJobResponse AutoMLJobStatus
damljrrsAutoMLJobStatus = lens _damljrrsAutoMLJobStatus (\s a -> s {_damljrrsAutoMLJobStatus = a})

-- | Returns the job's AutoMLJobSecondaryStatus.
damljrrsAutoMLJobSecondaryStatus :: Lens' DescribeAutoMLJobResponse AutoMLJobSecondaryStatus
damljrrsAutoMLJobSecondaryStatus = lens _damljrrsAutoMLJobSecondaryStatus (\s a -> s {_damljrrsAutoMLJobSecondaryStatus = a})

instance NFData DescribeAutoMLJobResponse
