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
-- Module      : Network.AWS.MigrationHub.NotifyApplicationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the migration state of an application. For a given application identified by the value passed to @ApplicationId@ , its status is set or updated by passing one of three values to @Status@ : @NOT_STARTED | IN_PROGRESS | COMPLETED@ .
module Network.AWS.MigrationHub.NotifyApplicationState
  ( -- * Creating a Request
    notifyApplicationState,
    NotifyApplicationState,

    -- * Request Lenses
    nasDryRun,
    nasUpdateDateTime,
    nasApplicationId,
    nasStatus,

    -- * Destructuring the Response
    notifyApplicationStateResponse,
    NotifyApplicationStateResponse,

    -- * Response Lenses
    nasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'notifyApplicationState' smart constructor.
data NotifyApplicationState = NotifyApplicationState'
  { _nasDryRun ::
      !(Maybe Bool),
    _nasUpdateDateTime ::
      !(Maybe POSIX),
    _nasApplicationId ::
      !Text,
    _nasStatus ::
      !ApplicationStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NotifyApplicationState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nasDryRun' - Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
--
-- * 'nasUpdateDateTime' - The timestamp when the application state changed.
--
-- * 'nasApplicationId' - The configurationId in Application Discovery Service that uniquely identifies the grouped application.
--
-- * 'nasStatus' - Status of the application - Not Started, In-Progress, Complete.
notifyApplicationState ::
  -- | 'nasApplicationId'
  Text ->
  -- | 'nasStatus'
  ApplicationStatus ->
  NotifyApplicationState
notifyApplicationState pApplicationId_ pStatus_ =
  NotifyApplicationState'
    { _nasDryRun = Nothing,
      _nasUpdateDateTime = Nothing,
      _nasApplicationId = pApplicationId_,
      _nasStatus = pStatus_
    }

-- | Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
nasDryRun :: Lens' NotifyApplicationState (Maybe Bool)
nasDryRun = lens _nasDryRun (\s a -> s {_nasDryRun = a})

-- | The timestamp when the application state changed.
nasUpdateDateTime :: Lens' NotifyApplicationState (Maybe UTCTime)
nasUpdateDateTime = lens _nasUpdateDateTime (\s a -> s {_nasUpdateDateTime = a}) . mapping _Time

-- | The configurationId in Application Discovery Service that uniquely identifies the grouped application.
nasApplicationId :: Lens' NotifyApplicationState Text
nasApplicationId = lens _nasApplicationId (\s a -> s {_nasApplicationId = a})

-- | Status of the application - Not Started, In-Progress, Complete.
nasStatus :: Lens' NotifyApplicationState ApplicationStatus
nasStatus = lens _nasStatus (\s a -> s {_nasStatus = a})

instance AWSRequest NotifyApplicationState where
  type
    Rs NotifyApplicationState =
      NotifyApplicationStateResponse
  request = postJSON migrationHub
  response =
    receiveEmpty
      ( \s h x ->
          NotifyApplicationStateResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable NotifyApplicationState

instance NFData NotifyApplicationState

instance ToHeaders NotifyApplicationState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSMigrationHub.NotifyApplicationState" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON NotifyApplicationState where
  toJSON NotifyApplicationState' {..} =
    object
      ( catMaybes
          [ ("DryRun" .=) <$> _nasDryRun,
            ("UpdateDateTime" .=) <$> _nasUpdateDateTime,
            Just ("ApplicationId" .= _nasApplicationId),
            Just ("Status" .= _nasStatus)
          ]
      )

instance ToPath NotifyApplicationState where
  toPath = const "/"

instance ToQuery NotifyApplicationState where
  toQuery = const mempty

-- | /See:/ 'notifyApplicationStateResponse' smart constructor.
newtype NotifyApplicationStateResponse = NotifyApplicationStateResponse'
  { _nasrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NotifyApplicationStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nasrrsResponseStatus' - -- | The response status code.
notifyApplicationStateResponse ::
  -- | 'nasrrsResponseStatus'
  Int ->
  NotifyApplicationStateResponse
notifyApplicationStateResponse pResponseStatus_ =
  NotifyApplicationStateResponse'
    { _nasrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
nasrrsResponseStatus :: Lens' NotifyApplicationStateResponse Int
nasrrsResponseStatus = lens _nasrrsResponseStatus (\s a -> s {_nasrrsResponseStatus = a})

instance NFData NotifyApplicationStateResponse
