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
-- Module      : Network.AWS.RDS.StartDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an Amazon RDS DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html Starting an Amazon RDS DB instance That Was Previously Stopped> in the /Amazon RDS User Guide./
module Network.AWS.RDS.StartDBInstance
  ( -- * Creating a Request
    startDBInstance,
    StartDBInstance,

    -- * Request Lenses
    sdbiDBInstanceIdentifier,

    -- * Destructuring the Response
    startDBInstanceResponse,
    StartDBInstanceResponse,

    -- * Response Lenses
    sdbirrsDBInstance,
    sdbirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startDBInstance' smart constructor.
newtype StartDBInstance = StartDBInstance'
  { _sdbiDBInstanceIdentifier ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartDBInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdbiDBInstanceIdentifier' - The user-supplied instance identifier.
startDBInstance ::
  -- | 'sdbiDBInstanceIdentifier'
  Text ->
  StartDBInstance
startDBInstance pDBInstanceIdentifier_ =
  StartDBInstance'
    { _sdbiDBInstanceIdentifier =
        pDBInstanceIdentifier_
    }

-- | The user-supplied instance identifier.
sdbiDBInstanceIdentifier :: Lens' StartDBInstance Text
sdbiDBInstanceIdentifier = lens _sdbiDBInstanceIdentifier (\s a -> s {_sdbiDBInstanceIdentifier = a})

instance AWSRequest StartDBInstance where
  type Rs StartDBInstance = StartDBInstanceResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "StartDBInstanceResult"
      ( \s h x ->
          StartDBInstanceResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable StartDBInstance

instance NFData StartDBInstance

instance ToHeaders StartDBInstance where
  toHeaders = const mempty

instance ToPath StartDBInstance where
  toPath = const "/"

instance ToQuery StartDBInstance where
  toQuery StartDBInstance' {..} =
    mconcat
      [ "Action" =: ("StartDBInstance" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBInstanceIdentifier" =: _sdbiDBInstanceIdentifier
      ]

-- | /See:/ 'startDBInstanceResponse' smart constructor.
data StartDBInstanceResponse = StartDBInstanceResponse'
  { _sdbirrsDBInstance ::
      !(Maybe DBInstance),
    _sdbirrsResponseStatus ::
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

-- | Creates a value of 'StartDBInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdbirrsDBInstance' - Undocumented member.
--
-- * 'sdbirrsResponseStatus' - -- | The response status code.
startDBInstanceResponse ::
  -- | 'sdbirrsResponseStatus'
  Int ->
  StartDBInstanceResponse
startDBInstanceResponse pResponseStatus_ =
  StartDBInstanceResponse'
    { _sdbirrsDBInstance =
        Nothing,
      _sdbirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
sdbirrsDBInstance :: Lens' StartDBInstanceResponse (Maybe DBInstance)
sdbirrsDBInstance = lens _sdbirrsDBInstance (\s a -> s {_sdbirrsDBInstance = a})

-- | -- | The response status code.
sdbirrsResponseStatus :: Lens' StartDBInstanceResponse Int
sdbirrsResponseStatus = lens _sdbirrsResponseStatus (\s a -> s {_sdbirrsResponseStatus = a})

instance NFData StartDBInstanceResponse
