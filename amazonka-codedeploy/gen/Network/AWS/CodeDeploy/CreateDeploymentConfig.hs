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
-- Module      : Network.AWS.CodeDeploy.CreateDeploymentConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment configuration.
module Network.AWS.CodeDeploy.CreateDeploymentConfig
  ( -- * Creating a Request
    createDeploymentConfig,
    CreateDeploymentConfig,

    -- * Request Lenses
    cdcTrafficRoutingConfig,
    cdcMinimumHealthyHosts,
    cdcComputePlatform,
    cdcDeploymentConfigName,

    -- * Destructuring the Response
    createDeploymentConfigResponse,
    CreateDeploymentConfigResponse,

    -- * Response Lenses
    cdcrrsDeploymentConfigId,
    cdcrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @CreateDeploymentConfig@ operation.
--
--
--
-- /See:/ 'createDeploymentConfig' smart constructor.
data CreateDeploymentConfig = CreateDeploymentConfig'
  { _cdcTrafficRoutingConfig ::
      !( Maybe
           TrafficRoutingConfig
       ),
    _cdcMinimumHealthyHosts ::
      !( Maybe
           MinimumHealthyHosts
       ),
    _cdcComputePlatform ::
      !(Maybe ComputePlatform),
    _cdcDeploymentConfigName ::
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

-- | Creates a value of 'CreateDeploymentConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcTrafficRoutingConfig' - The configuration that specifies how the deployment traffic is routed.
--
-- * 'cdcMinimumHealthyHosts' - The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value. The type parameter takes either of the following values:     * HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.     * FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instances and rounds up fractional instances. The value parameter takes an integer. For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.
--
-- * 'cdcComputePlatform' - The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
--
-- * 'cdcDeploymentConfigName' - The name of the deployment configuration to create.
createDeploymentConfig ::
  -- | 'cdcDeploymentConfigName'
  Text ->
  CreateDeploymentConfig
createDeploymentConfig pDeploymentConfigName_ =
  CreateDeploymentConfig'
    { _cdcTrafficRoutingConfig =
        Nothing,
      _cdcMinimumHealthyHosts = Nothing,
      _cdcComputePlatform = Nothing,
      _cdcDeploymentConfigName = pDeploymentConfigName_
    }

-- | The configuration that specifies how the deployment traffic is routed.
cdcTrafficRoutingConfig :: Lens' CreateDeploymentConfig (Maybe TrafficRoutingConfig)
cdcTrafficRoutingConfig = lens _cdcTrafficRoutingConfig (\s a -> s {_cdcTrafficRoutingConfig = a})

-- | The minimum number of healthy instances that should be available at any time during the deployment. There are two parameters expected in the input: type and value. The type parameter takes either of the following values:     * HOST_COUNT: The value parameter represents the minimum number of healthy instances as an absolute value.     * FLEET_PERCENT: The value parameter represents the minimum number of healthy instances as a percentage of the total number of instances in the deployment. If you specify FLEET_PERCENT, at the start of the deployment, AWS CodeDeploy converts the percentage to the equivalent number of instances and rounds up fractional instances. The value parameter takes an integer. For example, to set a minimum of 95% healthy instance, specify a type of FLEET_PERCENT and a value of 95.
cdcMinimumHealthyHosts :: Lens' CreateDeploymentConfig (Maybe MinimumHealthyHosts)
cdcMinimumHealthyHosts = lens _cdcMinimumHealthyHosts (\s a -> s {_cdcMinimumHealthyHosts = a})

-- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
cdcComputePlatform :: Lens' CreateDeploymentConfig (Maybe ComputePlatform)
cdcComputePlatform = lens _cdcComputePlatform (\s a -> s {_cdcComputePlatform = a})

-- | The name of the deployment configuration to create.
cdcDeploymentConfigName :: Lens' CreateDeploymentConfig Text
cdcDeploymentConfigName = lens _cdcDeploymentConfigName (\s a -> s {_cdcDeploymentConfigName = a})

instance AWSRequest CreateDeploymentConfig where
  type
    Rs CreateDeploymentConfig =
      CreateDeploymentConfigResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          CreateDeploymentConfigResponse'
            <$> (x .?> "deploymentConfigId") <*> (pure (fromEnum s))
      )

instance Hashable CreateDeploymentConfig

instance NFData CreateDeploymentConfig

instance ToHeaders CreateDeploymentConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.CreateDeploymentConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDeploymentConfig where
  toJSON CreateDeploymentConfig' {..} =
    object
      ( catMaybes
          [ ("trafficRoutingConfig" .=)
              <$> _cdcTrafficRoutingConfig,
            ("minimumHealthyHosts" .=)
              <$> _cdcMinimumHealthyHosts,
            ("computePlatform" .=) <$> _cdcComputePlatform,
            Just
              ( "deploymentConfigName"
                  .= _cdcDeploymentConfigName
              )
          ]
      )

instance ToPath CreateDeploymentConfig where
  toPath = const "/"

instance ToQuery CreateDeploymentConfig where
  toQuery = const mempty

-- | Represents the output of a @CreateDeploymentConfig@ operation.
--
--
--
-- /See:/ 'createDeploymentConfigResponse' smart constructor.
data CreateDeploymentConfigResponse = CreateDeploymentConfigResponse'
  { _cdcrrsDeploymentConfigId ::
      !( Maybe
           Text
       ),
    _cdcrrsResponseStatus ::
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

-- | Creates a value of 'CreateDeploymentConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcrrsDeploymentConfigId' - A unique deployment configuration ID.
--
-- * 'cdcrrsResponseStatus' - -- | The response status code.
createDeploymentConfigResponse ::
  -- | 'cdcrrsResponseStatus'
  Int ->
  CreateDeploymentConfigResponse
createDeploymentConfigResponse pResponseStatus_ =
  CreateDeploymentConfigResponse'
    { _cdcrrsDeploymentConfigId =
        Nothing,
      _cdcrrsResponseStatus = pResponseStatus_
    }

-- | A unique deployment configuration ID.
cdcrrsDeploymentConfigId :: Lens' CreateDeploymentConfigResponse (Maybe Text)
cdcrrsDeploymentConfigId = lens _cdcrrsDeploymentConfigId (\s a -> s {_cdcrrsDeploymentConfigId = a})

-- | -- | The response status code.
cdcrrsResponseStatus :: Lens' CreateDeploymentConfigResponse Int
cdcrrsResponseStatus = lens _cdcrrsResponseStatus (\s a -> s {_cdcrrsResponseStatus = a})

instance NFData CreateDeploymentConfigResponse
