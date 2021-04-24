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
-- Module      : Network.AWS.EC2.RunScheduledInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Launches the specified Scheduled Instances.
--
--
-- Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using 'PurchaseScheduledInstances' .
--
-- You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html Scheduled Instances> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.RunScheduledInstances
  ( -- * Creating a Request
    runScheduledInstances,
    RunScheduledInstances,

    -- * Request Lenses
    rsisDryRun,
    rsisClientToken,
    rsisInstanceCount,
    rsisLaunchSpecification,
    rsisScheduledInstanceId,

    -- * Destructuring the Response
    runScheduledInstancesResponse,
    RunScheduledInstancesResponse,

    -- * Response Lenses
    rrsInstanceIdSet,
    rrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for RunScheduledInstances.
--
--
--
-- /See:/ 'runScheduledInstances' smart constructor.
data RunScheduledInstances = RunScheduledInstances'
  { _rsisDryRun ::
      !(Maybe Bool),
    _rsisClientToken ::
      !(Maybe Text),
    _rsisInstanceCount ::
      !(Maybe Int),
    _rsisLaunchSpecification ::
      !ScheduledInstancesLaunchSpecification,
    _rsisScheduledInstanceId ::
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

-- | Creates a value of 'RunScheduledInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsisDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'rsisClientToken' - Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
--
-- * 'rsisInstanceCount' - The number of instances. Default: 1
--
-- * 'rsisLaunchSpecification' - The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
--
-- * 'rsisScheduledInstanceId' - The Scheduled Instance ID.
runScheduledInstances ::
  -- | 'rsisLaunchSpecification'
  ScheduledInstancesLaunchSpecification ->
  -- | 'rsisScheduledInstanceId'
  Text ->
  RunScheduledInstances
runScheduledInstances
  pLaunchSpecification_
  pScheduledInstanceId_ =
    RunScheduledInstances'
      { _rsisDryRun = Nothing,
        _rsisClientToken = Nothing,
        _rsisInstanceCount = Nothing,
        _rsisLaunchSpecification = pLaunchSpecification_,
        _rsisScheduledInstanceId = pScheduledInstanceId_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
rsisDryRun :: Lens' RunScheduledInstances (Maybe Bool)
rsisDryRun = lens _rsisDryRun (\s a -> s {_rsisDryRun = a})

-- | Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency> .
rsisClientToken :: Lens' RunScheduledInstances (Maybe Text)
rsisClientToken = lens _rsisClientToken (\s a -> s {_rsisClientToken = a})

-- | The number of instances. Default: 1
rsisInstanceCount :: Lens' RunScheduledInstances (Maybe Int)
rsisInstanceCount = lens _rsisInstanceCount (\s a -> s {_rsisInstanceCount = a})

-- | The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
rsisLaunchSpecification :: Lens' RunScheduledInstances ScheduledInstancesLaunchSpecification
rsisLaunchSpecification = lens _rsisLaunchSpecification (\s a -> s {_rsisLaunchSpecification = a})

-- | The Scheduled Instance ID.
rsisScheduledInstanceId :: Lens' RunScheduledInstances Text
rsisScheduledInstanceId = lens _rsisScheduledInstanceId (\s a -> s {_rsisScheduledInstanceId = a})

instance AWSRequest RunScheduledInstances where
  type
    Rs RunScheduledInstances =
      RunScheduledInstancesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          RunScheduledInstancesResponse'
            <$> ( x .@? "instanceIdSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable RunScheduledInstances

instance NFData RunScheduledInstances

instance ToHeaders RunScheduledInstances where
  toHeaders = const mempty

instance ToPath RunScheduledInstances where
  toPath = const "/"

instance ToQuery RunScheduledInstances where
  toQuery RunScheduledInstances' {..} =
    mconcat
      [ "Action" =: ("RunScheduledInstances" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _rsisDryRun,
        "ClientToken" =: _rsisClientToken,
        "InstanceCount" =: _rsisInstanceCount,
        "LaunchSpecification" =: _rsisLaunchSpecification,
        "ScheduledInstanceId" =: _rsisScheduledInstanceId
      ]

-- | Contains the output of RunScheduledInstances.
--
--
--
-- /See:/ 'runScheduledInstancesResponse' smart constructor.
data RunScheduledInstancesResponse = RunScheduledInstancesResponse'
  { _rrsInstanceIdSet ::
      !( Maybe
           [Text]
       ),
    _rrsResponseStatus ::
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

-- | Creates a value of 'RunScheduledInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsInstanceIdSet' - The IDs of the newly launched instances.
--
-- * 'rrsResponseStatus' - -- | The response status code.
runScheduledInstancesResponse ::
  -- | 'rrsResponseStatus'
  Int ->
  RunScheduledInstancesResponse
runScheduledInstancesResponse pResponseStatus_ =
  RunScheduledInstancesResponse'
    { _rrsInstanceIdSet =
        Nothing,
      _rrsResponseStatus = pResponseStatus_
    }

-- | The IDs of the newly launched instances.
rrsInstanceIdSet :: Lens' RunScheduledInstancesResponse [Text]
rrsInstanceIdSet = lens _rrsInstanceIdSet (\s a -> s {_rrsInstanceIdSet = a}) . _Default . _Coerce

-- | -- | The response status code.
rrsResponseStatus :: Lens' RunScheduledInstancesResponse Int
rrsResponseStatus = lens _rrsResponseStatus (\s a -> s {_rrsResponseStatus = a})

instance NFData RunScheduledInstancesResponse
