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
-- Module      : Network.AWS.CloudWatchEvents.UpdateArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified archive.
module Network.AWS.CloudWatchEvents.UpdateArchive
  ( -- * Creating a Request
    updateArchive,
    UpdateArchive,

    -- * Request Lenses
    uaEventPattern,
    uaDescription,
    uaRetentionDays,
    uaArchiveName,

    -- * Destructuring the Response
    updateArchiveResponse,
    UpdateArchiveResponse,

    -- * Response Lenses
    ursCreationTime,
    ursStateReason,
    ursArchiveARN,
    ursState,
    ursResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateArchive' smart constructor.
data UpdateArchive = UpdateArchive'
  { _uaEventPattern ::
      !(Maybe Text),
    _uaDescription :: !(Maybe Text),
    _uaRetentionDays :: !(Maybe Nat),
    _uaArchiveName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateArchive' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uaEventPattern' - The event pattern to use to filter events sent to the archive.
--
-- * 'uaDescription' - The description for the archive.
--
-- * 'uaRetentionDays' - The number of days to retain events in the archive.
--
-- * 'uaArchiveName' - The name of the archive to update.
updateArchive ::
  -- | 'uaArchiveName'
  Text ->
  UpdateArchive
updateArchive pArchiveName_ =
  UpdateArchive'
    { _uaEventPattern = Nothing,
      _uaDescription = Nothing,
      _uaRetentionDays = Nothing,
      _uaArchiveName = pArchiveName_
    }

-- | The event pattern to use to filter events sent to the archive.
uaEventPattern :: Lens' UpdateArchive (Maybe Text)
uaEventPattern = lens _uaEventPattern (\s a -> s {_uaEventPattern = a})

-- | The description for the archive.
uaDescription :: Lens' UpdateArchive (Maybe Text)
uaDescription = lens _uaDescription (\s a -> s {_uaDescription = a})

-- | The number of days to retain events in the archive.
uaRetentionDays :: Lens' UpdateArchive (Maybe Natural)
uaRetentionDays = lens _uaRetentionDays (\s a -> s {_uaRetentionDays = a}) . mapping _Nat

-- | The name of the archive to update.
uaArchiveName :: Lens' UpdateArchive Text
uaArchiveName = lens _uaArchiveName (\s a -> s {_uaArchiveName = a})

instance AWSRequest UpdateArchive where
  type Rs UpdateArchive = UpdateArchiveResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          UpdateArchiveResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "StateReason")
            <*> (x .?> "ArchiveArn")
            <*> (x .?> "State")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateArchive

instance NFData UpdateArchive

instance ToHeaders UpdateArchive where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.UpdateArchive" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateArchive where
  toJSON UpdateArchive' {..} =
    object
      ( catMaybes
          [ ("EventPattern" .=) <$> _uaEventPattern,
            ("Description" .=) <$> _uaDescription,
            ("RetentionDays" .=) <$> _uaRetentionDays,
            Just ("ArchiveName" .= _uaArchiveName)
          ]
      )

instance ToPath UpdateArchive where
  toPath = const "/"

instance ToQuery UpdateArchive where
  toQuery = const mempty

-- | /See:/ 'updateArchiveResponse' smart constructor.
data UpdateArchiveResponse = UpdateArchiveResponse'
  { _ursCreationTime ::
      !(Maybe POSIX),
    _ursStateReason ::
      !(Maybe Text),
    _ursArchiveARN ::
      !(Maybe Text),
    _ursState ::
      !(Maybe ArchiveState),
    _ursResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateArchiveResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ursCreationTime' - The time at which the archive was updated.
--
-- * 'ursStateReason' - The reason that the archive is in the current state.
--
-- * 'ursArchiveARN' - The ARN of the archive.
--
-- * 'ursState' - The state of the archive.
--
-- * 'ursResponseStatus' - -- | The response status code.
updateArchiveResponse ::
  -- | 'ursResponseStatus'
  Int ->
  UpdateArchiveResponse
updateArchiveResponse pResponseStatus_ =
  UpdateArchiveResponse'
    { _ursCreationTime = Nothing,
      _ursStateReason = Nothing,
      _ursArchiveARN = Nothing,
      _ursState = Nothing,
      _ursResponseStatus = pResponseStatus_
    }

-- | The time at which the archive was updated.
ursCreationTime :: Lens' UpdateArchiveResponse (Maybe UTCTime)
ursCreationTime = lens _ursCreationTime (\s a -> s {_ursCreationTime = a}) . mapping _Time

-- | The reason that the archive is in the current state.
ursStateReason :: Lens' UpdateArchiveResponse (Maybe Text)
ursStateReason = lens _ursStateReason (\s a -> s {_ursStateReason = a})

-- | The ARN of the archive.
ursArchiveARN :: Lens' UpdateArchiveResponse (Maybe Text)
ursArchiveARN = lens _ursArchiveARN (\s a -> s {_ursArchiveARN = a})

-- | The state of the archive.
ursState :: Lens' UpdateArchiveResponse (Maybe ArchiveState)
ursState = lens _ursState (\s a -> s {_ursState = a})

-- | -- | The response status code.
ursResponseStatus :: Lens' UpdateArchiveResponse Int
ursResponseStatus = lens _ursResponseStatus (\s a -> s {_ursResponseStatus = a})

instance NFData UpdateArchiveResponse
