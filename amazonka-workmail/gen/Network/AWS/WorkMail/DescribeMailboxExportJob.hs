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
-- Module      : Network.AWS.WorkMail.DescribeMailboxExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the current status of a mailbox export job.
module Network.AWS.WorkMail.DescribeMailboxExportJob
  ( -- * Creating a Request
    describeMailboxExportJob,
    DescribeMailboxExportJob,

    -- * Request Lenses
    dmejJobId,
    dmejOrganizationId,

    -- * Destructuring the Response
    describeMailboxExportJobResponse,
    DescribeMailboxExportJobResponse,

    -- * Response Lenses
    dmejrrsEstimatedProgress,
    dmejrrsRoleARN,
    dmejrrsEntityId,
    dmejrrsStartTime,
    dmejrrsS3Path,
    dmejrrsEndTime,
    dmejrrsState,
    dmejrrsKMSKeyARN,
    dmejrrsS3BucketName,
    dmejrrsErrorInfo,
    dmejrrsDescription,
    dmejrrsS3Prefix,
    dmejrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'describeMailboxExportJob' smart constructor.
data DescribeMailboxExportJob = DescribeMailboxExportJob'
  { _dmejJobId ::
      !Text,
    _dmejOrganizationId ::
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

-- | Creates a value of 'DescribeMailboxExportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmejJobId' - The mailbox export job ID.
--
-- * 'dmejOrganizationId' - The organization ID.
describeMailboxExportJob ::
  -- | 'dmejJobId'
  Text ->
  -- | 'dmejOrganizationId'
  Text ->
  DescribeMailboxExportJob
describeMailboxExportJob pJobId_ pOrganizationId_ =
  DescribeMailboxExportJob'
    { _dmejJobId = pJobId_,
      _dmejOrganizationId = pOrganizationId_
    }

-- | The mailbox export job ID.
dmejJobId :: Lens' DescribeMailboxExportJob Text
dmejJobId = lens _dmejJobId (\s a -> s {_dmejJobId = a})

-- | The organization ID.
dmejOrganizationId :: Lens' DescribeMailboxExportJob Text
dmejOrganizationId = lens _dmejOrganizationId (\s a -> s {_dmejOrganizationId = a})

instance AWSRequest DescribeMailboxExportJob where
  type
    Rs DescribeMailboxExportJob =
      DescribeMailboxExportJobResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DescribeMailboxExportJobResponse'
            <$> (x .?> "EstimatedProgress")
            <*> (x .?> "RoleArn")
            <*> (x .?> "EntityId")
            <*> (x .?> "StartTime")
            <*> (x .?> "S3Path")
            <*> (x .?> "EndTime")
            <*> (x .?> "State")
            <*> (x .?> "KmsKeyArn")
            <*> (x .?> "S3BucketName")
            <*> (x .?> "ErrorInfo")
            <*> (x .?> "Description")
            <*> (x .?> "S3Prefix")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMailboxExportJob

instance NFData DescribeMailboxExportJob

instance ToHeaders DescribeMailboxExportJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.DescribeMailboxExportJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMailboxExportJob where
  toJSON DescribeMailboxExportJob' {..} =
    object
      ( catMaybes
          [ Just ("JobId" .= _dmejJobId),
            Just ("OrganizationId" .= _dmejOrganizationId)
          ]
      )

instance ToPath DescribeMailboxExportJob where
  toPath = const "/"

instance ToQuery DescribeMailboxExportJob where
  toQuery = const mempty

-- | /See:/ 'describeMailboxExportJobResponse' smart constructor.
data DescribeMailboxExportJobResponse = DescribeMailboxExportJobResponse'
  { _dmejrrsEstimatedProgress ::
      !( Maybe
           Nat
       ),
    _dmejrrsRoleARN ::
      !( Maybe
           Text
       ),
    _dmejrrsEntityId ::
      !( Maybe
           Text
       ),
    _dmejrrsStartTime ::
      !( Maybe
           POSIX
       ),
    _dmejrrsS3Path ::
      !( Maybe
           Text
       ),
    _dmejrrsEndTime ::
      !( Maybe
           POSIX
       ),
    _dmejrrsState ::
      !( Maybe
           MailboxExportJobState
       ),
    _dmejrrsKMSKeyARN ::
      !( Maybe
           Text
       ),
    _dmejrrsS3BucketName ::
      !( Maybe
           Text
       ),
    _dmejrrsErrorInfo ::
      !( Maybe
           Text
       ),
    _dmejrrsDescription ::
      !( Maybe
           Text
       ),
    _dmejrrsS3Prefix ::
      !( Maybe
           Text
       ),
    _dmejrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMailboxExportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmejrrsEstimatedProgress' - The estimated progress of the mailbox export job, in percentage points.
--
-- * 'dmejrrsRoleARN' - The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the Amazon Simple Storage Service (Amazon S3) bucket.
--
-- * 'dmejrrsEntityId' - The identifier of the user or resource associated with the mailbox.
--
-- * 'dmejrrsStartTime' - The mailbox export job start timestamp.
--
-- * 'dmejrrsS3Path' - The path to the S3 bucket and file that the mailbox export job is exporting to.
--
-- * 'dmejrrsEndTime' - The mailbox export job end timestamp.
--
-- * 'dmejrrsState' - The state of the mailbox export job.
--
-- * 'dmejrrsKMSKeyARN' - The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS) key that encrypts the exported mailbox content.
--
-- * 'dmejrrsS3BucketName' - The name of the S3 bucket.
--
-- * 'dmejrrsErrorInfo' - Error information for failed mailbox export jobs.
--
-- * 'dmejrrsDescription' - The mailbox export job description.
--
-- * 'dmejrrsS3Prefix' - The S3 bucket prefix.
--
-- * 'dmejrrsResponseStatus' - -- | The response status code.
describeMailboxExportJobResponse ::
  -- | 'dmejrrsResponseStatus'
  Int ->
  DescribeMailboxExportJobResponse
describeMailboxExportJobResponse pResponseStatus_ =
  DescribeMailboxExportJobResponse'
    { _dmejrrsEstimatedProgress =
        Nothing,
      _dmejrrsRoleARN = Nothing,
      _dmejrrsEntityId = Nothing,
      _dmejrrsStartTime = Nothing,
      _dmejrrsS3Path = Nothing,
      _dmejrrsEndTime = Nothing,
      _dmejrrsState = Nothing,
      _dmejrrsKMSKeyARN = Nothing,
      _dmejrrsS3BucketName = Nothing,
      _dmejrrsErrorInfo = Nothing,
      _dmejrrsDescription = Nothing,
      _dmejrrsS3Prefix = Nothing,
      _dmejrrsResponseStatus = pResponseStatus_
    }

-- | The estimated progress of the mailbox export job, in percentage points.
dmejrrsEstimatedProgress :: Lens' DescribeMailboxExportJobResponse (Maybe Natural)
dmejrrsEstimatedProgress = lens _dmejrrsEstimatedProgress (\s a -> s {_dmejrrsEstimatedProgress = a}) . mapping _Nat

-- | The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the Amazon Simple Storage Service (Amazon S3) bucket.
dmejrrsRoleARN :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsRoleARN = lens _dmejrrsRoleARN (\s a -> s {_dmejrrsRoleARN = a})

-- | The identifier of the user or resource associated with the mailbox.
dmejrrsEntityId :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsEntityId = lens _dmejrrsEntityId (\s a -> s {_dmejrrsEntityId = a})

-- | The mailbox export job start timestamp.
dmejrrsStartTime :: Lens' DescribeMailboxExportJobResponse (Maybe UTCTime)
dmejrrsStartTime = lens _dmejrrsStartTime (\s a -> s {_dmejrrsStartTime = a}) . mapping _Time

-- | The path to the S3 bucket and file that the mailbox export job is exporting to.
dmejrrsS3Path :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsS3Path = lens _dmejrrsS3Path (\s a -> s {_dmejrrsS3Path = a})

-- | The mailbox export job end timestamp.
dmejrrsEndTime :: Lens' DescribeMailboxExportJobResponse (Maybe UTCTime)
dmejrrsEndTime = lens _dmejrrsEndTime (\s a -> s {_dmejrrsEndTime = a}) . mapping _Time

-- | The state of the mailbox export job.
dmejrrsState :: Lens' DescribeMailboxExportJobResponse (Maybe MailboxExportJobState)
dmejrrsState = lens _dmejrrsState (\s a -> s {_dmejrrsState = a})

-- | The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS) key that encrypts the exported mailbox content.
dmejrrsKMSKeyARN :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsKMSKeyARN = lens _dmejrrsKMSKeyARN (\s a -> s {_dmejrrsKMSKeyARN = a})

-- | The name of the S3 bucket.
dmejrrsS3BucketName :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsS3BucketName = lens _dmejrrsS3BucketName (\s a -> s {_dmejrrsS3BucketName = a})

-- | Error information for failed mailbox export jobs.
dmejrrsErrorInfo :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsErrorInfo = lens _dmejrrsErrorInfo (\s a -> s {_dmejrrsErrorInfo = a})

-- | The mailbox export job description.
dmejrrsDescription :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsDescription = lens _dmejrrsDescription (\s a -> s {_dmejrrsDescription = a})

-- | The S3 bucket prefix.
dmejrrsS3Prefix :: Lens' DescribeMailboxExportJobResponse (Maybe Text)
dmejrrsS3Prefix = lens _dmejrrsS3Prefix (\s a -> s {_dmejrrsS3Prefix = a})

-- | -- | The response status code.
dmejrrsResponseStatus :: Lens' DescribeMailboxExportJobResponse Int
dmejrrsResponseStatus = lens _dmejrrsResponseStatus (\s a -> s {_dmejrrsResponseStatus = a})

instance NFData DescribeMailboxExportJobResponse
