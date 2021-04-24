{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateErrorItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateErrorItem where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.DisableFastSnapshotRestoreStateError
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an error that occurred when disabling fast snapshot restores.
--
--
--
-- /See:/ 'disableFastSnapshotRestoreStateErrorItem' smart constructor.
data DisableFastSnapshotRestoreStateErrorItem = DisableFastSnapshotRestoreStateErrorItem'
  { _dfsrseiAvailabilityZone ::
      !( Maybe
           Text
       ),
    _dfsrseiError ::
      !( Maybe
           DisableFastSnapshotRestoreStateError
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

-- | Creates a value of 'DisableFastSnapshotRestoreStateErrorItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrseiAvailabilityZone' - The Availability Zone.
--
-- * 'dfsrseiError' - The error.
disableFastSnapshotRestoreStateErrorItem ::
  DisableFastSnapshotRestoreStateErrorItem
disableFastSnapshotRestoreStateErrorItem =
  DisableFastSnapshotRestoreStateErrorItem'
    { _dfsrseiAvailabilityZone =
        Nothing,
      _dfsrseiError = Nothing
    }

-- | The Availability Zone.
dfsrseiAvailabilityZone :: Lens' DisableFastSnapshotRestoreStateErrorItem (Maybe Text)
dfsrseiAvailabilityZone = lens _dfsrseiAvailabilityZone (\s a -> s {_dfsrseiAvailabilityZone = a})

-- | The error.
dfsrseiError :: Lens' DisableFastSnapshotRestoreStateErrorItem (Maybe DisableFastSnapshotRestoreStateError)
dfsrseiError = lens _dfsrseiError (\s a -> s {_dfsrseiError = a})

instance
  FromXML
    DisableFastSnapshotRestoreStateErrorItem
  where
  parseXML x =
    DisableFastSnapshotRestoreStateErrorItem'
      <$> (x .@? "availabilityZone") <*> (x .@? "error")

instance
  Hashable
    DisableFastSnapshotRestoreStateErrorItem

instance
  NFData
    DisableFastSnapshotRestoreStateErrorItem
