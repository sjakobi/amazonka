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
-- Module      : Network.AWS.Greengrass.GetDeploymentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status of a deployment.
module Network.AWS.Greengrass.GetDeploymentStatus
  ( -- * Creating a Request
    getDeploymentStatus,
    GetDeploymentStatus,

    -- * Request Lenses
    gdsGroupId,
    gdsDeploymentId,

    -- * Destructuring the Response
    getDeploymentStatusResponse,
    GetDeploymentStatusResponse,

    -- * Response Lenses
    gdsrrsDeploymentType,
    gdsrrsUpdatedAt,
    gdsrrsDeploymentStatus,
    gdsrrsErrorMessage,
    gdsrrsErrorDetails,
    gdsrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDeploymentStatus' smart constructor.
data GetDeploymentStatus = GetDeploymentStatus'
  { _gdsGroupId ::
      !Text,
    _gdsDeploymentId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDeploymentStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsGroupId' - The ID of the Greengrass group.
--
-- * 'gdsDeploymentId' - The ID of the deployment.
getDeploymentStatus ::
  -- | 'gdsGroupId'
  Text ->
  -- | 'gdsDeploymentId'
  Text ->
  GetDeploymentStatus
getDeploymentStatus pGroupId_ pDeploymentId_ =
  GetDeploymentStatus'
    { _gdsGroupId = pGroupId_,
      _gdsDeploymentId = pDeploymentId_
    }

-- | The ID of the Greengrass group.
gdsGroupId :: Lens' GetDeploymentStatus Text
gdsGroupId = lens _gdsGroupId (\s a -> s {_gdsGroupId = a})

-- | The ID of the deployment.
gdsDeploymentId :: Lens' GetDeploymentStatus Text
gdsDeploymentId = lens _gdsDeploymentId (\s a -> s {_gdsDeploymentId = a})

instance AWSRequest GetDeploymentStatus where
  type
    Rs GetDeploymentStatus =
      GetDeploymentStatusResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetDeploymentStatusResponse'
            <$> (x .?> "DeploymentType")
            <*> (x .?> "UpdatedAt")
            <*> (x .?> "DeploymentStatus")
            <*> (x .?> "ErrorMessage")
            <*> (x .?> "ErrorDetails" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetDeploymentStatus

instance NFData GetDeploymentStatus

instance ToHeaders GetDeploymentStatus where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetDeploymentStatus where
  toPath GetDeploymentStatus' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _gdsGroupId,
        "/deployments/",
        toBS _gdsDeploymentId,
        "/status"
      ]

instance ToQuery GetDeploymentStatus where
  toQuery = const mempty

-- | /See:/ 'getDeploymentStatusResponse' smart constructor.
data GetDeploymentStatusResponse = GetDeploymentStatusResponse'
  { _gdsrrsDeploymentType ::
      !( Maybe
           DeploymentType
       ),
    _gdsrrsUpdatedAt ::
      !(Maybe Text),
    _gdsrrsDeploymentStatus ::
      !(Maybe Text),
    _gdsrrsErrorMessage ::
      !(Maybe Text),
    _gdsrrsErrorDetails ::
      !( Maybe
           [ErrorDetail]
       ),
    _gdsrrsResponseStatus ::
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

-- | Creates a value of 'GetDeploymentStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdsrrsDeploymentType' - The type of the deployment.
--
-- * 'gdsrrsUpdatedAt' - The time, in milliseconds since the epoch, when the deployment status was updated.
--
-- * 'gdsrrsDeploymentStatus' - The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
--
-- * 'gdsrrsErrorMessage' - Error message
--
-- * 'gdsrrsErrorDetails' - Error details
--
-- * 'gdsrrsResponseStatus' - -- | The response status code.
getDeploymentStatusResponse ::
  -- | 'gdsrrsResponseStatus'
  Int ->
  GetDeploymentStatusResponse
getDeploymentStatusResponse pResponseStatus_ =
  GetDeploymentStatusResponse'
    { _gdsrrsDeploymentType =
        Nothing,
      _gdsrrsUpdatedAt = Nothing,
      _gdsrrsDeploymentStatus = Nothing,
      _gdsrrsErrorMessage = Nothing,
      _gdsrrsErrorDetails = Nothing,
      _gdsrrsResponseStatus = pResponseStatus_
    }

-- | The type of the deployment.
gdsrrsDeploymentType :: Lens' GetDeploymentStatusResponse (Maybe DeploymentType)
gdsrrsDeploymentType = lens _gdsrrsDeploymentType (\s a -> s {_gdsrrsDeploymentType = a})

-- | The time, in milliseconds since the epoch, when the deployment status was updated.
gdsrrsUpdatedAt :: Lens' GetDeploymentStatusResponse (Maybe Text)
gdsrrsUpdatedAt = lens _gdsrrsUpdatedAt (\s a -> s {_gdsrrsUpdatedAt = a})

-- | The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
gdsrrsDeploymentStatus :: Lens' GetDeploymentStatusResponse (Maybe Text)
gdsrrsDeploymentStatus = lens _gdsrrsDeploymentStatus (\s a -> s {_gdsrrsDeploymentStatus = a})

-- | Error message
gdsrrsErrorMessage :: Lens' GetDeploymentStatusResponse (Maybe Text)
gdsrrsErrorMessage = lens _gdsrrsErrorMessage (\s a -> s {_gdsrrsErrorMessage = a})

-- | Error details
gdsrrsErrorDetails :: Lens' GetDeploymentStatusResponse [ErrorDetail]
gdsrrsErrorDetails = lens _gdsrrsErrorDetails (\s a -> s {_gdsrrsErrorDetails = a}) . _Default . _Coerce

-- | -- | The response status code.
gdsrrsResponseStatus :: Lens' GetDeploymentStatusResponse Int
gdsrrsResponseStatus = lens _gdsrrsResponseStatus (\s a -> s {_gdsrrsResponseStatus = a})

instance NFData GetDeploymentStatusResponse
