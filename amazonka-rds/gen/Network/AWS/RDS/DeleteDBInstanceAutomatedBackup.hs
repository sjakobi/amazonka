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
-- Module      : Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes automated backups using the @DbiResourceId@ value of the source DB instance or the Amazon Resource Name (ARN) of the automated backups.
module Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
  ( -- * Creating a Request
    deleteDBInstanceAutomatedBackup,
    DeleteDBInstanceAutomatedBackup,

    -- * Request Lenses
    ddbiabDBInstanceAutomatedBackupsARN,
    ddbiabDBiResourceId,

    -- * Destructuring the Response
    deleteDBInstanceAutomatedBackupResponse,
    DeleteDBInstanceAutomatedBackupResponse,

    -- * Response Lenses
    ddbiabrrsDBInstanceAutomatedBackup,
    ddbiabrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | Parameter input for the @DeleteDBInstanceAutomatedBackup@ operation.
--
--
--
-- /See:/ 'deleteDBInstanceAutomatedBackup' smart constructor.
data DeleteDBInstanceAutomatedBackup = DeleteDBInstanceAutomatedBackup'
  { _ddbiabDBInstanceAutomatedBackupsARN ::
      !( Maybe
           Text
       ),
    _ddbiabDBiResourceId ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDBInstanceAutomatedBackup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbiabDBInstanceAutomatedBackupsARN' - The Amazon Resource Name (ARN) of the automated backups to delete, for example, @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
--
-- * 'ddbiabDBiResourceId' - The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.
deleteDBInstanceAutomatedBackup ::
  DeleteDBInstanceAutomatedBackup
deleteDBInstanceAutomatedBackup =
  DeleteDBInstanceAutomatedBackup'
    { _ddbiabDBInstanceAutomatedBackupsARN =
        Nothing,
      _ddbiabDBiResourceId = Nothing
    }

-- | The Amazon Resource Name (ARN) of the automated backups to delete, for example, @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@ .
ddbiabDBInstanceAutomatedBackupsARN :: Lens' DeleteDBInstanceAutomatedBackup (Maybe Text)
ddbiabDBInstanceAutomatedBackupsARN = lens _ddbiabDBInstanceAutomatedBackupsARN (\s a -> s {_ddbiabDBInstanceAutomatedBackupsARN = a})

-- | The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.
ddbiabDBiResourceId :: Lens' DeleteDBInstanceAutomatedBackup (Maybe Text)
ddbiabDBiResourceId = lens _ddbiabDBiResourceId (\s a -> s {_ddbiabDBiResourceId = a})

instance AWSRequest DeleteDBInstanceAutomatedBackup where
  type
    Rs DeleteDBInstanceAutomatedBackup =
      DeleteDBInstanceAutomatedBackupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBInstanceAutomatedBackupResult"
      ( \s h x ->
          DeleteDBInstanceAutomatedBackupResponse'
            <$> (x .@? "DBInstanceAutomatedBackup")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBInstanceAutomatedBackup

instance NFData DeleteDBInstanceAutomatedBackup

instance ToHeaders DeleteDBInstanceAutomatedBackup where
  toHeaders = const mempty

instance ToPath DeleteDBInstanceAutomatedBackup where
  toPath = const "/"

instance ToQuery DeleteDBInstanceAutomatedBackup where
  toQuery DeleteDBInstanceAutomatedBackup' {..} =
    mconcat
      [ "Action"
          =: ("DeleteDBInstanceAutomatedBackup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBInstanceAutomatedBackupsArn"
          =: _ddbiabDBInstanceAutomatedBackupsARN,
        "DbiResourceId" =: _ddbiabDBiResourceId
      ]

-- | /See:/ 'deleteDBInstanceAutomatedBackupResponse' smart constructor.
data DeleteDBInstanceAutomatedBackupResponse = DeleteDBInstanceAutomatedBackupResponse'
  { _ddbiabrrsDBInstanceAutomatedBackup ::
      !( Maybe
           DBInstanceAutomatedBackup
       ),
    _ddbiabrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBInstanceAutomatedBackupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbiabrrsDBInstanceAutomatedBackup' - Undocumented member.
--
-- * 'ddbiabrrsResponseStatus' - -- | The response status code.
deleteDBInstanceAutomatedBackupResponse ::
  -- | 'ddbiabrrsResponseStatus'
  Int ->
  DeleteDBInstanceAutomatedBackupResponse
deleteDBInstanceAutomatedBackupResponse
  pResponseStatus_ =
    DeleteDBInstanceAutomatedBackupResponse'
      { _ddbiabrrsDBInstanceAutomatedBackup =
          Nothing,
        _ddbiabrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
ddbiabrrsDBInstanceAutomatedBackup :: Lens' DeleteDBInstanceAutomatedBackupResponse (Maybe DBInstanceAutomatedBackup)
ddbiabrrsDBInstanceAutomatedBackup = lens _ddbiabrrsDBInstanceAutomatedBackup (\s a -> s {_ddbiabrrsDBInstanceAutomatedBackup = a})

-- | -- | The response status code.
ddbiabrrsResponseStatus :: Lens' DeleteDBInstanceAutomatedBackupResponse Int
ddbiabrrsResponseStatus = lens _ddbiabrrsResponseStatus (\s a -> s {_ddbiabrrsResponseStatus = a})

instance
  NFData
    DeleteDBInstanceAutomatedBackupResponse
