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
-- Module      : Network.AWS.SMS.GetAppValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a configuration for validating an application.
module Network.AWS.SMS.GetAppValidationConfiguration
  ( -- * Creating a Request
    getAppValidationConfiguration,
    GetAppValidationConfiguration,

    -- * Request Lenses
    gavcAppId,

    -- * Destructuring the Response
    getAppValidationConfigurationResponse,
    GetAppValidationConfigurationResponse,

    -- * Response Lenses
    gavcrrsAppValidationConfigurations,
    gavcrrsServerGroupValidationConfigurations,
    gavcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getAppValidationConfiguration' smart constructor.
newtype GetAppValidationConfiguration = GetAppValidationConfiguration'
  { _gavcAppId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAppValidationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavcAppId' - The ID of the application.
getAppValidationConfiguration ::
  -- | 'gavcAppId'
  Text ->
  GetAppValidationConfiguration
getAppValidationConfiguration pAppId_ =
  GetAppValidationConfiguration'
    { _gavcAppId =
        pAppId_
    }

-- | The ID of the application.
gavcAppId :: Lens' GetAppValidationConfiguration Text
gavcAppId = lens _gavcAppId (\s a -> s {_gavcAppId = a})

instance AWSRequest GetAppValidationConfiguration where
  type
    Rs GetAppValidationConfiguration =
      GetAppValidationConfigurationResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetAppValidationConfigurationResponse'
            <$> (x .?> "appValidationConfigurations" .!@ mempty)
            <*> ( x .?> "serverGroupValidationConfigurations"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetAppValidationConfiguration

instance NFData GetAppValidationConfiguration

instance ToHeaders GetAppValidationConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetAppValidationConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetAppValidationConfiguration where
  toJSON GetAppValidationConfiguration' {..} =
    object (catMaybes [Just ("appId" .= _gavcAppId)])

instance ToPath GetAppValidationConfiguration where
  toPath = const "/"

instance ToQuery GetAppValidationConfiguration where
  toQuery = const mempty

-- | /See:/ 'getAppValidationConfigurationResponse' smart constructor.
data GetAppValidationConfigurationResponse = GetAppValidationConfigurationResponse'
  { _gavcrrsAppValidationConfigurations ::
      !( Maybe
           [AppValidationConfiguration]
       ),
    _gavcrrsServerGroupValidationConfigurations ::
      !( Maybe
           [ServerGroupValidationConfiguration]
       ),
    _gavcrrsResponseStatus ::
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

-- | Creates a value of 'GetAppValidationConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gavcrrsAppValidationConfigurations' - The configuration for application validation.
--
-- * 'gavcrrsServerGroupValidationConfigurations' - The configuration for instance validation.
--
-- * 'gavcrrsResponseStatus' - -- | The response status code.
getAppValidationConfigurationResponse ::
  -- | 'gavcrrsResponseStatus'
  Int ->
  GetAppValidationConfigurationResponse
getAppValidationConfigurationResponse
  pResponseStatus_ =
    GetAppValidationConfigurationResponse'
      { _gavcrrsAppValidationConfigurations =
          Nothing,
        _gavcrrsServerGroupValidationConfigurations =
          Nothing,
        _gavcrrsResponseStatus =
          pResponseStatus_
      }

-- | The configuration for application validation.
gavcrrsAppValidationConfigurations :: Lens' GetAppValidationConfigurationResponse [AppValidationConfiguration]
gavcrrsAppValidationConfigurations = lens _gavcrrsAppValidationConfigurations (\s a -> s {_gavcrrsAppValidationConfigurations = a}) . _Default . _Coerce

-- | The configuration for instance validation.
gavcrrsServerGroupValidationConfigurations :: Lens' GetAppValidationConfigurationResponse [ServerGroupValidationConfiguration]
gavcrrsServerGroupValidationConfigurations = lens _gavcrrsServerGroupValidationConfigurations (\s a -> s {_gavcrrsServerGroupValidationConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
gavcrrsResponseStatus :: Lens' GetAppValidationConfigurationResponse Int
gavcrrsResponseStatus = lens _gavcrrsResponseStatus (\s a -> s {_gavcrrsResponseStatus = a})

instance NFData GetAppValidationConfigurationResponse
