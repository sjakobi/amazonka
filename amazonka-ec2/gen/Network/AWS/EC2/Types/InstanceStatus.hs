{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStatus where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceState
import Network.AWS.EC2.Types.InstanceStatusEvent
import Network.AWS.EC2.Types.InstanceStatusSummary
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the status of an instance.
--
--
--
-- /See:/ 'instanceStatus' smart constructor.
data InstanceStatus = InstanceStatus'
  { _issInstanceId ::
      !(Maybe Text),
    _issSystemStatus ::
      !(Maybe InstanceStatusSummary),
    _issOutpostARN :: !(Maybe Text),
    _issInstanceStatus ::
      !(Maybe InstanceStatusSummary),
    _issEvents ::
      !(Maybe [InstanceStatusEvent]),
    _issAvailabilityZone :: !(Maybe Text),
    _issInstanceState ::
      !(Maybe InstanceState)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'issInstanceId' - The ID of the instance.
--
-- * 'issSystemStatus' - Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.
--
-- * 'issOutpostARN' - The Amazon Resource Name (ARN) of the Outpost.
--
-- * 'issInstanceStatus' - Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.
--
-- * 'issEvents' - Any scheduled events associated with the instance.
--
-- * 'issAvailabilityZone' - The Availability Zone of the instance.
--
-- * 'issInstanceState' - The intended state of the instance. 'DescribeInstanceStatus' requires that an instance be in the @running@ state.
instanceStatus ::
  InstanceStatus
instanceStatus =
  InstanceStatus'
    { _issInstanceId = Nothing,
      _issSystemStatus = Nothing,
      _issOutpostARN = Nothing,
      _issInstanceStatus = Nothing,
      _issEvents = Nothing,
      _issAvailabilityZone = Nothing,
      _issInstanceState = Nothing
    }

-- | The ID of the instance.
issInstanceId :: Lens' InstanceStatus (Maybe Text)
issInstanceId = lens _issInstanceId (\s a -> s {_issInstanceId = a})

-- | Reports impaired functionality that stems from issues related to the systems that support an instance, such as hardware failures and network connectivity problems.
issSystemStatus :: Lens' InstanceStatus (Maybe InstanceStatusSummary)
issSystemStatus = lens _issSystemStatus (\s a -> s {_issSystemStatus = a})

-- | The Amazon Resource Name (ARN) of the Outpost.
issOutpostARN :: Lens' InstanceStatus (Maybe Text)
issOutpostARN = lens _issOutpostARN (\s a -> s {_issOutpostARN = a})

-- | Reports impaired functionality that stems from issues internal to the instance, such as impaired reachability.
issInstanceStatus :: Lens' InstanceStatus (Maybe InstanceStatusSummary)
issInstanceStatus = lens _issInstanceStatus (\s a -> s {_issInstanceStatus = a})

-- | Any scheduled events associated with the instance.
issEvents :: Lens' InstanceStatus [InstanceStatusEvent]
issEvents = lens _issEvents (\s a -> s {_issEvents = a}) . _Default . _Coerce

-- | The Availability Zone of the instance.
issAvailabilityZone :: Lens' InstanceStatus (Maybe Text)
issAvailabilityZone = lens _issAvailabilityZone (\s a -> s {_issAvailabilityZone = a})

-- | The intended state of the instance. 'DescribeInstanceStatus' requires that an instance be in the @running@ state.
issInstanceState :: Lens' InstanceStatus (Maybe InstanceState)
issInstanceState = lens _issInstanceState (\s a -> s {_issInstanceState = a})

instance FromXML InstanceStatus where
  parseXML x =
    InstanceStatus'
      <$> (x .@? "instanceId")
      <*> (x .@? "systemStatus")
      <*> (x .@? "outpostArn")
      <*> (x .@? "instanceStatus")
      <*> ( x .@? "eventsSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "availabilityZone")
      <*> (x .@? "instanceState")

instance Hashable InstanceStatus

instance NFData InstanceStatus
