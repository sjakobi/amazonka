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
-- Module      : Network.AWS.Greengrass.ResetDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets a group's deployments.
module Network.AWS.Greengrass.ResetDeployments
  ( -- * Creating a Request
    resetDeployments,
    ResetDeployments,

    -- * Request Lenses
    rdForce,
    rdAmznClientToken,
    rdGroupId,

    -- * Destructuring the Response
    resetDeploymentsResponse,
    ResetDeploymentsResponse,

    -- * Response Lenses
    rdrrsDeploymentId,
    rdrrsDeploymentARN,
    rdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Information needed to reset deployments.
--
-- /See:/ 'resetDeployments' smart constructor.
data ResetDeployments = ResetDeployments'
  { _rdForce ::
      !(Maybe Bool),
    _rdAmznClientToken :: !(Maybe Text),
    _rdGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResetDeployments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdForce' - If true, performs a best-effort only core reset.
--
-- * 'rdAmznClientToken' - A client token used to correlate requests and responses.
--
-- * 'rdGroupId' - The ID of the Greengrass group.
resetDeployments ::
  -- | 'rdGroupId'
  Text ->
  ResetDeployments
resetDeployments pGroupId_ =
  ResetDeployments'
    { _rdForce = Nothing,
      _rdAmznClientToken = Nothing,
      _rdGroupId = pGroupId_
    }

-- | If true, performs a best-effort only core reset.
rdForce :: Lens' ResetDeployments (Maybe Bool)
rdForce = lens _rdForce (\s a -> s {_rdForce = a})

-- | A client token used to correlate requests and responses.
rdAmznClientToken :: Lens' ResetDeployments (Maybe Text)
rdAmznClientToken = lens _rdAmznClientToken (\s a -> s {_rdAmznClientToken = a})

-- | The ID of the Greengrass group.
rdGroupId :: Lens' ResetDeployments Text
rdGroupId = lens _rdGroupId (\s a -> s {_rdGroupId = a})

instance AWSRequest ResetDeployments where
  type Rs ResetDeployments = ResetDeploymentsResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          ResetDeploymentsResponse'
            <$> (x .?> "DeploymentId")
            <*> (x .?> "DeploymentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable ResetDeployments

instance NFData ResetDeployments

instance ToHeaders ResetDeployments where
  toHeaders ResetDeployments' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _rdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON ResetDeployments where
  toJSON ResetDeployments' {..} =
    object (catMaybes [("Force" .=) <$> _rdForce])

instance ToPath ResetDeployments where
  toPath ResetDeployments' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _rdGroupId,
        "/deployments/$reset"
      ]

instance ToQuery ResetDeployments where
  toQuery = const mempty

-- | /See:/ 'resetDeploymentsResponse' smart constructor.
data ResetDeploymentsResponse = ResetDeploymentsResponse'
  { _rdrrsDeploymentId ::
      !(Maybe Text),
    _rdrrsDeploymentARN ::
      !(Maybe Text),
    _rdrrsResponseStatus ::
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

-- | Creates a value of 'ResetDeploymentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrrsDeploymentId' - The ID of the deployment.
--
-- * 'rdrrsDeploymentARN' - The ARN of the deployment.
--
-- * 'rdrrsResponseStatus' - -- | The response status code.
resetDeploymentsResponse ::
  -- | 'rdrrsResponseStatus'
  Int ->
  ResetDeploymentsResponse
resetDeploymentsResponse pResponseStatus_ =
  ResetDeploymentsResponse'
    { _rdrrsDeploymentId =
        Nothing,
      _rdrrsDeploymentARN = Nothing,
      _rdrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the deployment.
rdrrsDeploymentId :: Lens' ResetDeploymentsResponse (Maybe Text)
rdrrsDeploymentId = lens _rdrrsDeploymentId (\s a -> s {_rdrrsDeploymentId = a})

-- | The ARN of the deployment.
rdrrsDeploymentARN :: Lens' ResetDeploymentsResponse (Maybe Text)
rdrrsDeploymentARN = lens _rdrrsDeploymentARN (\s a -> s {_rdrrsDeploymentARN = a})

-- | -- | The response status code.
rdrrsResponseStatus :: Lens' ResetDeploymentsResponse Int
rdrrsResponseStatus = lens _rdrrsResponseStatus (\s a -> s {_rdrrsResponseStatus = a})

instance NFData ResetDeploymentsResponse
