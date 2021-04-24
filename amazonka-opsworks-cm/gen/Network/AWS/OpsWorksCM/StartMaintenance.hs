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
-- Module      : Network.AWS.OpsWorksCM.StartMaintenance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an @UNDER_MAINTENANCE@ state while maintenance is in progress.
--
--
-- Maintenance can only be started on servers in @HEALTHY@ and @UNHEALTHY@ states. Otherwise, an @InvalidStateException@ is thrown. A @ResourceNotFoundException@ is thrown when the server does not exist. A @ValidationException@ is raised when parameters of the request are not valid.
module Network.AWS.OpsWorksCM.StartMaintenance
  ( -- * Creating a Request
    startMaintenance,
    StartMaintenance,

    -- * Request Lenses
    smEngineAttributes,
    smServerName,

    -- * Destructuring the Response
    startMaintenanceResponse,
    StartMaintenanceResponse,

    -- * Response Lenses
    smrrsServer,
    smrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startMaintenance' smart constructor.
data StartMaintenance = StartMaintenance'
  { _smEngineAttributes ::
      !(Maybe [EngineAttribute]),
    _smServerName :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartMaintenance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smEngineAttributes' - Engine attributes that are specific to the server on which you want to run maintenance. __Attributes accepted in a StartMaintenance request for Chef__      * @CHEF_MAJOR_UPGRADE@ : If a Chef Automate server is eligible for upgrade to Chef Automate 2, add this engine attribute to a @StartMaintenance@ request and set the value to @true@ to upgrade the server to Chef Automate 2. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html Upgrade an AWS OpsWorks for Chef Automate Server to Chef Automate 2> .
--
-- * 'smServerName' - The name of the server on which to run maintenance.
startMaintenance ::
  -- | 'smServerName'
  Text ->
  StartMaintenance
startMaintenance pServerName_ =
  StartMaintenance'
    { _smEngineAttributes = Nothing,
      _smServerName = pServerName_
    }

-- | Engine attributes that are specific to the server on which you want to run maintenance. __Attributes accepted in a StartMaintenance request for Chef__      * @CHEF_MAJOR_UPGRADE@ : If a Chef Automate server is eligible for upgrade to Chef Automate 2, add this engine attribute to a @StartMaintenance@ request and set the value to @true@ to upgrade the server to Chef Automate 2. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html Upgrade an AWS OpsWorks for Chef Automate Server to Chef Automate 2> .
smEngineAttributes :: Lens' StartMaintenance [EngineAttribute]
smEngineAttributes = lens _smEngineAttributes (\s a -> s {_smEngineAttributes = a}) . _Default . _Coerce

-- | The name of the server on which to run maintenance.
smServerName :: Lens' StartMaintenance Text
smServerName = lens _smServerName (\s a -> s {_smServerName = a})

instance AWSRequest StartMaintenance where
  type Rs StartMaintenance = StartMaintenanceResponse
  request = postJSON opsWorksCM
  response =
    receiveJSON
      ( \s h x ->
          StartMaintenanceResponse'
            <$> (x .?> "Server") <*> (pure (fromEnum s))
      )

instance Hashable StartMaintenance

instance NFData StartMaintenance

instance ToHeaders StartMaintenance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorksCM_V2016_11_01.StartMaintenance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartMaintenance where
  toJSON StartMaintenance' {..} =
    object
      ( catMaybes
          [ ("EngineAttributes" .=) <$> _smEngineAttributes,
            Just ("ServerName" .= _smServerName)
          ]
      )

instance ToPath StartMaintenance where
  toPath = const "/"

instance ToQuery StartMaintenance where
  toQuery = const mempty

-- | /See:/ 'startMaintenanceResponse' smart constructor.
data StartMaintenanceResponse = StartMaintenanceResponse'
  { _smrrsServer ::
      !(Maybe Server),
    _smrrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartMaintenanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smrrsServer' - Contains the response to a @StartMaintenance@ request.
--
-- * 'smrrsResponseStatus' - -- | The response status code.
startMaintenanceResponse ::
  -- | 'smrrsResponseStatus'
  Int ->
  StartMaintenanceResponse
startMaintenanceResponse pResponseStatus_ =
  StartMaintenanceResponse'
    { _smrrsServer = Nothing,
      _smrrsResponseStatus = pResponseStatus_
    }

-- | Contains the response to a @StartMaintenance@ request.
smrrsServer :: Lens' StartMaintenanceResponse (Maybe Server)
smrrsServer = lens _smrrsServer (\s a -> s {_smrrsServer = a})

-- | -- | The response status code.
smrrsResponseStatus :: Lens' StartMaintenanceResponse Int
smrrsResponseStatus = lens _smrrsResponseStatus (\s a -> s {_smrrsResponseStatus = a})

instance NFData StartMaintenanceResponse
