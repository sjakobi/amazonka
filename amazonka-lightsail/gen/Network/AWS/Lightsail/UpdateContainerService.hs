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
-- Module      : Network.AWS.Lightsail.UpdateContainerService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of your Amazon Lightsail container service, such as its power, scale, and public domain names.
module Network.AWS.Lightsail.UpdateContainerService
  ( -- * Creating a Request
    updateContainerService,
    UpdateContainerService,

    -- * Request Lenses
    ucsPower,
    ucsScale,
    ucsPublicDomainNames,
    ucsIsDisabled,
    ucsServiceName,

    -- * Destructuring the Response
    updateContainerServiceResponse,
    UpdateContainerServiceResponse,

    -- * Response Lenses
    ucsrrsContainerService,
    ucsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateContainerService' smart constructor.
data UpdateContainerService = UpdateContainerService'
  { _ucsPower ::
      !( Maybe
           ContainerServicePowerName
       ),
    _ucsScale :: !(Maybe Nat),
    _ucsPublicDomainNames ::
      !( Maybe
           (Map Text [Text])
       ),
    _ucsIsDisabled ::
      !(Maybe Bool),
    _ucsServiceName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateContainerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsPower' - The power for the container service. The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the container service. The @power@ and @scale@ of a container service makes up its configured capacity. To determine the monthly price of your container service, multiply the base price of the @power@ with the @scale@ (the number of nodes) of the service. Use the @GetContainerServicePowers@ action to view the specifications of each power option.
--
-- * 'ucsScale' - The scale for the container service. The scale specifies the allocated compute nodes of the container service. The @power@ and @scale@ of a container service makes up its configured capacity. To determine the monthly price of your container service, multiply the base price of the @power@ with the @scale@ (the number of nodes) of the service.
--
-- * 'ucsPublicDomainNames' - The public domain names to use with the container service, such as @example.com@ and @www.example.com@ . You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. /Important:/ You must create and validate an SSL/TLS certificate before you can use public domain names with your container service. Use the @CreateCertificate@ action to create a certificate for the public domain names you want to use with your container service. You can specify public domain names using a string to array map as shown in the example later on this page.
--
-- * 'ucsIsDisabled' - A Boolean value to indicate whether the container service is disabled.
--
-- * 'ucsServiceName' - The name of the container service to update.
updateContainerService ::
  -- | 'ucsServiceName'
  Text ->
  UpdateContainerService
updateContainerService pServiceName_ =
  UpdateContainerService'
    { _ucsPower = Nothing,
      _ucsScale = Nothing,
      _ucsPublicDomainNames = Nothing,
      _ucsIsDisabled = Nothing,
      _ucsServiceName = pServiceName_
    }

-- | The power for the container service. The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the container service. The @power@ and @scale@ of a container service makes up its configured capacity. To determine the monthly price of your container service, multiply the base price of the @power@ with the @scale@ (the number of nodes) of the service. Use the @GetContainerServicePowers@ action to view the specifications of each power option.
ucsPower :: Lens' UpdateContainerService (Maybe ContainerServicePowerName)
ucsPower = lens _ucsPower (\s a -> s {_ucsPower = a})

-- | The scale for the container service. The scale specifies the allocated compute nodes of the container service. The @power@ and @scale@ of a container service makes up its configured capacity. To determine the monthly price of your container service, multiply the base price of the @power@ with the @scale@ (the number of nodes) of the service.
ucsScale :: Lens' UpdateContainerService (Maybe Natural)
ucsScale = lens _ucsScale (\s a -> s {_ucsScale = a}) . mapping _Nat

-- | The public domain names to use with the container service, such as @example.com@ and @www.example.com@ . You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. /Important:/ You must create and validate an SSL/TLS certificate before you can use public domain names with your container service. Use the @CreateCertificate@ action to create a certificate for the public domain names you want to use with your container service. You can specify public domain names using a string to array map as shown in the example later on this page.
ucsPublicDomainNames :: Lens' UpdateContainerService (HashMap Text [Text])
ucsPublicDomainNames = lens _ucsPublicDomainNames (\s a -> s {_ucsPublicDomainNames = a}) . _Default . _Map

-- | A Boolean value to indicate whether the container service is disabled.
ucsIsDisabled :: Lens' UpdateContainerService (Maybe Bool)
ucsIsDisabled = lens _ucsIsDisabled (\s a -> s {_ucsIsDisabled = a})

-- | The name of the container service to update.
ucsServiceName :: Lens' UpdateContainerService Text
ucsServiceName = lens _ucsServiceName (\s a -> s {_ucsServiceName = a})

instance AWSRequest UpdateContainerService where
  type
    Rs UpdateContainerService =
      UpdateContainerServiceResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          UpdateContainerServiceResponse'
            <$> (x .?> "containerService") <*> (pure (fromEnum s))
      )

instance Hashable UpdateContainerService

instance NFData UpdateContainerService

instance ToHeaders UpdateContainerService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.UpdateContainerService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateContainerService where
  toJSON UpdateContainerService' {..} =
    object
      ( catMaybes
          [ ("power" .=) <$> _ucsPower,
            ("scale" .=) <$> _ucsScale,
            ("publicDomainNames" .=) <$> _ucsPublicDomainNames,
            ("isDisabled" .=) <$> _ucsIsDisabled,
            Just ("serviceName" .= _ucsServiceName)
          ]
      )

instance ToPath UpdateContainerService where
  toPath = const "/"

instance ToQuery UpdateContainerService where
  toQuery = const mempty

-- | /See:/ 'updateContainerServiceResponse' smart constructor.
data UpdateContainerServiceResponse = UpdateContainerServiceResponse'
  { _ucsrrsContainerService ::
      !( Maybe
           ContainerService
       ),
    _ucsrrsResponseStatus ::
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

-- | Creates a value of 'UpdateContainerServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsrrsContainerService' - An object that describes a container service.
--
-- * 'ucsrrsResponseStatus' - -- | The response status code.
updateContainerServiceResponse ::
  -- | 'ucsrrsResponseStatus'
  Int ->
  UpdateContainerServiceResponse
updateContainerServiceResponse pResponseStatus_ =
  UpdateContainerServiceResponse'
    { _ucsrrsContainerService =
        Nothing,
      _ucsrrsResponseStatus = pResponseStatus_
    }

-- | An object that describes a container service.
ucsrrsContainerService :: Lens' UpdateContainerServiceResponse (Maybe ContainerService)
ucsrrsContainerService = lens _ucsrrsContainerService (\s a -> s {_ucsrrsContainerService = a})

-- | -- | The response status code.
ucsrrsResponseStatus :: Lens' UpdateContainerServiceResponse Int
ucsrrsResponseStatus = lens _ucsrrsResponseStatus (\s a -> s {_ucsrrsResponseStatus = a})

instance NFData UpdateContainerServiceResponse
