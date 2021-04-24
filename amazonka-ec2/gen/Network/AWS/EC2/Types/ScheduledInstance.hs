{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ScheduledInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ScheduledInstance where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.ScheduledInstanceRecurrence
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a Scheduled Instance.
--
--
--
-- /See:/ 'scheduledInstance' smart constructor.
data ScheduledInstance = ScheduledInstance'
  { _siPlatform ::
      !(Maybe Text),
    _siInstanceType :: !(Maybe Text),
    _siNetworkPlatform :: !(Maybe Text),
    _siSlotDurationInHours ::
      !(Maybe Int),
    _siCreateDate :: !(Maybe ISO8601),
    _siScheduledInstanceId ::
      !(Maybe Text),
    _siPreviousSlotEndTime ::
      !(Maybe ISO8601),
    _siAvailabilityZone ::
      !(Maybe Text),
    _siRecurrence ::
      !( Maybe
           ScheduledInstanceRecurrence
       ),
    _siTotalScheduledInstanceHours ::
      !(Maybe Int),
    _siNextSlotStartTime ::
      !(Maybe ISO8601),
    _siHourlyPrice :: !(Maybe Text),
    _siTermEndDate :: !(Maybe ISO8601),
    _siTermStartDate ::
      !(Maybe ISO8601),
    _siInstanceCount :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScheduledInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siPlatform' - The platform (@Linux/UNIX@ or @Windows@ ).
--
-- * 'siInstanceType' - The instance type.
--
-- * 'siNetworkPlatform' - The network platform (@EC2-Classic@ or @EC2-VPC@ ).
--
-- * 'siSlotDurationInHours' - The number of hours in the schedule.
--
-- * 'siCreateDate' - The date when the Scheduled Instance was purchased.
--
-- * 'siScheduledInstanceId' - The Scheduled Instance ID.
--
-- * 'siPreviousSlotEndTime' - The time that the previous schedule ended or will end.
--
-- * 'siAvailabilityZone' - The Availability Zone.
--
-- * 'siRecurrence' - The schedule recurrence.
--
-- * 'siTotalScheduledInstanceHours' - The total number of hours for a single instance for the entire term.
--
-- * 'siNextSlotStartTime' - The time for the next schedule to start.
--
-- * 'siHourlyPrice' - The hourly price for a single instance.
--
-- * 'siTermEndDate' - The end date for the Scheduled Instance.
--
-- * 'siTermStartDate' - The start date for the Scheduled Instance.
--
-- * 'siInstanceCount' - The number of instances.
scheduledInstance ::
  ScheduledInstance
scheduledInstance =
  ScheduledInstance'
    { _siPlatform = Nothing,
      _siInstanceType = Nothing,
      _siNetworkPlatform = Nothing,
      _siSlotDurationInHours = Nothing,
      _siCreateDate = Nothing,
      _siScheduledInstanceId = Nothing,
      _siPreviousSlotEndTime = Nothing,
      _siAvailabilityZone = Nothing,
      _siRecurrence = Nothing,
      _siTotalScheduledInstanceHours = Nothing,
      _siNextSlotStartTime = Nothing,
      _siHourlyPrice = Nothing,
      _siTermEndDate = Nothing,
      _siTermStartDate = Nothing,
      _siInstanceCount = Nothing
    }

-- | The platform (@Linux/UNIX@ or @Windows@ ).
siPlatform :: Lens' ScheduledInstance (Maybe Text)
siPlatform = lens _siPlatform (\s a -> s {_siPlatform = a})

-- | The instance type.
siInstanceType :: Lens' ScheduledInstance (Maybe Text)
siInstanceType = lens _siInstanceType (\s a -> s {_siInstanceType = a})

-- | The network platform (@EC2-Classic@ or @EC2-VPC@ ).
siNetworkPlatform :: Lens' ScheduledInstance (Maybe Text)
siNetworkPlatform = lens _siNetworkPlatform (\s a -> s {_siNetworkPlatform = a})

-- | The number of hours in the schedule.
siSlotDurationInHours :: Lens' ScheduledInstance (Maybe Int)
siSlotDurationInHours = lens _siSlotDurationInHours (\s a -> s {_siSlotDurationInHours = a})

-- | The date when the Scheduled Instance was purchased.
siCreateDate :: Lens' ScheduledInstance (Maybe UTCTime)
siCreateDate = lens _siCreateDate (\s a -> s {_siCreateDate = a}) . mapping _Time

-- | The Scheduled Instance ID.
siScheduledInstanceId :: Lens' ScheduledInstance (Maybe Text)
siScheduledInstanceId = lens _siScheduledInstanceId (\s a -> s {_siScheduledInstanceId = a})

-- | The time that the previous schedule ended or will end.
siPreviousSlotEndTime :: Lens' ScheduledInstance (Maybe UTCTime)
siPreviousSlotEndTime = lens _siPreviousSlotEndTime (\s a -> s {_siPreviousSlotEndTime = a}) . mapping _Time

-- | The Availability Zone.
siAvailabilityZone :: Lens' ScheduledInstance (Maybe Text)
siAvailabilityZone = lens _siAvailabilityZone (\s a -> s {_siAvailabilityZone = a})

-- | The schedule recurrence.
siRecurrence :: Lens' ScheduledInstance (Maybe ScheduledInstanceRecurrence)
siRecurrence = lens _siRecurrence (\s a -> s {_siRecurrence = a})

-- | The total number of hours for a single instance for the entire term.
siTotalScheduledInstanceHours :: Lens' ScheduledInstance (Maybe Int)
siTotalScheduledInstanceHours = lens _siTotalScheduledInstanceHours (\s a -> s {_siTotalScheduledInstanceHours = a})

-- | The time for the next schedule to start.
siNextSlotStartTime :: Lens' ScheduledInstance (Maybe UTCTime)
siNextSlotStartTime = lens _siNextSlotStartTime (\s a -> s {_siNextSlotStartTime = a}) . mapping _Time

-- | The hourly price for a single instance.
siHourlyPrice :: Lens' ScheduledInstance (Maybe Text)
siHourlyPrice = lens _siHourlyPrice (\s a -> s {_siHourlyPrice = a})

-- | The end date for the Scheduled Instance.
siTermEndDate :: Lens' ScheduledInstance (Maybe UTCTime)
siTermEndDate = lens _siTermEndDate (\s a -> s {_siTermEndDate = a}) . mapping _Time

-- | The start date for the Scheduled Instance.
siTermStartDate :: Lens' ScheduledInstance (Maybe UTCTime)
siTermStartDate = lens _siTermStartDate (\s a -> s {_siTermStartDate = a}) . mapping _Time

-- | The number of instances.
siInstanceCount :: Lens' ScheduledInstance (Maybe Int)
siInstanceCount = lens _siInstanceCount (\s a -> s {_siInstanceCount = a})

instance FromXML ScheduledInstance where
  parseXML x =
    ScheduledInstance'
      <$> (x .@? "platform")
      <*> (x .@? "instanceType")
      <*> (x .@? "networkPlatform")
      <*> (x .@? "slotDurationInHours")
      <*> (x .@? "createDate")
      <*> (x .@? "scheduledInstanceId")
      <*> (x .@? "previousSlotEndTime")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "recurrence")
      <*> (x .@? "totalScheduledInstanceHours")
      <*> (x .@? "nextSlotStartTime")
      <*> (x .@? "hourlyPrice")
      <*> (x .@? "termEndDate")
      <*> (x .@? "termStartDate")
      <*> (x .@? "instanceCount")

instance Hashable ScheduledInstance

instance NFData ScheduledInstance
