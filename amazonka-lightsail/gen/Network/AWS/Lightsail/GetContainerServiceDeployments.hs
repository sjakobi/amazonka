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
-- Module      : Network.AWS.Lightsail.GetContainerServiceDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the deployments for your Amazon Lightsail container service
--
--
-- A deployment specifies the settings, such as the ports and launch command, of containers that are deployed to your container service.
--
-- The deployments are ordered by version in ascending order. The newest version is listed at the top of the response.
module Network.AWS.Lightsail.GetContainerServiceDeployments
  ( -- * Creating a Request
    getContainerServiceDeployments,
    GetContainerServiceDeployments,

    -- * Request Lenses
    gcsdServiceName,

    -- * Destructuring the Response
    getContainerServiceDeploymentsResponse,
    GetContainerServiceDeploymentsResponse,

    -- * Response Lenses
    gcsdrrsDeployments,
    gcsdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getContainerServiceDeployments' smart constructor.
newtype GetContainerServiceDeployments = GetContainerServiceDeployments'
  { _gcsdServiceName ::
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

-- | Creates a value of 'GetContainerServiceDeployments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsdServiceName' - The name of the container service for which to return deployments.
getContainerServiceDeployments ::
  -- | 'gcsdServiceName'
  Text ->
  GetContainerServiceDeployments
getContainerServiceDeployments pServiceName_ =
  GetContainerServiceDeployments'
    { _gcsdServiceName =
        pServiceName_
    }

-- | The name of the container service for which to return deployments.
gcsdServiceName :: Lens' GetContainerServiceDeployments Text
gcsdServiceName = lens _gcsdServiceName (\s a -> s {_gcsdServiceName = a})

instance AWSRequest GetContainerServiceDeployments where
  type
    Rs GetContainerServiceDeployments =
      GetContainerServiceDeploymentsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetContainerServiceDeploymentsResponse'
            <$> (x .?> "deployments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetContainerServiceDeployments

instance NFData GetContainerServiceDeployments

instance ToHeaders GetContainerServiceDeployments where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetContainerServiceDeployments" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContainerServiceDeployments where
  toJSON GetContainerServiceDeployments' {..} =
    object
      ( catMaybes
          [Just ("serviceName" .= _gcsdServiceName)]
      )

instance ToPath GetContainerServiceDeployments where
  toPath = const "/"

instance ToQuery GetContainerServiceDeployments where
  toQuery = const mempty

-- | /See:/ 'getContainerServiceDeploymentsResponse' smart constructor.
data GetContainerServiceDeploymentsResponse = GetContainerServiceDeploymentsResponse'
  { _gcsdrrsDeployments ::
      !( Maybe
           [ContainerServiceDeployment]
       ),
    _gcsdrrsResponseStatus ::
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

-- | Creates a value of 'GetContainerServiceDeploymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsdrrsDeployments' - An array of objects that describe deployments for a container service.
--
-- * 'gcsdrrsResponseStatus' - -- | The response status code.
getContainerServiceDeploymentsResponse ::
  -- | 'gcsdrrsResponseStatus'
  Int ->
  GetContainerServiceDeploymentsResponse
getContainerServiceDeploymentsResponse
  pResponseStatus_ =
    GetContainerServiceDeploymentsResponse'
      { _gcsdrrsDeployments =
          Nothing,
        _gcsdrrsResponseStatus =
          pResponseStatus_
      }

-- | An array of objects that describe deployments for a container service.
gcsdrrsDeployments :: Lens' GetContainerServiceDeploymentsResponse [ContainerServiceDeployment]
gcsdrrsDeployments = lens _gcsdrrsDeployments (\s a -> s {_gcsdrrsDeployments = a}) . _Default . _Coerce

-- | -- | The response status code.
gcsdrrsResponseStatus :: Lens' GetContainerServiceDeploymentsResponse Int
gcsdrrsResponseStatus = lens _gcsdrrsResponseStatus (\s a -> s {_gcsdrrsResponseStatus = a})

instance
  NFData
    GetContainerServiceDeploymentsResponse
