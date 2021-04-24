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
-- Module      : Network.AWS.EC2.StopInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an Amazon EBS-backed instance.
--
--
-- You can use the Stop action to hibernate an instance if the instance is <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#enabling-hibernation enabled for hibernation> and it meets the <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#hibernating-prerequisites hibernation prerequisites> . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance> in the /Amazon EC2 User Guide/ .
--
-- We don't charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.
--
-- You can't stop or hibernate instance store-backed instances. You can't use the Stop action to hibernate Spot Instances, but you can specify that Amazon EC2 should hibernate Spot Instances when they are interrupted. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances Hibernating interrupted Spot Instances> in the /Amazon EC2 User Guide/ .
--
-- When you stop or hibernate an instance, we shut it down. You can restart your instance at any time. Before stopping or hibernating an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM, but hibernating an instance does preserve data stored in RAM. If an instance cannot hibernate successfully, a normal shutdown occurs.
--
-- Stopping and hibernating an instance is different to rebooting or terminating it. For example, when you stop or hibernate an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, hibernating, and terminating instances, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html Instance lifecycle> in the /Amazon EC2 User Guide/ .
--
-- When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html Troubleshooting stopping your instance> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.StopInstances
  ( -- * Creating a Request
    stopInstances,
    StopInstances,

    -- * Request Lenses
    sDryRun,
    sForce,
    sHibernate,
    sInstanceIds,

    -- * Destructuring the Response
    stopInstancesResponse,
    StopInstancesResponse,

    -- * Response Lenses
    sirrsStoppingInstances,
    sirrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopInstances' smart constructor.
data StopInstances = StopInstances'
  { _sDryRun ::
      !(Maybe Bool),
    _sForce :: !(Maybe Bool),
    _sHibernate :: !(Maybe Bool),
    _sInstanceIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'sForce' - Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances. Default: @false@
--
-- * 'sHibernate' - Hibernates the instance if the instance was enabled for hibernation at launch. If the instance cannot hibernate successfully, a normal shutdown occurs. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance> in the /Amazon EC2 User Guide/ . Default: @false@
--
-- * 'sInstanceIds' - The IDs of the instances.
stopInstances ::
  StopInstances
stopInstances =
  StopInstances'
    { _sDryRun = Nothing,
      _sForce = Nothing,
      _sHibernate = Nothing,
      _sInstanceIds = mempty
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
sDryRun :: Lens' StopInstances (Maybe Bool)
sDryRun = lens _sDryRun (\s a -> s {_sDryRun = a})

-- | Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances. Default: @false@
sForce :: Lens' StopInstances (Maybe Bool)
sForce = lens _sForce (\s a -> s {_sForce = a})

-- | Hibernates the instance if the instance was enabled for hibernation at launch. If the instance cannot hibernate successfully, a normal shutdown occurs. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html Hibernate your instance> in the /Amazon EC2 User Guide/ . Default: @false@
sHibernate :: Lens' StopInstances (Maybe Bool)
sHibernate = lens _sHibernate (\s a -> s {_sHibernate = a})

-- | The IDs of the instances.
sInstanceIds :: Lens' StopInstances [Text]
sInstanceIds = lens _sInstanceIds (\s a -> s {_sInstanceIds = a}) . _Coerce

instance AWSRequest StopInstances where
  type Rs StopInstances = StopInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          StopInstancesResponse'
            <$> ( x .@? "instancesSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable StopInstances

instance NFData StopInstances

instance ToHeaders StopInstances where
  toHeaders = const mempty

instance ToPath StopInstances where
  toPath = const "/"

instance ToQuery StopInstances where
  toQuery StopInstances' {..} =
    mconcat
      [ "Action" =: ("StopInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _sDryRun,
        "Force" =: _sForce,
        "Hibernate" =: _sHibernate,
        toQueryList "InstanceId" _sInstanceIds
      ]

-- | /See:/ 'stopInstancesResponse' smart constructor.
data StopInstancesResponse = StopInstancesResponse'
  { _sirrsStoppingInstances ::
      !( Maybe
           [InstanceStateChange]
       ),
    _sirrsResponseStatus ::
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

-- | Creates a value of 'StopInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sirrsStoppingInstances' - Information about the stopped instances.
--
-- * 'sirrsResponseStatus' - -- | The response status code.
stopInstancesResponse ::
  -- | 'sirrsResponseStatus'
  Int ->
  StopInstancesResponse
stopInstancesResponse pResponseStatus_ =
  StopInstancesResponse'
    { _sirrsStoppingInstances =
        Nothing,
      _sirrsResponseStatus = pResponseStatus_
    }

-- | Information about the stopped instances.
sirrsStoppingInstances :: Lens' StopInstancesResponse [InstanceStateChange]
sirrsStoppingInstances = lens _sirrsStoppingInstances (\s a -> s {_sirrsStoppingInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
sirrsResponseStatus :: Lens' StopInstancesResponse Int
sirrsResponseStatus = lens _sirrsResponseStatus (\s a -> s {_sirrsResponseStatus = a})

instance NFData StopInstancesResponse
