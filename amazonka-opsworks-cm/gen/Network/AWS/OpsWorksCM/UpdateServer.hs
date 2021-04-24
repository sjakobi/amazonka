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
-- Module      : Network.AWS.OpsWorksCM.UpdateServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings for a server.
--
--
-- This operation is synchronous.
module Network.AWS.OpsWorksCM.UpdateServer
  ( -- * Creating a Request
    updateServer,
    UpdateServer,

    -- * Request Lenses
    usPreferredBackupWindow,
    usDisableAutomatedBackup,
    usPreferredMaintenanceWindow,
    usBackupRetentionCount,
    usServerName,

    -- * Destructuring the Response
    updateServerResponse,
    UpdateServerResponse,

    -- * Response Lenses
    usrrsServer,
    usrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateServer' smart constructor.
data UpdateServer = UpdateServer'
  { _usPreferredBackupWindow ::
      !(Maybe Text),
    _usDisableAutomatedBackup :: !(Maybe Bool),
    _usPreferredMaintenanceWindow ::
      !(Maybe Text),
    _usBackupRetentionCount :: !(Maybe Int),
    _usServerName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usPreferredBackupWindow' - Undocumented member.
--
-- * 'usDisableAutomatedBackup' - Setting DisableAutomatedBackup to @true@ disables automated or scheduled backups. Automated backups are enabled by default.
--
-- * 'usPreferredMaintenanceWindow' - Undocumented member.
--
-- * 'usBackupRetentionCount' - Sets the number of automated backups that you want to keep.
--
-- * 'usServerName' - The name of the server to update.
updateServer ::
  -- | 'usServerName'
  Text ->
  UpdateServer
updateServer pServerName_ =
  UpdateServer'
    { _usPreferredBackupWindow = Nothing,
      _usDisableAutomatedBackup = Nothing,
      _usPreferredMaintenanceWindow = Nothing,
      _usBackupRetentionCount = Nothing,
      _usServerName = pServerName_
    }

-- | Undocumented member.
usPreferredBackupWindow :: Lens' UpdateServer (Maybe Text)
usPreferredBackupWindow = lens _usPreferredBackupWindow (\s a -> s {_usPreferredBackupWindow = a})

-- | Setting DisableAutomatedBackup to @true@ disables automated or scheduled backups. Automated backups are enabled by default.
usDisableAutomatedBackup :: Lens' UpdateServer (Maybe Bool)
usDisableAutomatedBackup = lens _usDisableAutomatedBackup (\s a -> s {_usDisableAutomatedBackup = a})

-- | Undocumented member.
usPreferredMaintenanceWindow :: Lens' UpdateServer (Maybe Text)
usPreferredMaintenanceWindow = lens _usPreferredMaintenanceWindow (\s a -> s {_usPreferredMaintenanceWindow = a})

-- | Sets the number of automated backups that you want to keep.
usBackupRetentionCount :: Lens' UpdateServer (Maybe Int)
usBackupRetentionCount = lens _usBackupRetentionCount (\s a -> s {_usBackupRetentionCount = a})

-- | The name of the server to update.
usServerName :: Lens' UpdateServer Text
usServerName = lens _usServerName (\s a -> s {_usServerName = a})

instance AWSRequest UpdateServer where
  type Rs UpdateServer = UpdateServerResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          UpdateServerResponse'
            <$> (x .?> "Server") <*> (pure (fromEnum s))
      )

instance Hashable UpdateServer

instance NFData UpdateServer

instance ToHeaders UpdateServer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.UpdateServer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateServer where
  toJSON UpdateServer' {..} =
    object
      ( catMaybes
          [ ("PreferredBackupWindow" .=)
              <$> _usPreferredBackupWindow,
            ("DisableAutomatedBackup" .=)
              <$> _usDisableAutomatedBackup,
            ("PreferredMaintenanceWindow" .=)
              <$> _usPreferredMaintenanceWindow,
            ("BackupRetentionCount" .=)
              <$> _usBackupRetentionCount,
            Just ("ServerName" .= _usServerName)
          ]
      )

instance ToPath UpdateServer where
  toPath = const "/"

instance ToQuery UpdateServer where
  toQuery = const mempty

-- | /See:/ 'updateServerResponse' smart constructor.
data UpdateServerResponse = UpdateServerResponse'
  { _usrrsServer ::
      !(Maybe Server),
    _usrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateServerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsServer' - Contains the response to a @UpdateServer@ request.
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateServerResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateServerResponse
updateServerResponse pResponseStatus_ =
  UpdateServerResponse'
    { _usrrsServer = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | Contains the response to a @UpdateServer@ request.
usrrsServer :: Lens' UpdateServerResponse (Maybe Server)
usrrsServer = lens _usrrsServer (\s a -> s {_usrrsServer = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateServerResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateServerResponse
