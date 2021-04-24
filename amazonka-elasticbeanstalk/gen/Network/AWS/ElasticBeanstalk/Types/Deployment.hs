{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.Deployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.Deployment where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an application version deployment.
--
--
--
-- /See:/ 'deployment' smart constructor.
data Deployment = Deployment'
  { _dStatus ::
      !(Maybe Text),
    _dDeploymentId :: !(Maybe Integer),
    _dVersionLabel :: !(Maybe Text),
    _dDeploymentTime :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Deployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dStatus' - The status of the deployment:     * @In Progress@ : The deployment is in progress.     * @Deployed@ : The deployment succeeded.     * @Failed@ : The deployment failed.
--
-- * 'dDeploymentId' - The ID of the deployment. This number increases by one each time that you deploy source code or change instance configuration settings.
--
-- * 'dVersionLabel' - The version label of the application version in the deployment.
--
-- * 'dDeploymentTime' - For in-progress deployments, the time that the deployment started. For completed deployments, the time that the deployment ended.
deployment ::
  Deployment
deployment =
  Deployment'
    { _dStatus = Nothing,
      _dDeploymentId = Nothing,
      _dVersionLabel = Nothing,
      _dDeploymentTime = Nothing
    }

-- | The status of the deployment:     * @In Progress@ : The deployment is in progress.     * @Deployed@ : The deployment succeeded.     * @Failed@ : The deployment failed.
dStatus :: Lens' Deployment (Maybe Text)
dStatus = lens _dStatus (\s a -> s {_dStatus = a})

-- | The ID of the deployment. This number increases by one each time that you deploy source code or change instance configuration settings.
dDeploymentId :: Lens' Deployment (Maybe Integer)
dDeploymentId = lens _dDeploymentId (\s a -> s {_dDeploymentId = a})

-- | The version label of the application version in the deployment.
dVersionLabel :: Lens' Deployment (Maybe Text)
dVersionLabel = lens _dVersionLabel (\s a -> s {_dVersionLabel = a})

-- | For in-progress deployments, the time that the deployment started. For completed deployments, the time that the deployment ended.
dDeploymentTime :: Lens' Deployment (Maybe UTCTime)
dDeploymentTime = lens _dDeploymentTime (\s a -> s {_dDeploymentTime = a}) . mapping _Time

instance FromXML Deployment where
  parseXML x =
    Deployment'
      <$> (x .@? "Status")
      <*> (x .@? "DeploymentId")
      <*> (x .@? "VersionLabel")
      <*> (x .@? "DeploymentTime")

instance Hashable Deployment

instance NFData Deployment
