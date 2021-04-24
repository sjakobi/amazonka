{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.InstanceTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.InstanceTarget where

import Network.AWS.CodeDeploy.Types.LifecycleEvent
import Network.AWS.CodeDeploy.Types.TargetLabel
import Network.AWS.CodeDeploy.Types.TargetStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A target Amazon EC2 or on-premises instance during a deployment that uses the EC2/On-premises compute platform.
--
--
--
-- /See:/ 'instanceTarget' smart constructor.
data InstanceTarget = InstanceTarget'
  { _itDeploymentId ::
      !(Maybe Text),
    _itStatus :: !(Maybe TargetStatus),
    _itTargetId :: !(Maybe Text),
    _itInstanceLabel :: !(Maybe TargetLabel),
    _itTargetARN :: !(Maybe Text),
    _itLifecycleEvents ::
      !(Maybe [LifecycleEvent]),
    _itLastUpdatedAt :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itDeploymentId' - The unique ID of a deployment.
--
-- * 'itStatus' - The status an EC2/On-premises deployment's target instance.
--
-- * 'itTargetId' - The unique ID of a deployment target that has a type of @instanceTarget@ .
--
-- * 'itInstanceLabel' - A label that identifies whether the instance is an original target (@BLUE@ ) or a replacement target (@GREEN@ ).
--
-- * 'itTargetARN' - The Amazon Resource Name (ARN) of the target.
--
-- * 'itLifecycleEvents' - The lifecycle events of the deployment to this target instance.
--
-- * 'itLastUpdatedAt' - The date and time when the target instance was updated by a deployment.
instanceTarget ::
  InstanceTarget
instanceTarget =
  InstanceTarget'
    { _itDeploymentId = Nothing,
      _itStatus = Nothing,
      _itTargetId = Nothing,
      _itInstanceLabel = Nothing,
      _itTargetARN = Nothing,
      _itLifecycleEvents = Nothing,
      _itLastUpdatedAt = Nothing
    }

-- | The unique ID of a deployment.
itDeploymentId :: Lens' InstanceTarget (Maybe Text)
itDeploymentId = lens _itDeploymentId (\s a -> s {_itDeploymentId = a})

-- | The status an EC2/On-premises deployment's target instance.
itStatus :: Lens' InstanceTarget (Maybe TargetStatus)
itStatus = lens _itStatus (\s a -> s {_itStatus = a})

-- | The unique ID of a deployment target that has a type of @instanceTarget@ .
itTargetId :: Lens' InstanceTarget (Maybe Text)
itTargetId = lens _itTargetId (\s a -> s {_itTargetId = a})

-- | A label that identifies whether the instance is an original target (@BLUE@ ) or a replacement target (@GREEN@ ).
itInstanceLabel :: Lens' InstanceTarget (Maybe TargetLabel)
itInstanceLabel = lens _itInstanceLabel (\s a -> s {_itInstanceLabel = a})

-- | The Amazon Resource Name (ARN) of the target.
itTargetARN :: Lens' InstanceTarget (Maybe Text)
itTargetARN = lens _itTargetARN (\s a -> s {_itTargetARN = a})

-- | The lifecycle events of the deployment to this target instance.
itLifecycleEvents :: Lens' InstanceTarget [LifecycleEvent]
itLifecycleEvents = lens _itLifecycleEvents (\s a -> s {_itLifecycleEvents = a}) . _Default . _Coerce

-- | The date and time when the target instance was updated by a deployment.
itLastUpdatedAt :: Lens' InstanceTarget (Maybe UTCTime)
itLastUpdatedAt = lens _itLastUpdatedAt (\s a -> s {_itLastUpdatedAt = a}) . mapping _Time

instance FromJSON InstanceTarget where
  parseJSON =
    withObject
      "InstanceTarget"
      ( \x ->
          InstanceTarget'
            <$> (x .:? "deploymentId")
            <*> (x .:? "status")
            <*> (x .:? "targetId")
            <*> (x .:? "instanceLabel")
            <*> (x .:? "targetArn")
            <*> (x .:? "lifecycleEvents" .!= mempty)
            <*> (x .:? "lastUpdatedAt")
      )

instance Hashable InstanceTarget

instance NFData InstanceTarget
