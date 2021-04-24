{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LaunchPermissionModifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchPermissionModifications where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.LaunchPermission
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a launch permission modification.
--
--
--
-- /See:/ 'launchPermissionModifications' smart constructor.
data LaunchPermissionModifications = LaunchPermissionModifications'
  { _lpmAdd ::
      !( Maybe
           [LaunchPermission]
       ),
    _lpmRemove ::
      !( Maybe
           [LaunchPermission]
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

-- | Creates a value of 'LaunchPermissionModifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpmAdd' - The AWS account ID to add to the list of launch permissions for the AMI.
--
-- * 'lpmRemove' - The AWS account ID to remove from the list of launch permissions for the AMI.
launchPermissionModifications ::
  LaunchPermissionModifications
launchPermissionModifications =
  LaunchPermissionModifications'
    { _lpmAdd = Nothing,
      _lpmRemove = Nothing
    }

-- | The AWS account ID to add to the list of launch permissions for the AMI.
lpmAdd :: Lens' LaunchPermissionModifications [LaunchPermission]
lpmAdd = lens _lpmAdd (\s a -> s {_lpmAdd = a}) . _Default . _Coerce

-- | The AWS account ID to remove from the list of launch permissions for the AMI.
lpmRemove :: Lens' LaunchPermissionModifications [LaunchPermission]
lpmRemove = lens _lpmRemove (\s a -> s {_lpmRemove = a}) . _Default . _Coerce

instance Hashable LaunchPermissionModifications

instance NFData LaunchPermissionModifications

instance ToQuery LaunchPermissionModifications where
  toQuery LaunchPermissionModifications' {..} =
    mconcat
      [ toQuery (toQueryList "Add" <$> _lpmAdd),
        toQuery (toQueryList "Remove" <$> _lpmRemove)
      ]
