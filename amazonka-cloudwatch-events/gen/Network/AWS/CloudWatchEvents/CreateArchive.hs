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
-- Module      : Network.AWS.CloudWatchEvents.CreateArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an archive of events with the specified settings. When you create an archive, incoming events might not immediately start being sent to the archive. Allow a short period of time for changes to take effect. If you do not specify a pattern to filter events sent to the archive, all events are sent to the archive except replayed events. Replayed events are not sent to an archive.
module Network.AWS.CloudWatchEvents.CreateArchive
  ( -- * Creating a Request
    createArchive,
    CreateArchive,

    -- * Request Lenses
    cEventPattern,
    cDescription,
    cRetentionDays,
    cArchiveName,
    cEventSourceARN,

    -- * Destructuring the Response
    createArchiveResponse,
    CreateArchiveResponse,

    -- * Response Lenses
    crsCreationTime,
    crsStateReason,
    crsArchiveARN,
    crsState,
    crsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createArchive' smart constructor.
data CreateArchive = CreateArchive'
  { _cEventPattern ::
      !(Maybe Text),
    _cDescription :: !(Maybe Text),
    _cRetentionDays :: !(Maybe Nat),
    _cArchiveName :: !Text,
    _cEventSourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEventPattern' - An event pattern to use to filter events sent to the archive.
--
-- * 'cDescription' - A description for the archive.
--
-- * 'cRetentionDays' - The number of days to retain events for. Default value is 0. If set to 0, events are retained indefinitely
--
-- * 'cArchiveName' - The name for the archive to create.
--
-- * 'cEventSourceARN' - The ARN of the event source associated with the archive.
createArchive ::
  -- | 'cArchiveName'
  Text ->
  -- | 'cEventSourceARN'
  Text ->
  CreateArchive
createArchive pArchiveName_ pEventSourceARN_ =
  CreateArchive'
    { _cEventPattern = Nothing,
      _cDescription = Nothing,
      _cRetentionDays = Nothing,
      _cArchiveName = pArchiveName_,
      _cEventSourceARN = pEventSourceARN_
    }

-- | An event pattern to use to filter events sent to the archive.
cEventPattern :: Lens' CreateArchive (Maybe Text)
cEventPattern = lens _cEventPattern (\s a -> s {_cEventPattern = a})

-- | A description for the archive.
cDescription :: Lens' CreateArchive (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | The number of days to retain events for. Default value is 0. If set to 0, events are retained indefinitely
cRetentionDays :: Lens' CreateArchive (Maybe Natural)
cRetentionDays = lens _cRetentionDays (\s a -> s {_cRetentionDays = a}) . mapping _Nat

-- | The name for the archive to create.
cArchiveName :: Lens' CreateArchive Text
cArchiveName = lens _cArchiveName (\s a -> s {_cArchiveName = a})

-- | The ARN of the event source associated with the archive.
cEventSourceARN :: Lens' CreateArchive Text
cEventSourceARN = lens _cEventSourceARN (\s a -> s {_cEventSourceARN = a})

instance AWSRequest CreateArchive where
  type Rs CreateArchive = CreateArchiveResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          CreateArchiveResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "StateReason")
            <*> (x .?> "ArchiveArn")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateArchive

instance NFData CreateArchive

instance ToHeaders CreateArchive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.CreateArchive" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateArchive where
  toJSON CreateArchive' {..} =
    object
      ( catMaybes
          [ ("EventPattern" .=) <$> _cEventPattern,
            ("Description" .=) <$> _cDescription,
            ("RetentionDays" .=) <$> _cRetentionDays,
            Just ("ArchiveName" .= _cArchiveName),
            Just ("EventSourceArn" .= _cEventSourceARN)
          ]
      )

instance ToPath CreateArchive where
  toPath = const "/"

instance ToQuery CreateArchive where
  toQuery = const mempty

-- | /See:/ 'createArchiveResponse' smart constructor.
data CreateArchiveResponse = CreateArchiveResponse'
  { _crsCreationTime ::
      !(Maybe POSIX),
    _crsStateReason ::
      !(Maybe Text),
    _crsArchiveARN ::
      !(Maybe Text),
    _crsState ::
      !(Maybe ArchiveState),
    _crsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateArchiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsCreationTime' - The time at which the archive was created.
--
-- * 'crsStateReason' - The reason that the archive is in the state.
--
-- * 'crsArchiveARN' - The ARN of the archive that was created.
--
-- * 'crsState' - The state of the archive that was created.
--
-- * 'crsResponseStatus' - -- | The response status code.
createArchiveResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CreateArchiveResponse
createArchiveResponse pResponseStatus_ =
  CreateArchiveResponse'
    { _crsCreationTime = Nothing,
      _crsStateReason = Nothing,
      _crsArchiveARN = Nothing,
      _crsState = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The time at which the archive was created.
crsCreationTime :: Lens' CreateArchiveResponse (Maybe UTCTime)
crsCreationTime = lens _crsCreationTime (\s a -> s {_crsCreationTime = a}) . mapping _Time

-- | The reason that the archive is in the state.
crsStateReason :: Lens' CreateArchiveResponse (Maybe Text)
crsStateReason = lens _crsStateReason (\s a -> s {_crsStateReason = a})

-- | The ARN of the archive that was created.
crsArchiveARN :: Lens' CreateArchiveResponse (Maybe Text)
crsArchiveARN = lens _crsArchiveARN (\s a -> s {_crsArchiveARN = a})

-- | The state of the archive that was created.
crsState :: Lens' CreateArchiveResponse (Maybe ArchiveState)
crsState = lens _crsState (\s a -> s {_crsState = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CreateArchiveResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CreateArchiveResponse
