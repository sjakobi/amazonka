{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ScheduledInstancesPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ScheduledInstancesPlacement where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the placement for a Scheduled Instance.
--
--
--
-- /See:/ 'scheduledInstancesPlacement' smart constructor.
data ScheduledInstancesPlacement = ScheduledInstancesPlacement'
  { _sipGroupName ::
      !(Maybe Text),
    _sipAvailabilityZone ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ScheduledInstancesPlacement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sipGroupName' - The name of the placement group.
--
-- * 'sipAvailabilityZone' - The Availability Zone.
scheduledInstancesPlacement ::
  ScheduledInstancesPlacement
scheduledInstancesPlacement =
  ScheduledInstancesPlacement'
    { _sipGroupName =
        Nothing,
      _sipAvailabilityZone = Nothing
    }

-- | The name of the placement group.
sipGroupName :: Lens' ScheduledInstancesPlacement (Maybe Text)
sipGroupName = lens _sipGroupName (\s a -> s {_sipGroupName = a})

-- | The Availability Zone.
sipAvailabilityZone :: Lens' ScheduledInstancesPlacement (Maybe Text)
sipAvailabilityZone = lens _sipAvailabilityZone (\s a -> s {_sipAvailabilityZone = a})

instance Hashable ScheduledInstancesPlacement

instance NFData ScheduledInstancesPlacement

instance ToQuery ScheduledInstancesPlacement where
  toQuery ScheduledInstancesPlacement' {..} =
    mconcat
      [ "GroupName" =: _sipGroupName,
        "AvailabilityZone" =: _sipAvailabilityZone
      ]
