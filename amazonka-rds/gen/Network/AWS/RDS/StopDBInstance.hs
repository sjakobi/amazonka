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
-- Module      : Network.AWS.RDS.StopDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon RDS retains the DB instance's metadata, including its endpoint, DB parameter group, and option group membership. Amazon RDS also retains the transaction logs so you can do a point-in-time restore if necessary.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html Stopping an Amazon RDS DB Instance Temporarily> in the /Amazon RDS User Guide./
module Network.AWS.RDS.StopDBInstance
  ( -- * Creating a Request
    stopDBInstance,
    StopDBInstance,

    -- * Request Lenses
    sdiDBSnapshotIdentifier,
    sdiDBInstanceIdentifier,

    -- * Destructuring the Response
    stopDBInstanceResponse,
    StopDBInstanceResponse,

    -- * Response Lenses
    sdirrsDBInstance,
    sdirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopDBInstance' smart constructor.
data StopDBInstance = StopDBInstance'
  { _sdiDBSnapshotIdentifier ::
      !(Maybe Text),
    _sdiDBInstanceIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopDBInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiDBSnapshotIdentifier' - The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped.
--
-- * 'sdiDBInstanceIdentifier' - The user-supplied instance identifier.
stopDBInstance ::
  -- | 'sdiDBInstanceIdentifier'
  Text ->
  StopDBInstance
stopDBInstance pDBInstanceIdentifier_ =
  StopDBInstance'
    { _sdiDBSnapshotIdentifier = Nothing,
      _sdiDBInstanceIdentifier = pDBInstanceIdentifier_
    }

-- | The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped.
sdiDBSnapshotIdentifier :: Lens' StopDBInstance (Maybe Text)
sdiDBSnapshotIdentifier = lens _sdiDBSnapshotIdentifier (\s a -> s {_sdiDBSnapshotIdentifier = a})

-- | The user-supplied instance identifier.
sdiDBInstanceIdentifier :: Lens' StopDBInstance Text
sdiDBInstanceIdentifier = lens _sdiDBInstanceIdentifier (\s a -> s {_sdiDBInstanceIdentifier = a})

instance AWSRequest StopDBInstance where
  type Rs StopDBInstance = StopDBInstanceResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "StopDBInstanceResult"
      ( \s h x ->
          StopDBInstanceResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable StopDBInstance

instance NFData StopDBInstance

instance ToHeaders StopDBInstance where
  toHeaders = const mempty

instance ToPath StopDBInstance where
  toPath = const "/"

instance ToQuery StopDBInstance where
  toQuery StopDBInstance' {..} =
    mconcat
      [ "Action" =: ("StopDBInstance" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSnapshotIdentifier" =: _sdiDBSnapshotIdentifier,
        "DBInstanceIdentifier" =: _sdiDBInstanceIdentifier
      ]

-- | /See:/ 'stopDBInstanceResponse' smart constructor.
data StopDBInstanceResponse = StopDBInstanceResponse'
  { _sdirrsDBInstance ::
      !(Maybe DBInstance),
    _sdirrsResponseStatus ::
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

-- | Creates a value of 'StopDBInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdirrsDBInstance' - Undocumented member.
--
-- * 'sdirrsResponseStatus' - -- | The response status code.
stopDBInstanceResponse ::
  -- | 'sdirrsResponseStatus'
  Int ->
  StopDBInstanceResponse
stopDBInstanceResponse pResponseStatus_ =
  StopDBInstanceResponse'
    { _sdirrsDBInstance =
        Nothing,
      _sdirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
sdirrsDBInstance :: Lens' StopDBInstanceResponse (Maybe DBInstance)
sdirrsDBInstance = lens _sdirrsDBInstance (\s a -> s {_sdirrsDBInstance = a})

-- | -- | The response status code.
sdirrsResponseStatus :: Lens' StopDBInstanceResponse Int
sdirrsResponseStatus = lens _sdirrsResponseStatus (\s a -> s {_sdirrsResponseStatus = a})

instance NFData StopDBInstanceResponse
