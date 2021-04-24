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
-- Module      : Network.AWS.Route53AutoNaming.UpdateService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submits a request to perform the following operations:
--
--
--     * Update the TTL setting for existing @DnsRecords@ configurations
--
--     * Add, update, or delete @HealthCheckConfig@ for a specified service
--
--
--
-- For public and private DNS namespaces, note the following:
--
--     * If you omit any existing @DnsRecords@ or @HealthCheckConfig@ configurations from an @UpdateService@ request, the configurations are deleted from the service.
--
--     * If you omit an existing @HealthCheckCustomConfig@ configuration from an @UpdateService@ request, the configuration is not deleted from the service.
--
--
--
-- When you update settings for a service, AWS Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
module Network.AWS.Route53AutoNaming.UpdateService
  ( -- * Creating a Request
    updateService,
    UpdateService,

    -- * Request Lenses
    usId,
    usService,

    -- * Destructuring the Response
    updateServiceResponse,
    UpdateServiceResponse,

    -- * Response Lenses
    usrrsOperationId,
    usrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'updateService' smart constructor.
data UpdateService = UpdateService'
  { _usId :: !Text,
    _usService :: !ServiceChange
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usId' - The ID of the service that you want to update.
--
-- * 'usService' - A complex type that contains the new settings for the service.
updateService ::
  -- | 'usId'
  Text ->
  -- | 'usService'
  ServiceChange ->
  UpdateService
updateService pId_ pService_ =
  UpdateService'
    { _usId = pId_,
      _usService = pService_
    }

-- | The ID of the service that you want to update.
usId :: Lens' UpdateService Text
usId = lens _usId (\s a -> s {_usId = a})

-- | A complex type that contains the new settings for the service.
usService :: Lens' UpdateService ServiceChange
usService = lens _usService (\s a -> s {_usService = a})

instance AWSRequest UpdateService where
  type Rs UpdateService = UpdateServiceResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          UpdateServiceResponse'
            <$> (x .?> "OperationId") <*> (pure (fromEnum s))
      )

instance Hashable UpdateService

instance NFData UpdateService

instance ToHeaders UpdateService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.UpdateService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateService where
  toJSON UpdateService' {..} =
    object
      ( catMaybes
          [ Just ("Id" .= _usId),
            Just ("Service" .= _usService)
          ]
      )

instance ToPath UpdateService where
  toPath = const "/"

instance ToQuery UpdateService where
  toQuery = const mempty

-- | /See:/ 'updateServiceResponse' smart constructor.
data UpdateServiceResponse = UpdateServiceResponse'
  { _usrrsOperationId ::
      !(Maybe Text),
    _usrrsResponseStatus ::
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

-- | Creates a value of 'UpdateServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsOperationId' - A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateServiceResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateServiceResponse
updateServiceResponse pResponseStatus_ =
  UpdateServiceResponse'
    { _usrrsOperationId = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <https://docs.aws.amazon.com/cloud-map/latest/api/API_GetOperation.html GetOperation> .
usrrsOperationId :: Lens' UpdateServiceResponse (Maybe Text)
usrrsOperationId = lens _usrrsOperationId (\s a -> s {_usrrsOperationId = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateServiceResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateServiceResponse
