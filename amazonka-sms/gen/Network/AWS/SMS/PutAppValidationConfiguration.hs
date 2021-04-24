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
-- Module      : Network.AWS.SMS.PutAppValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a validation configuration for the specified application.
module Network.AWS.SMS.PutAppValidationConfiguration
  ( -- * Creating a Request
    putAppValidationConfiguration,
    PutAppValidationConfiguration,

    -- * Request Lenses
    pavcAppValidationConfigurations,
    pavcServerGroupValidationConfigurations,
    pavcAppId,

    -- * Destructuring the Response
    putAppValidationConfigurationResponse,
    PutAppValidationConfigurationResponse,

    -- * Response Lenses
    pavcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'putAppValidationConfiguration' smart constructor.
data PutAppValidationConfiguration = PutAppValidationConfiguration'
  { _pavcAppValidationConfigurations ::
      !( Maybe
           [AppValidationConfiguration]
       ),
    _pavcServerGroupValidationConfigurations ::
      !( Maybe
           [ServerGroupValidationConfiguration]
       ),
    _pavcAppId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAppValidationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pavcAppValidationConfigurations' - The configuration for application validation.
--
-- * 'pavcServerGroupValidationConfigurations' - The configuration for instance validation.
--
-- * 'pavcAppId' - The ID of the application.
putAppValidationConfiguration ::
  -- | 'pavcAppId'
  Text ->
  PutAppValidationConfiguration
putAppValidationConfiguration pAppId_ =
  PutAppValidationConfiguration'
    { _pavcAppValidationConfigurations =
        Nothing,
      _pavcServerGroupValidationConfigurations =
        Nothing,
      _pavcAppId = pAppId_
    }

-- | The configuration for application validation.
pavcAppValidationConfigurations :: Lens' PutAppValidationConfiguration [AppValidationConfiguration]
pavcAppValidationConfigurations = lens _pavcAppValidationConfigurations (\s a -> s {_pavcAppValidationConfigurations = a}) . _Default . _Coerce

-- | The configuration for instance validation.
pavcServerGroupValidationConfigurations :: Lens' PutAppValidationConfiguration [ServerGroupValidationConfiguration]
pavcServerGroupValidationConfigurations = lens _pavcServerGroupValidationConfigurations (\s a -> s {_pavcServerGroupValidationConfigurations = a}) . _Default . _Coerce

-- | The ID of the application.
pavcAppId :: Lens' PutAppValidationConfiguration Text
pavcAppId = lens _pavcAppId (\s a -> s {_pavcAppId = a})

instance AWSRequest PutAppValidationConfiguration where
  type
    Rs PutAppValidationConfiguration =
      PutAppValidationConfigurationResponse
  request = postJSON sms
  response =
    receiveEmpty
      ( \s h x ->
          PutAppValidationConfigurationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable PutAppValidationConfiguration

instance NFData PutAppValidationConfiguration

instance ToHeaders PutAppValidationConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.PutAppValidationConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAppValidationConfiguration where
  toJSON PutAppValidationConfiguration' {..} =
    object
      ( catMaybes
          [ ("appValidationConfigurations" .=)
              <$> _pavcAppValidationConfigurations,
            ("serverGroupValidationConfigurations" .=)
              <$> _pavcServerGroupValidationConfigurations,
            Just ("appId" .= _pavcAppId)
          ]
      )

instance ToPath PutAppValidationConfiguration where
  toPath = const "/"

instance ToQuery PutAppValidationConfiguration where
  toQuery = const mempty

-- | /See:/ 'putAppValidationConfigurationResponse' smart constructor.
newtype PutAppValidationConfigurationResponse = PutAppValidationConfigurationResponse'
  { _pavcrrsResponseStatus ::
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

-- | Creates a value of 'PutAppValidationConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pavcrrsResponseStatus' - -- | The response status code.
putAppValidationConfigurationResponse ::
  -- | 'pavcrrsResponseStatus'
  Int ->
  PutAppValidationConfigurationResponse
putAppValidationConfigurationResponse
  pResponseStatus_ =
    PutAppValidationConfigurationResponse'
      { _pavcrrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
pavcrrsResponseStatus :: Lens' PutAppValidationConfigurationResponse Int
pavcrrsResponseStatus = lens _pavcrrsResponseStatus (\s a -> s {_pavcrrsResponseStatus = a})

instance NFData PutAppValidationConfigurationResponse
