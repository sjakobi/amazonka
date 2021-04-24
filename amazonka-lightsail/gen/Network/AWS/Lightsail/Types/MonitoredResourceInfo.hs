{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.MonitoredResourceInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.MonitoredResourceInfo where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Prelude

-- | Describes resource being monitored by an alarm.
--
--
-- An alarm is a way to monitor your Amazon Lightsail resource metrics. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms Alarms in Amazon Lightsail> .
--
--
-- /See:/ 'monitoredResourceInfo' smart constructor.
data MonitoredResourceInfo = MonitoredResourceInfo'
  { _mriArn ::
      !(Maybe Text),
    _mriResourceType ::
      !(Maybe ResourceType),
    _mriName :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoredResourceInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mriArn' - The Amazon Resource Name (ARN) of the resource being monitored.
--
-- * 'mriResourceType' - The Lightsail resource type of the resource being monitored. Instances, load balancers, and relational databases are the only Lightsail resources that can currently be monitored by alarms.
--
-- * 'mriName' - The name of the Lightsail resource being monitored.
monitoredResourceInfo ::
  MonitoredResourceInfo
monitoredResourceInfo =
  MonitoredResourceInfo'
    { _mriArn = Nothing,
      _mriResourceType = Nothing,
      _mriName = Nothing
    }

-- | The Amazon Resource Name (ARN) of the resource being monitored.
mriArn :: Lens' MonitoredResourceInfo (Maybe Text)
mriArn = lens _mriArn (\s a -> s {_mriArn = a})

-- | The Lightsail resource type of the resource being monitored. Instances, load balancers, and relational databases are the only Lightsail resources that can currently be monitored by alarms.
mriResourceType :: Lens' MonitoredResourceInfo (Maybe ResourceType)
mriResourceType = lens _mriResourceType (\s a -> s {_mriResourceType = a})

-- | The name of the Lightsail resource being monitored.
mriName :: Lens' MonitoredResourceInfo (Maybe Text)
mriName = lens _mriName (\s a -> s {_mriName = a})

instance FromJSON MonitoredResourceInfo where
  parseJSON =
    withObject
      "MonitoredResourceInfo"
      ( \x ->
          MonitoredResourceInfo'
            <$> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "name")
      )

instance Hashable MonitoredResourceInfo

instance NFData MonitoredResourceInfo
