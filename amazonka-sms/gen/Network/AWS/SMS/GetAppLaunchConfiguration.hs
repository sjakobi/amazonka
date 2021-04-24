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
-- Module      : Network.AWS.SMS.GetAppLaunchConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the application launch configuration associated with the specified application.
module Network.AWS.SMS.GetAppLaunchConfiguration
  ( -- * Creating a Request
    getAppLaunchConfiguration,
    GetAppLaunchConfiguration,

    -- * Request Lenses
    galcAppId,

    -- * Destructuring the Response
    getAppLaunchConfigurationResponse,
    GetAppLaunchConfigurationResponse,

    -- * Response Lenses
    galcrrsAppId,
    galcrrsRoleName,
    galcrrsAutoLaunch,
    galcrrsServerGroupLaunchConfigurations,
    galcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getAppLaunchConfiguration' smart constructor.
newtype GetAppLaunchConfiguration = GetAppLaunchConfiguration'
  { _galcAppId ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAppLaunchConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galcAppId' - The ID of the application.
getAppLaunchConfiguration ::
  GetAppLaunchConfiguration
getAppLaunchConfiguration =
  GetAppLaunchConfiguration' {_galcAppId = Nothing}

-- | The ID of the application.
galcAppId :: Lens' GetAppLaunchConfiguration (Maybe Text)
galcAppId = lens _galcAppId (\s a -> s {_galcAppId = a})

instance AWSRequest GetAppLaunchConfiguration where
  type
    Rs GetAppLaunchConfiguration =
      GetAppLaunchConfigurationResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetAppLaunchConfigurationResponse'
            <$> (x .?> "appId")
            <*> (x .?> "roleName")
            <*> (x .?> "autoLaunch")
            <*> (x .?> "serverGroupLaunchConfigurations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetAppLaunchConfiguration

instance NFData GetAppLaunchConfiguration

instance ToHeaders GetAppLaunchConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetAppLaunchConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAppLaunchConfiguration where
  toJSON GetAppLaunchConfiguration' {..} =
    object (catMaybes [("appId" .=) <$> _galcAppId])

instance ToPath GetAppLaunchConfiguration where
  toPath = const "/"

instance ToQuery GetAppLaunchConfiguration where
  toQuery = const mempty

-- | /See:/ 'getAppLaunchConfigurationResponse' smart constructor.
data GetAppLaunchConfigurationResponse = GetAppLaunchConfigurationResponse'
  { _galcrrsAppId ::
      !( Maybe
           Text
       ),
    _galcrrsRoleName ::
      !( Maybe
           Text
       ),
    _galcrrsAutoLaunch ::
      !( Maybe
           Bool
       ),
    _galcrrsServerGroupLaunchConfigurations ::
      !( Maybe
           [ServerGroupLaunchConfiguration]
       ),
    _galcrrsResponseStatus ::
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

-- | Creates a value of 'GetAppLaunchConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'galcrrsAppId' - The ID of the application.
--
-- * 'galcrrsRoleName' - The name of the service role in the customer's account that AWS CloudFormation uses to launch the application.
--
-- * 'galcrrsAutoLaunch' - Indicates whether the application is configured to launch automatically after replication is complete.
--
-- * 'galcrrsServerGroupLaunchConfigurations' - The launch configurations for server groups in this application.
--
-- * 'galcrrsResponseStatus' - -- | The response status code.
getAppLaunchConfigurationResponse ::
  -- | 'galcrrsResponseStatus'
  Int ->
  GetAppLaunchConfigurationResponse
getAppLaunchConfigurationResponse pResponseStatus_ =
  GetAppLaunchConfigurationResponse'
    { _galcrrsAppId =
        Nothing,
      _galcrrsRoleName = Nothing,
      _galcrrsAutoLaunch = Nothing,
      _galcrrsServerGroupLaunchConfigurations =
        Nothing,
      _galcrrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the application.
galcrrsAppId :: Lens' GetAppLaunchConfigurationResponse (Maybe Text)
galcrrsAppId = lens _galcrrsAppId (\s a -> s {_galcrrsAppId = a})

-- | The name of the service role in the customer's account that AWS CloudFormation uses to launch the application.
galcrrsRoleName :: Lens' GetAppLaunchConfigurationResponse (Maybe Text)
galcrrsRoleName = lens _galcrrsRoleName (\s a -> s {_galcrrsRoleName = a})

-- | Indicates whether the application is configured to launch automatically after replication is complete.
galcrrsAutoLaunch :: Lens' GetAppLaunchConfigurationResponse (Maybe Bool)
galcrrsAutoLaunch = lens _galcrrsAutoLaunch (\s a -> s {_galcrrsAutoLaunch = a})

-- | The launch configurations for server groups in this application.
galcrrsServerGroupLaunchConfigurations :: Lens' GetAppLaunchConfigurationResponse [ServerGroupLaunchConfiguration]
galcrrsServerGroupLaunchConfigurations = lens _galcrrsServerGroupLaunchConfigurations (\s a -> s {_galcrrsServerGroupLaunchConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
galcrrsResponseStatus :: Lens' GetAppLaunchConfigurationResponse Int
galcrrsResponseStatus = lens _galcrrsResponseStatus (\s a -> s {_galcrrsResponseStatus = a})

instance NFData GetAppLaunchConfigurationResponse
