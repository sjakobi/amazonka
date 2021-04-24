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
-- Module      : Network.AWS.CloudHSMv2.RestoreBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a specified AWS CloudHSM backup that is in the @PENDING_DELETION@ state. For mor information on deleting a backup, see 'DeleteBackup' .
module Network.AWS.CloudHSMv2.RestoreBackup
  ( -- * Creating a Request
    restoreBackup,
    RestoreBackup,

    -- * Request Lenses
    rbBackupId,

    -- * Destructuring the Response
    restoreBackupResponse,
    RestoreBackupResponse,

    -- * Response Lenses
    rbrrsBackup,
    rbrrsResponseStatus,
  )
where

import Network.AWS.CloudHSMv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'restoreBackup' smart constructor.
newtype RestoreBackup = RestoreBackup'
  { _rbBackupId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RestoreBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbBackupId' - The ID of the backup to be restored. To find the ID of a backup, use the 'DescribeBackups' operation.
restoreBackup ::
  -- | 'rbBackupId'
  Text ->
  RestoreBackup
restoreBackup pBackupId_ =
  RestoreBackup' {_rbBackupId = pBackupId_}

-- | The ID of the backup to be restored. To find the ID of a backup, use the 'DescribeBackups' operation.
rbBackupId :: Lens' RestoreBackup Text
rbBackupId = lens _rbBackupId (\s a -> s {_rbBackupId = a})

instance AWSRequest RestoreBackup where
  type Rs RestoreBackup = RestoreBackupResponse
  request = postJSON cloudHSMv2
  response =
    receiveJSON
      ( \s h x ->
          RestoreBackupResponse'
            <$> (x .?> "Backup") <*> (pure (fromEnum s))
      )

instance Hashable RestoreBackup

instance NFData RestoreBackup

instance ToHeaders RestoreBackup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("BaldrApiService.RestoreBackup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RestoreBackup where
  toJSON RestoreBackup' {..} =
    object
      (catMaybes [Just ("BackupId" .= _rbBackupId)])

instance ToPath RestoreBackup where
  toPath = const "/"

instance ToQuery RestoreBackup where
  toQuery = const mempty

-- | /See:/ 'restoreBackupResponse' smart constructor.
data RestoreBackupResponse = RestoreBackupResponse'
  { _rbrrsBackup ::
      !(Maybe Backup),
    _rbrrsResponseStatus ::
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

-- | Creates a value of 'RestoreBackupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbrrsBackup' - Information on the @Backup@ object created.
--
-- * 'rbrrsResponseStatus' - -- | The response status code.
restoreBackupResponse ::
  -- | 'rbrrsResponseStatus'
  Int ->
  RestoreBackupResponse
restoreBackupResponse pResponseStatus_ =
  RestoreBackupResponse'
    { _rbrrsBackup = Nothing,
      _rbrrsResponseStatus = pResponseStatus_
    }

-- | Information on the @Backup@ object created.
rbrrsBackup :: Lens' RestoreBackupResponse (Maybe Backup)
rbrrsBackup = lens _rbrrsBackup (\s a -> s {_rbrrsBackup = a})

-- | -- | The response status code.
rbrrsResponseStatus :: Lens' RestoreBackupResponse Int
rbrrsResponseStatus = lens _rbrrsResponseStatus (\s a -> s {_rbrrsResponseStatus = a})

instance NFData RestoreBackupResponse
