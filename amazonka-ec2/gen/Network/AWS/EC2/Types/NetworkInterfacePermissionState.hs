{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInterfacePermissionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInterfacePermissionState where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.NetworkInterfacePermissionStateCode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the state of a network interface permission.
--
--
--
-- /See:/ 'networkInterfacePermissionState' smart constructor.
data NetworkInterfacePermissionState = NetworkInterfacePermissionState'
  { _nipsStatusMessage ::
      !( Maybe
           Text
       ),
    _nipsState ::
      !( Maybe
           NetworkInterfacePermissionStateCode
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

-- | Creates a value of 'NetworkInterfacePermissionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nipsStatusMessage' - A status message, if applicable.
--
-- * 'nipsState' - The state of the permission.
networkInterfacePermissionState ::
  NetworkInterfacePermissionState
networkInterfacePermissionState =
  NetworkInterfacePermissionState'
    { _nipsStatusMessage =
        Nothing,
      _nipsState = Nothing
    }

-- | A status message, if applicable.
nipsStatusMessage :: Lens' NetworkInterfacePermissionState (Maybe Text)
nipsStatusMessage = lens _nipsStatusMessage (\s a -> s {_nipsStatusMessage = a})

-- | The state of the permission.
nipsState :: Lens' NetworkInterfacePermissionState (Maybe NetworkInterfacePermissionStateCode)
nipsState = lens _nipsState (\s a -> s {_nipsState = a})

instance FromXML NetworkInterfacePermissionState where
  parseXML x =
    NetworkInterfacePermissionState'
      <$> (x .@? "statusMessage") <*> (x .@? "state")

instance Hashable NetworkInterfacePermissionState

instance NFData NetworkInterfacePermissionState
