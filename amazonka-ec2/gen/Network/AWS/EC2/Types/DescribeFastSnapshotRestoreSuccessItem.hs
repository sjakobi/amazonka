{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DescribeFastSnapshotRestoreSuccessItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DescribeFastSnapshotRestoreSuccessItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes fast snapshot restores for a snapshot.
--
--
--
-- /See:/ 'describeFastSnapshotRestoreSuccessItem' smart constructor.
data DescribeFastSnapshotRestoreSuccessItem = DescribeFastSnapshotRestoreSuccessItem'
  { _dOwnerAlias ::
      !( Maybe
           Text
       ),
    _dOwnerId ::
      !( Maybe
           Text
       ),
    _dStateTransitionReason ::
      !( Maybe
           Text
       ),
    _dOptimizingTime ::
      !( Maybe
           ISO8601
       ),
    _dState ::
      !( Maybe
           FastSnapshotRestoreStateCode
       ),
    _dAvailabilityZone ::
      !( Maybe
           Text
       ),
    _dDisablingTime ::
      !( Maybe
           ISO8601
       ),
    _dSnapshotId ::
      !( Maybe
           Text
       ),
    _dEnablingTime ::
      !( Maybe
           ISO8601
       ),
    _dEnabledTime ::
      !( Maybe
           ISO8601
       ),
    _dDisabledTime ::
      !( Maybe
           ISO8601
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeFastSnapshotRestoreSuccessItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dOwnerAlias' - The AWS owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
--
-- * 'dOwnerId' - The ID of the AWS account that enabled fast snapshot restores on the snapshot.
--
-- * 'dStateTransitionReason' - The reason for the state transition. The possible values are as follows:     * @Client.UserInitiated@ - The state successfully transitioned to @enabling@ or @disabling@ .     * @Client.UserInitiated - Lifecycle state transition@ - The state successfully transitioned to @optimizing@ , @enabled@ , or @disabled@ .
--
-- * 'dOptimizingTime' - The time at which fast snapshot restores entered the @optimizing@ state.
--
-- * 'dState' - The state of fast snapshot restores.
--
-- * 'dAvailabilityZone' - The Availability Zone.
--
-- * 'dDisablingTime' - The time at which fast snapshot restores entered the @disabling@ state.
--
-- * 'dSnapshotId' - The ID of the snapshot.
--
-- * 'dEnablingTime' - The time at which fast snapshot restores entered the @enabling@ state.
--
-- * 'dEnabledTime' - The time at which fast snapshot restores entered the @enabled@ state.
--
-- * 'dDisabledTime' - The time at which fast snapshot restores entered the @disabled@ state.
describeFastSnapshotRestoreSuccessItem ::
  DescribeFastSnapshotRestoreSuccessItem
describeFastSnapshotRestoreSuccessItem =
  DescribeFastSnapshotRestoreSuccessItem'
    { _dOwnerAlias =
        Nothing,
      _dOwnerId = Nothing,
      _dStateTransitionReason = Nothing,
      _dOptimizingTime = Nothing,
      _dState = Nothing,
      _dAvailabilityZone = Nothing,
      _dDisablingTime = Nothing,
      _dSnapshotId = Nothing,
      _dEnablingTime = Nothing,
      _dEnabledTime = Nothing,
      _dDisabledTime = Nothing
    }

-- | The AWS owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
dOwnerAlias :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe Text)
dOwnerAlias = lens _dOwnerAlias (\s a -> s {_dOwnerAlias = a})

-- | The ID of the AWS account that enabled fast snapshot restores on the snapshot.
dOwnerId :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe Text)
dOwnerId = lens _dOwnerId (\s a -> s {_dOwnerId = a})

-- | The reason for the state transition. The possible values are as follows:     * @Client.UserInitiated@ - The state successfully transitioned to @enabling@ or @disabling@ .     * @Client.UserInitiated - Lifecycle state transition@ - The state successfully transitioned to @optimizing@ , @enabled@ , or @disabled@ .
dStateTransitionReason :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe Text)
dStateTransitionReason = lens _dStateTransitionReason (\s a -> s {_dStateTransitionReason = a})

-- | The time at which fast snapshot restores entered the @optimizing@ state.
dOptimizingTime :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dOptimizingTime = lens _dOptimizingTime (\s a -> s {_dOptimizingTime = a}) . mapping _Time

-- | The state of fast snapshot restores.
dState :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe FastSnapshotRestoreStateCode)
dState = lens _dState (\s a -> s {_dState = a})

-- | The Availability Zone.
dAvailabilityZone :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe Text)
dAvailabilityZone = lens _dAvailabilityZone (\s a -> s {_dAvailabilityZone = a})

-- | The time at which fast snapshot restores entered the @disabling@ state.
dDisablingTime :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dDisablingTime = lens _dDisablingTime (\s a -> s {_dDisablingTime = a}) . mapping _Time

-- | The ID of the snapshot.
dSnapshotId :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe Text)
dSnapshotId = lens _dSnapshotId (\s a -> s {_dSnapshotId = a})

-- | The time at which fast snapshot restores entered the @enabling@ state.
dEnablingTime :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dEnablingTime = lens _dEnablingTime (\s a -> s {_dEnablingTime = a}) . mapping _Time

-- | The time at which fast snapshot restores entered the @enabled@ state.
dEnabledTime :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dEnabledTime = lens _dEnabledTime (\s a -> s {_dEnabledTime = a}) . mapping _Time

-- | The time at which fast snapshot restores entered the @disabled@ state.
dDisabledTime :: Lens' DescribeFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dDisabledTime = lens _dDisabledTime (\s a -> s {_dDisabledTime = a}) . mapping _Time

instance
  FromXML
    DescribeFastSnapshotRestoreSuccessItem
  where
  parseXML x =
    DescribeFastSnapshotRestoreSuccessItem'
      <$> (x .@? "ownerAlias")
      <*> (x .@? "ownerId")
      <*> (x .@? "stateTransitionReason")
      <*> (x .@? "optimizingTime")
      <*> (x .@? "state")
      <*> (x .@? "availabilityZone")
      <*> (x .@? "disablingTime")
      <*> (x .@? "snapshotId")
      <*> (x .@? "enablingTime")
      <*> (x .@? "enabledTime")
      <*> (x .@? "disabledTime")

instance
  Hashable
    DescribeFastSnapshotRestoreSuccessItem

instance
  NFData
    DescribeFastSnapshotRestoreSuccessItem
