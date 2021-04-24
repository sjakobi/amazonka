{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DisableFastSnapshotRestoreSuccessItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DisableFastSnapshotRestoreSuccessItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.FastSnapshotRestoreStateCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes fast snapshot restores that were successfully disabled.
--
--
--
-- /See:/ 'disableFastSnapshotRestoreSuccessItem' smart constructor.
data DisableFastSnapshotRestoreSuccessItem = DisableFastSnapshotRestoreSuccessItem'
  { _dfsrsiOwnerAlias ::
      !( Maybe
           Text
       ),
    _dfsrsiOwnerId ::
      !( Maybe
           Text
       ),
    _dfsrsiStateTransitionReason ::
      !( Maybe
           Text
       ),
    _dfsrsiOptimizingTime ::
      !( Maybe
           ISO8601
       ),
    _dfsrsiState ::
      !( Maybe
           FastSnapshotRestoreStateCode
       ),
    _dfsrsiAvailabilityZone ::
      !( Maybe
           Text
       ),
    _dfsrsiDisablingTime ::
      !( Maybe
           ISO8601
       ),
    _dfsrsiSnapshotId ::
      !( Maybe
           Text
       ),
    _dfsrsiEnablingTime ::
      !( Maybe
           ISO8601
       ),
    _dfsrsiEnabledTime ::
      !( Maybe
           ISO8601
       ),
    _dfsrsiDisabledTime ::
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

-- | Creates a value of 'DisableFastSnapshotRestoreSuccessItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrsiOwnerAlias' - The AWS owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
--
-- * 'dfsrsiOwnerId' - The ID of the AWS account that enabled fast snapshot restores on the snapshot.
--
-- * 'dfsrsiStateTransitionReason' - The reason for the state transition. The possible values are as follows:     * @Client.UserInitiated@ - The state successfully transitioned to @enabling@ or @disabling@ .     * @Client.UserInitiated - Lifecycle state transition@ - The state successfully transitioned to @optimizing@ , @enabled@ , or @disabled@ .
--
-- * 'dfsrsiOptimizingTime' - The time at which fast snapshot restores entered the @optimizing@ state.
--
-- * 'dfsrsiState' - The state of fast snapshot restores for the snapshot.
--
-- * 'dfsrsiAvailabilityZone' - The Availability Zone.
--
-- * 'dfsrsiDisablingTime' - The time at which fast snapshot restores entered the @disabling@ state.
--
-- * 'dfsrsiSnapshotId' - The ID of the snapshot.
--
-- * 'dfsrsiEnablingTime' - The time at which fast snapshot restores entered the @enabling@ state.
--
-- * 'dfsrsiEnabledTime' - The time at which fast snapshot restores entered the @enabled@ state.
--
-- * 'dfsrsiDisabledTime' - The time at which fast snapshot restores entered the @disabled@ state.
disableFastSnapshotRestoreSuccessItem ::
  DisableFastSnapshotRestoreSuccessItem
disableFastSnapshotRestoreSuccessItem =
  DisableFastSnapshotRestoreSuccessItem'
    { _dfsrsiOwnerAlias =
        Nothing,
      _dfsrsiOwnerId = Nothing,
      _dfsrsiStateTransitionReason =
        Nothing,
      _dfsrsiOptimizingTime = Nothing,
      _dfsrsiState = Nothing,
      _dfsrsiAvailabilityZone = Nothing,
      _dfsrsiDisablingTime = Nothing,
      _dfsrsiSnapshotId = Nothing,
      _dfsrsiEnablingTime = Nothing,
      _dfsrsiEnabledTime = Nothing,
      _dfsrsiDisabledTime = Nothing
    }

-- | The AWS owner alias that enabled fast snapshot restores on the snapshot. This is intended for future use.
dfsrsiOwnerAlias :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe Text)
dfsrsiOwnerAlias = lens _dfsrsiOwnerAlias (\s a -> s {_dfsrsiOwnerAlias = a})

-- | The ID of the AWS account that enabled fast snapshot restores on the snapshot.
dfsrsiOwnerId :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe Text)
dfsrsiOwnerId = lens _dfsrsiOwnerId (\s a -> s {_dfsrsiOwnerId = a})

-- | The reason for the state transition. The possible values are as follows:     * @Client.UserInitiated@ - The state successfully transitioned to @enabling@ or @disabling@ .     * @Client.UserInitiated - Lifecycle state transition@ - The state successfully transitioned to @optimizing@ , @enabled@ , or @disabled@ .
dfsrsiStateTransitionReason :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe Text)
dfsrsiStateTransitionReason = lens _dfsrsiStateTransitionReason (\s a -> s {_dfsrsiStateTransitionReason = a})

-- | The time at which fast snapshot restores entered the @optimizing@ state.
dfsrsiOptimizingTime :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dfsrsiOptimizingTime = lens _dfsrsiOptimizingTime (\s a -> s {_dfsrsiOptimizingTime = a}) . mapping _Time

-- | The state of fast snapshot restores for the snapshot.
dfsrsiState :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe FastSnapshotRestoreStateCode)
dfsrsiState = lens _dfsrsiState (\s a -> s {_dfsrsiState = a})

-- | The Availability Zone.
dfsrsiAvailabilityZone :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe Text)
dfsrsiAvailabilityZone = lens _dfsrsiAvailabilityZone (\s a -> s {_dfsrsiAvailabilityZone = a})

-- | The time at which fast snapshot restores entered the @disabling@ state.
dfsrsiDisablingTime :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dfsrsiDisablingTime = lens _dfsrsiDisablingTime (\s a -> s {_dfsrsiDisablingTime = a}) . mapping _Time

-- | The ID of the snapshot.
dfsrsiSnapshotId :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe Text)
dfsrsiSnapshotId = lens _dfsrsiSnapshotId (\s a -> s {_dfsrsiSnapshotId = a})

-- | The time at which fast snapshot restores entered the @enabling@ state.
dfsrsiEnablingTime :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dfsrsiEnablingTime = lens _dfsrsiEnablingTime (\s a -> s {_dfsrsiEnablingTime = a}) . mapping _Time

-- | The time at which fast snapshot restores entered the @enabled@ state.
dfsrsiEnabledTime :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dfsrsiEnabledTime = lens _dfsrsiEnabledTime (\s a -> s {_dfsrsiEnabledTime = a}) . mapping _Time

-- | The time at which fast snapshot restores entered the @disabled@ state.
dfsrsiDisabledTime :: Lens' DisableFastSnapshotRestoreSuccessItem (Maybe UTCTime)
dfsrsiDisabledTime = lens _dfsrsiDisabledTime (\s a -> s {_dfsrsiDisabledTime = a}) . mapping _Time

instance
  FromXML
    DisableFastSnapshotRestoreSuccessItem
  where
  parseXML x =
    DisableFastSnapshotRestoreSuccessItem'
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
    DisableFastSnapshotRestoreSuccessItem

instance NFData DisableFastSnapshotRestoreSuccessItem
