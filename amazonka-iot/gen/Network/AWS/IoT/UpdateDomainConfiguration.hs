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
-- Module      : Network.AWS.IoT.UpdateDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates values stored in the domain configuration. Domain configurations for default endpoints can't be updated.
module Network.AWS.IoT.UpdateDomainConfiguration
  ( -- * Creating a Request
    updateDomainConfiguration,
    UpdateDomainConfiguration,

    -- * Request Lenses
    udcDomainConfigurationStatus,
    udcAuthorizerConfig,
    udcRemoveAuthorizerConfig,
    udcDomainConfigurationName,

    -- * Destructuring the Response
    updateDomainConfigurationResponse,
    UpdateDomainConfigurationResponse,

    -- * Response Lenses
    udcrrsDomainConfigurationARN,
    udcrrsDomainConfigurationName,
    udcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDomainConfiguration' smart constructor.
data UpdateDomainConfiguration = UpdateDomainConfiguration'
  { _udcDomainConfigurationStatus ::
      !( Maybe
           DomainConfigurationStatus
       ),
    _udcAuthorizerConfig ::
      !( Maybe
           AuthorizerConfig
       ),
    _udcRemoveAuthorizerConfig ::
      !(Maybe Bool),
    _udcDomainConfigurationName ::
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

-- | Creates a value of 'UpdateDomainConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcDomainConfigurationStatus' - The status to which the domain configuration should be updated.
--
-- * 'udcAuthorizerConfig' - An object that specifies the authorization service for a domain.
--
-- * 'udcRemoveAuthorizerConfig' - Removes the authorization configuration from a domain.
--
-- * 'udcDomainConfigurationName' - The name of the domain configuration to be updated.
updateDomainConfiguration ::
  -- | 'udcDomainConfigurationName'
  Text ->
  UpdateDomainConfiguration
updateDomainConfiguration pDomainConfigurationName_ =
  UpdateDomainConfiguration'
    { _udcDomainConfigurationStatus =
        Nothing,
      _udcAuthorizerConfig = Nothing,
      _udcRemoveAuthorizerConfig = Nothing,
      _udcDomainConfigurationName =
        pDomainConfigurationName_
    }

-- | The status to which the domain configuration should be updated.
udcDomainConfigurationStatus :: Lens' UpdateDomainConfiguration (Maybe DomainConfigurationStatus)
udcDomainConfigurationStatus = lens _udcDomainConfigurationStatus (\s a -> s {_udcDomainConfigurationStatus = a})

-- | An object that specifies the authorization service for a domain.
udcAuthorizerConfig :: Lens' UpdateDomainConfiguration (Maybe AuthorizerConfig)
udcAuthorizerConfig = lens _udcAuthorizerConfig (\s a -> s {_udcAuthorizerConfig = a})

-- | Removes the authorization configuration from a domain.
udcRemoveAuthorizerConfig :: Lens' UpdateDomainConfiguration (Maybe Bool)
udcRemoveAuthorizerConfig = lens _udcRemoveAuthorizerConfig (\s a -> s {_udcRemoveAuthorizerConfig = a})

-- | The name of the domain configuration to be updated.
udcDomainConfigurationName :: Lens' UpdateDomainConfiguration Text
udcDomainConfigurationName = lens _udcDomainConfigurationName (\s a -> s {_udcDomainConfigurationName = a})

instance AWSRequest UpdateDomainConfiguration where
  type
    Rs UpdateDomainConfiguration =
      UpdateDomainConfigurationResponse
  request = putJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          UpdateDomainConfigurationResponse'
            <$> (x .?> "domainConfigurationArn")
            <*> (x .?> "domainConfigurationName")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateDomainConfiguration

instance NFData UpdateDomainConfiguration

instance ToHeaders UpdateDomainConfiguration where
  toHeaders = const mempty

instance ToJSON UpdateDomainConfiguration where
  toJSON UpdateDomainConfiguration' {..} =
    object
      ( catMaybes
          [ ("domainConfigurationStatus" .=)
              <$> _udcDomainConfigurationStatus,
            ("authorizerConfig" .=) <$> _udcAuthorizerConfig,
            ("removeAuthorizerConfig" .=)
              <$> _udcRemoveAuthorizerConfig
          ]
      )

instance ToPath UpdateDomainConfiguration where
  toPath UpdateDomainConfiguration' {..} =
    mconcat
      [ "/domainConfigurations/",
        toBS _udcDomainConfigurationName
      ]

instance ToQuery UpdateDomainConfiguration where
  toQuery = const mempty

-- | /See:/ 'updateDomainConfigurationResponse' smart constructor.
data UpdateDomainConfigurationResponse = UpdateDomainConfigurationResponse'
  { _udcrrsDomainConfigurationARN ::
      !( Maybe
           Text
       ),
    _udcrrsDomainConfigurationName ::
      !( Maybe
           Text
       ),
    _udcrrsResponseStatus ::
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

-- | Creates a value of 'UpdateDomainConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcrrsDomainConfigurationARN' - The ARN of the domain configuration that was updated.
--
-- * 'udcrrsDomainConfigurationName' - The name of the domain configuration that was updated.
--
-- * 'udcrrsResponseStatus' - -- | The response status code.
updateDomainConfigurationResponse ::
  -- | 'udcrrsResponseStatus'
  Int ->
  UpdateDomainConfigurationResponse
updateDomainConfigurationResponse pResponseStatus_ =
  UpdateDomainConfigurationResponse'
    { _udcrrsDomainConfigurationARN =
        Nothing,
      _udcrrsDomainConfigurationName = Nothing,
      _udcrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the domain configuration that was updated.
udcrrsDomainConfigurationARN :: Lens' UpdateDomainConfigurationResponse (Maybe Text)
udcrrsDomainConfigurationARN = lens _udcrrsDomainConfigurationARN (\s a -> s {_udcrrsDomainConfigurationARN = a})

-- | The name of the domain configuration that was updated.
udcrrsDomainConfigurationName :: Lens' UpdateDomainConfigurationResponse (Maybe Text)
udcrrsDomainConfigurationName = lens _udcrrsDomainConfigurationName (\s a -> s {_udcrrsDomainConfigurationName = a})

-- | -- | The response status code.
udcrrsResponseStatus :: Lens' UpdateDomainConfigurationResponse Int
udcrrsResponseStatus = lens _udcrrsResponseStatus (\s a -> s {_udcrrsResponseStatus = a})

instance NFData UpdateDomainConfigurationResponse
