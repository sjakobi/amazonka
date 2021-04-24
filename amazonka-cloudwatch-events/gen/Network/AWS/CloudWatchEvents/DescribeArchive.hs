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
-- Module      : Network.AWS.CloudWatchEvents.DescribeArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about an archive.
module Network.AWS.CloudWatchEvents.DescribeArchive
  ( -- * Creating a Request
    describeArchive,
    DescribeArchive,

    -- * Request Lenses
    daArchiveName,

    -- * Destructuring the Response
    describeArchiveResponse,
    DescribeArchiveResponse,

    -- * Response Lenses
    darrsEventCount,
    darrsEventPattern,
    darrsEventSourceARN,
    darrsCreationTime,
    darrsStateReason,
    darrsArchiveName,
    darrsArchiveARN,
    darrsState,
    darrsSizeBytes,
    darrsDescription,
    darrsRetentionDays,
    darrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeArchive' smart constructor.
newtype DescribeArchive = DescribeArchive'
  { _daArchiveName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daArchiveName' - The name of the archive to retrieve.
describeArchive ::
  -- | 'daArchiveName'
  Text ->
  DescribeArchive
describeArchive pArchiveName_ =
  DescribeArchive' {_daArchiveName = pArchiveName_}

-- | The name of the archive to retrieve.
daArchiveName :: Lens' DescribeArchive Text
daArchiveName = lens _daArchiveName (\s a -> s {_daArchiveName = a})

instance AWSRequest DescribeArchive where
  type Rs DescribeArchive = DescribeArchiveResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeArchiveResponse'
            <$> (x .?> "EventCount")
            <*> (x .?> "EventPattern")
            <*> (x .?> "EventSourceArn")
            <*> (x .?> "CreationTime")
            <*> (x .?> "StateReason")
            <*> (x .?> "ArchiveName")
            <*> (x .?> "ArchiveArn")
            <*> (x .?> "State")
            <*> (x .?> "SizeBytes")
            <*> (x .?> "Description")
            <*> (x .?> "RetentionDays")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeArchive

instance NFData DescribeArchive

instance ToHeaders DescribeArchive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeArchive" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeArchive where
  toJSON DescribeArchive' {..} =
    object
      (catMaybes [Just ("ArchiveName" .= _daArchiveName)])

instance ToPath DescribeArchive where
  toPath = const "/"

instance ToQuery DescribeArchive where
  toQuery = const mempty

-- | /See:/ 'describeArchiveResponse' smart constructor.
data DescribeArchiveResponse = DescribeArchiveResponse'
  { _darrsEventCount ::
      !(Maybe Integer),
    _darrsEventPattern ::
      !(Maybe Text),
    _darrsEventSourceARN ::
      !(Maybe Text),
    _darrsCreationTime ::
      !(Maybe POSIX),
    _darrsStateReason ::
      !(Maybe Text),
    _darrsArchiveName ::
      !(Maybe Text),
    _darrsArchiveARN ::
      !(Maybe Text),
    _darrsState ::
      !(Maybe ArchiveState),
    _darrsSizeBytes ::
      !(Maybe Integer),
    _darrsDescription ::
      !(Maybe Text),
    _darrsRetentionDays ::
      !(Maybe Nat),
    _darrsResponseStatus ::
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

-- | Creates a value of 'DescribeArchiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darrsEventCount' - The number of events in the archive.
--
-- * 'darrsEventPattern' - The event pattern used to filter events sent to the archive.
--
-- * 'darrsEventSourceARN' - The ARN of the event source associated with the archive.
--
-- * 'darrsCreationTime' - The time at which the archive was created.
--
-- * 'darrsStateReason' - The reason that the archive is in the state.
--
-- * 'darrsArchiveName' - The name of the archive.
--
-- * 'darrsArchiveARN' - The ARN of the archive.
--
-- * 'darrsState' - The state of the archive.
--
-- * 'darrsSizeBytes' - The size of the archive in bytes.
--
-- * 'darrsDescription' - The description of the archive.
--
-- * 'darrsRetentionDays' - The number of days to retain events for in the archive.
--
-- * 'darrsResponseStatus' - -- | The response status code.
describeArchiveResponse ::
  -- | 'darrsResponseStatus'
  Int ->
  DescribeArchiveResponse
describeArchiveResponse pResponseStatus_ =
  DescribeArchiveResponse'
    { _darrsEventCount =
        Nothing,
      _darrsEventPattern = Nothing,
      _darrsEventSourceARN = Nothing,
      _darrsCreationTime = Nothing,
      _darrsStateReason = Nothing,
      _darrsArchiveName = Nothing,
      _darrsArchiveARN = Nothing,
      _darrsState = Nothing,
      _darrsSizeBytes = Nothing,
      _darrsDescription = Nothing,
      _darrsRetentionDays = Nothing,
      _darrsResponseStatus = pResponseStatus_
    }

-- | The number of events in the archive.
darrsEventCount :: Lens' DescribeArchiveResponse (Maybe Integer)
darrsEventCount = lens _darrsEventCount (\s a -> s {_darrsEventCount = a})

-- | The event pattern used to filter events sent to the archive.
darrsEventPattern :: Lens' DescribeArchiveResponse (Maybe Text)
darrsEventPattern = lens _darrsEventPattern (\s a -> s {_darrsEventPattern = a})

-- | The ARN of the event source associated with the archive.
darrsEventSourceARN :: Lens' DescribeArchiveResponse (Maybe Text)
darrsEventSourceARN = lens _darrsEventSourceARN (\s a -> s {_darrsEventSourceARN = a})

-- | The time at which the archive was created.
darrsCreationTime :: Lens' DescribeArchiveResponse (Maybe UTCTime)
darrsCreationTime = lens _darrsCreationTime (\s a -> s {_darrsCreationTime = a}) . mapping _Time

-- | The reason that the archive is in the state.
darrsStateReason :: Lens' DescribeArchiveResponse (Maybe Text)
darrsStateReason = lens _darrsStateReason (\s a -> s {_darrsStateReason = a})

-- | The name of the archive.
darrsArchiveName :: Lens' DescribeArchiveResponse (Maybe Text)
darrsArchiveName = lens _darrsArchiveName (\s a -> s {_darrsArchiveName = a})

-- | The ARN of the archive.
darrsArchiveARN :: Lens' DescribeArchiveResponse (Maybe Text)
darrsArchiveARN = lens _darrsArchiveARN (\s a -> s {_darrsArchiveARN = a})

-- | The state of the archive.
darrsState :: Lens' DescribeArchiveResponse (Maybe ArchiveState)
darrsState = lens _darrsState (\s a -> s {_darrsState = a})

-- | The size of the archive in bytes.
darrsSizeBytes :: Lens' DescribeArchiveResponse (Maybe Integer)
darrsSizeBytes = lens _darrsSizeBytes (\s a -> s {_darrsSizeBytes = a})

-- | The description of the archive.
darrsDescription :: Lens' DescribeArchiveResponse (Maybe Text)
darrsDescription = lens _darrsDescription (\s a -> s {_darrsDescription = a})

-- | The number of days to retain events for in the archive.
darrsRetentionDays :: Lens' DescribeArchiveResponse (Maybe Natural)
darrsRetentionDays = lens _darrsRetentionDays (\s a -> s {_darrsRetentionDays = a}) . mapping _Nat

-- | -- | The response status code.
darrsResponseStatus :: Lens' DescribeArchiveResponse Int
darrsResponseStatus = lens _darrsResponseStatus (\s a -> s {_darrsResponseStatus = a})

instance NFData DescribeArchiveResponse
