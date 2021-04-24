{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ECSTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ECSTarget where

import Network.AWS.CodeDeploy.Types.ECSTaskSet
import Network.AWS.CodeDeploy.Types.LifecycleEvent
import Network.AWS.CodeDeploy.Types.TargetStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the target of an Amazon ECS deployment.
--
--
--
-- /See:/ 'eCSTarget' smart constructor.
data ECSTarget = ECSTarget'
  { _ecstDeploymentId ::
      !(Maybe Text),
    _ecstStatus :: !(Maybe TargetStatus),
    _ecstTargetId :: !(Maybe Text),
    _ecstTaskSetsInfo :: !(Maybe [ECSTaskSet]),
    _ecstTargetARN :: !(Maybe Text),
    _ecstLifecycleEvents :: !(Maybe [LifecycleEvent]),
    _ecstLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ECSTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecstDeploymentId' - The unique ID of a deployment.
--
-- * 'ecstStatus' - The status an Amazon ECS deployment's target ECS application.
--
-- * 'ecstTargetId' - The unique ID of a deployment target that has a type of @ecsTarget@ .
--
-- * 'ecstTaskSetsInfo' - The @ECSTaskSet@ objects associated with the ECS target.
--
-- * 'ecstTargetARN' - The Amazon Resource Name (ARN) of the target.
--
-- * 'ecstLifecycleEvents' - The lifecycle events of the deployment to this target Amazon ECS application.
--
-- * 'ecstLastUpdatedAt' - The date and time when the target Amazon ECS application was updated by a deployment.
eCSTarget ::
  ECSTarget
eCSTarget =
  ECSTarget'
    { _ecstDeploymentId = Nothing,
      _ecstStatus = Nothing,
      _ecstTargetId = Nothing,
      _ecstTaskSetsInfo = Nothing,
      _ecstTargetARN = Nothing,
      _ecstLifecycleEvents = Nothing,
      _ecstLastUpdatedAt = Nothing
    }

-- | The unique ID of a deployment.
ecstDeploymentId :: Lens' ECSTarget (Maybe Text)
ecstDeploymentId = lens _ecstDeploymentId (\s a -> s {_ecstDeploymentId = a})

-- | The status an Amazon ECS deployment's target ECS application.
ecstStatus :: Lens' ECSTarget (Maybe TargetStatus)
ecstStatus = lens _ecstStatus (\s a -> s {_ecstStatus = a})

-- | The unique ID of a deployment target that has a type of @ecsTarget@ .
ecstTargetId :: Lens' ECSTarget (Maybe Text)
ecstTargetId = lens _ecstTargetId (\s a -> s {_ecstTargetId = a})

-- | The @ECSTaskSet@ objects associated with the ECS target.
ecstTaskSetsInfo :: Lens' ECSTarget [ECSTaskSet]
ecstTaskSetsInfo = lens _ecstTaskSetsInfo (\s a -> s {_ecstTaskSetsInfo = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the target.
ecstTargetARN :: Lens' ECSTarget (Maybe Text)
ecstTargetARN = lens _ecstTargetARN (\s a -> s {_ecstTargetARN = a})

-- | The lifecycle events of the deployment to this target Amazon ECS application.
ecstLifecycleEvents :: Lens' ECSTarget [LifecycleEvent]
ecstLifecycleEvents = lens _ecstLifecycleEvents (\s a -> s {_ecstLifecycleEvents = a}) . _Default . _Coerce

-- | The date and time when the target Amazon ECS application was updated by a deployment.
ecstLastUpdatedAt :: Lens' ECSTarget (Maybe UTCTime)
ecstLastUpdatedAt = lens _ecstLastUpdatedAt (\s a -> s {_ecstLastUpdatedAt = a}) . mapping _Time

instance FromJSON ECSTarget where
  parseJSON =
    withObject
      "ECSTarget"
      ( \x ->
          ECSTarget'
            <$> (x .:? "deploymentId")
            <*> (x .:? "status")
            <*> (x .:? "targetId")
            <*> (x .:? "taskSetsInfo" .!= mempty)
            <*> (x .:? "targetArn")
            <*> (x .:? "lifecycleEvents" .!= mempty)
            <*> (x .:? "lastUpdatedAt")
      )

instance Hashable ECSTarget

instance NFData ECSTarget
