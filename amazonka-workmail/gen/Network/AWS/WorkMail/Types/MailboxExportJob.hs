{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.MailboxExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MailboxExportJob where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkMail.Types.MailboxExportJobState

-- | The details of a mailbox export job, including the user or resource ID associated with the mailbox and the S3 bucket that the mailbox contents are exported to.
--
--
--
-- /See:/ 'mailboxExportJob' smart constructor.
data MailboxExportJob = MailboxExportJob'
  { _mejEstimatedProgress ::
      !(Maybe Nat),
    _mejEntityId :: !(Maybe Text),
    _mejStartTime :: !(Maybe POSIX),
    _mejS3Path :: !(Maybe Text),
    _mejEndTime :: !(Maybe POSIX),
    _mejState ::
      !(Maybe MailboxExportJobState),
    _mejS3BucketName :: !(Maybe Text),
    _mejDescription :: !(Maybe Text),
    _mejJobId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MailboxExportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mejEstimatedProgress' - The estimated progress of the mailbox export job, in percentage points.
--
-- * 'mejEntityId' - The identifier of the user or resource associated with the mailbox.
--
-- * 'mejStartTime' - The mailbox export job start timestamp.
--
-- * 'mejS3Path' - The path to the S3 bucket and file that the mailbox export job exports to.
--
-- * 'mejEndTime' - The mailbox export job end timestamp.
--
-- * 'mejState' - The state of the mailbox export job.
--
-- * 'mejS3BucketName' - The name of the S3 bucket.
--
-- * 'mejDescription' - The mailbox export job description.
--
-- * 'mejJobId' - The identifier of the mailbox export job.
mailboxExportJob ::
  MailboxExportJob
mailboxExportJob =
  MailboxExportJob'
    { _mejEstimatedProgress = Nothing,
      _mejEntityId = Nothing,
      _mejStartTime = Nothing,
      _mejS3Path = Nothing,
      _mejEndTime = Nothing,
      _mejState = Nothing,
      _mejS3BucketName = Nothing,
      _mejDescription = Nothing,
      _mejJobId = Nothing
    }

-- | The estimated progress of the mailbox export job, in percentage points.
mejEstimatedProgress :: Lens' MailboxExportJob (Maybe Natural)
mejEstimatedProgress = lens _mejEstimatedProgress (\s a -> s {_mejEstimatedProgress = a}) . mapping _Nat

-- | The identifier of the user or resource associated with the mailbox.
mejEntityId :: Lens' MailboxExportJob (Maybe Text)
mejEntityId = lens _mejEntityId (\s a -> s {_mejEntityId = a})

-- | The mailbox export job start timestamp.
mejStartTime :: Lens' MailboxExportJob (Maybe UTCTime)
mejStartTime = lens _mejStartTime (\s a -> s {_mejStartTime = a}) . mapping _Time

-- | The path to the S3 bucket and file that the mailbox export job exports to.
mejS3Path :: Lens' MailboxExportJob (Maybe Text)
mejS3Path = lens _mejS3Path (\s a -> s {_mejS3Path = a})

-- | The mailbox export job end timestamp.
mejEndTime :: Lens' MailboxExportJob (Maybe UTCTime)
mejEndTime = lens _mejEndTime (\s a -> s {_mejEndTime = a}) . mapping _Time

-- | The state of the mailbox export job.
mejState :: Lens' MailboxExportJob (Maybe MailboxExportJobState)
mejState = lens _mejState (\s a -> s {_mejState = a})

-- | The name of the S3 bucket.
mejS3BucketName :: Lens' MailboxExportJob (Maybe Text)
mejS3BucketName = lens _mejS3BucketName (\s a -> s {_mejS3BucketName = a})

-- | The mailbox export job description.
mejDescription :: Lens' MailboxExportJob (Maybe Text)
mejDescription = lens _mejDescription (\s a -> s {_mejDescription = a})

-- | The identifier of the mailbox export job.
mejJobId :: Lens' MailboxExportJob (Maybe Text)
mejJobId = lens _mejJobId (\s a -> s {_mejJobId = a})

instance FromJSON MailboxExportJob where
  parseJSON =
    withObject
      "MailboxExportJob"
      ( \x ->
          MailboxExportJob'
            <$> (x .:? "EstimatedProgress")
            <*> (x .:? "EntityId")
            <*> (x .:? "StartTime")
            <*> (x .:? "S3Path")
            <*> (x .:? "EndTime")
            <*> (x .:? "State")
            <*> (x .:? "S3BucketName")
            <*> (x .:? "Description")
            <*> (x .:? "JobId")
      )

instance Hashable MailboxExportJob

instance NFData MailboxExportJob
