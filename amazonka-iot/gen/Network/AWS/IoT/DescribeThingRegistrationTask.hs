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
-- Module      : Network.AWS.IoT.DescribeThingRegistrationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a bulk thing provisioning task.
module Network.AWS.IoT.DescribeThingRegistrationTask
  ( -- * Creating a Request
    describeThingRegistrationTask,
    DescribeThingRegistrationTask,

    -- * Request Lenses
    dtrtTaskId,

    -- * Destructuring the Response
    describeThingRegistrationTaskResponse,
    DescribeThingRegistrationTaskResponse,

    -- * Response Lenses
    dtrtrrsInputFileKey,
    dtrtrrsLastModifiedDate,
    dtrtrrsStatus,
    dtrtrrsRoleARN,
    dtrtrrsMessage,
    dtrtrrsTaskId,
    dtrtrrsPercentageProgress,
    dtrtrrsCreationDate,
    dtrtrrsInputFileBucket,
    dtrtrrsFailureCount,
    dtrtrrsSuccessCount,
    dtrtrrsTemplateBody,
    dtrtrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeThingRegistrationTask' smart constructor.
newtype DescribeThingRegistrationTask = DescribeThingRegistrationTask'
  { _dtrtTaskId ::
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

-- | Creates a value of 'DescribeThingRegistrationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrtTaskId' - The task ID.
describeThingRegistrationTask ::
  -- | 'dtrtTaskId'
  Text ->
  DescribeThingRegistrationTask
describeThingRegistrationTask pTaskId_ =
  DescribeThingRegistrationTask'
    { _dtrtTaskId =
        pTaskId_
    }

-- | The task ID.
dtrtTaskId :: Lens' DescribeThingRegistrationTask Text
dtrtTaskId = lens _dtrtTaskId (\s a -> s {_dtrtTaskId = a})

instance AWSRequest DescribeThingRegistrationTask where
  type
    Rs DescribeThingRegistrationTask =
      DescribeThingRegistrationTaskResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeThingRegistrationTaskResponse'
            <$> (x .?> "inputFileKey")
            <*> (x .?> "lastModifiedDate")
            <*> (x .?> "status")
            <*> (x .?> "roleArn")
            <*> (x .?> "message")
            <*> (x .?> "taskId")
            <*> (x .?> "percentageProgress")
            <*> (x .?> "creationDate")
            <*> (x .?> "inputFileBucket")
            <*> (x .?> "failureCount")
            <*> (x .?> "successCount")
            <*> (x .?> "templateBody")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeThingRegistrationTask

instance NFData DescribeThingRegistrationTask

instance ToHeaders DescribeThingRegistrationTask where
  toHeaders = const mempty

instance ToPath DescribeThingRegistrationTask where
  toPath DescribeThingRegistrationTask' {..} =
    mconcat
      ["/thing-registration-tasks/", toBS _dtrtTaskId]

instance ToQuery DescribeThingRegistrationTask where
  toQuery = const mempty

-- | /See:/ 'describeThingRegistrationTaskResponse' smart constructor.
data DescribeThingRegistrationTaskResponse = DescribeThingRegistrationTaskResponse'
  { _dtrtrrsInputFileKey ::
      !( Maybe
           Text
       ),
    _dtrtrrsLastModifiedDate ::
      !( Maybe
           POSIX
       ),
    _dtrtrrsStatus ::
      !( Maybe
           TaskStatus
       ),
    _dtrtrrsRoleARN ::
      !( Maybe
           Text
       ),
    _dtrtrrsMessage ::
      !( Maybe
           Text
       ),
    _dtrtrrsTaskId ::
      !( Maybe
           Text
       ),
    _dtrtrrsPercentageProgress ::
      !( Maybe
           Nat
       ),
    _dtrtrrsCreationDate ::
      !( Maybe
           POSIX
       ),
    _dtrtrrsInputFileBucket ::
      !( Maybe
           Text
       ),
    _dtrtrrsFailureCount ::
      !( Maybe
           Int
       ),
    _dtrtrrsSuccessCount ::
      !( Maybe
           Int
       ),
    _dtrtrrsTemplateBody ::
      !( Maybe
           Text
       ),
    _dtrtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeThingRegistrationTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrtrrsInputFileKey' - The input file key.
--
-- * 'dtrtrrsLastModifiedDate' - The date when the task was last modified.
--
-- * 'dtrtrrsStatus' - The status of the bulk thing provisioning task.
--
-- * 'dtrtrrsRoleARN' - The role ARN that grants access to the input file bucket.
--
-- * 'dtrtrrsMessage' - The message.
--
-- * 'dtrtrrsTaskId' - The task ID.
--
-- * 'dtrtrrsPercentageProgress' - The progress of the bulk provisioning task expressed as a percentage.
--
-- * 'dtrtrrsCreationDate' - The task creation date.
--
-- * 'dtrtrrsInputFileBucket' - The S3 bucket that contains the input file.
--
-- * 'dtrtrrsFailureCount' - The number of things that failed to be provisioned.
--
-- * 'dtrtrrsSuccessCount' - The number of things successfully provisioned.
--
-- * 'dtrtrrsTemplateBody' - The task's template.
--
-- * 'dtrtrrsResponseStatus' - -- | The response status code.
describeThingRegistrationTaskResponse ::
  -- | 'dtrtrrsResponseStatus'
  Int ->
  DescribeThingRegistrationTaskResponse
describeThingRegistrationTaskResponse
  pResponseStatus_ =
    DescribeThingRegistrationTaskResponse'
      { _dtrtrrsInputFileKey =
          Nothing,
        _dtrtrrsLastModifiedDate = Nothing,
        _dtrtrrsStatus = Nothing,
        _dtrtrrsRoleARN = Nothing,
        _dtrtrrsMessage = Nothing,
        _dtrtrrsTaskId = Nothing,
        _dtrtrrsPercentageProgress = Nothing,
        _dtrtrrsCreationDate = Nothing,
        _dtrtrrsInputFileBucket = Nothing,
        _dtrtrrsFailureCount = Nothing,
        _dtrtrrsSuccessCount = Nothing,
        _dtrtrrsTemplateBody = Nothing,
        _dtrtrrsResponseStatus =
          pResponseStatus_
      }

-- | The input file key.
dtrtrrsInputFileKey :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsInputFileKey = lens _dtrtrrsInputFileKey (\s a -> s {_dtrtrrsInputFileKey = a})

-- | The date when the task was last modified.
dtrtrrsLastModifiedDate :: Lens' DescribeThingRegistrationTaskResponse (Maybe UTCTime)
dtrtrrsLastModifiedDate = lens _dtrtrrsLastModifiedDate (\s a -> s {_dtrtrrsLastModifiedDate = a}) . mapping _Time

-- | The status of the bulk thing provisioning task.
dtrtrrsStatus :: Lens' DescribeThingRegistrationTaskResponse (Maybe TaskStatus)
dtrtrrsStatus = lens _dtrtrrsStatus (\s a -> s {_dtrtrrsStatus = a})

-- | The role ARN that grants access to the input file bucket.
dtrtrrsRoleARN :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsRoleARN = lens _dtrtrrsRoleARN (\s a -> s {_dtrtrrsRoleARN = a})

-- | The message.
dtrtrrsMessage :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsMessage = lens _dtrtrrsMessage (\s a -> s {_dtrtrrsMessage = a})

-- | The task ID.
dtrtrrsTaskId :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsTaskId = lens _dtrtrrsTaskId (\s a -> s {_dtrtrrsTaskId = a})

-- | The progress of the bulk provisioning task expressed as a percentage.
dtrtrrsPercentageProgress :: Lens' DescribeThingRegistrationTaskResponse (Maybe Natural)
dtrtrrsPercentageProgress = lens _dtrtrrsPercentageProgress (\s a -> s {_dtrtrrsPercentageProgress = a}) . mapping _Nat

-- | The task creation date.
dtrtrrsCreationDate :: Lens' DescribeThingRegistrationTaskResponse (Maybe UTCTime)
dtrtrrsCreationDate = lens _dtrtrrsCreationDate (\s a -> s {_dtrtrrsCreationDate = a}) . mapping _Time

-- | The S3 bucket that contains the input file.
dtrtrrsInputFileBucket :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsInputFileBucket = lens _dtrtrrsInputFileBucket (\s a -> s {_dtrtrrsInputFileBucket = a})

-- | The number of things that failed to be provisioned.
dtrtrrsFailureCount :: Lens' DescribeThingRegistrationTaskResponse (Maybe Int)
dtrtrrsFailureCount = lens _dtrtrrsFailureCount (\s a -> s {_dtrtrrsFailureCount = a})

-- | The number of things successfully provisioned.
dtrtrrsSuccessCount :: Lens' DescribeThingRegistrationTaskResponse (Maybe Int)
dtrtrrsSuccessCount = lens _dtrtrrsSuccessCount (\s a -> s {_dtrtrrsSuccessCount = a})

-- | The task's template.
dtrtrrsTemplateBody :: Lens' DescribeThingRegistrationTaskResponse (Maybe Text)
dtrtrrsTemplateBody = lens _dtrtrrsTemplateBody (\s a -> s {_dtrtrrsTemplateBody = a})

-- | -- | The response status code.
dtrtrrsResponseStatus :: Lens' DescribeThingRegistrationTaskResponse Int
dtrtrrsResponseStatus = lens _dtrtrrsResponseStatus (\s a -> s {_dtrtrrsResponseStatus = a})

instance NFData DescribeThingRegistrationTaskResponse
