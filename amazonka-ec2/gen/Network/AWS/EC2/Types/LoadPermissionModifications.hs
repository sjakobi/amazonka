{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.LoadPermissionModifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LoadPermissionModifications where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.LoadPermissionRequest
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes modifications to the load permissions of an Amazon FPGA image (AFI).
--
--
--
-- /See:/ 'loadPermissionModifications' smart constructor.
data LoadPermissionModifications = LoadPermissionModifications'
  { _lAdd ::
      !( Maybe
           [LoadPermissionRequest]
       ),
    _lRemove ::
      !( Maybe
           [LoadPermissionRequest]
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

-- | Creates a value of 'LoadPermissionModifications' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lAdd' - The load permissions to add.
--
-- * 'lRemove' - The load permissions to remove.
loadPermissionModifications ::
  LoadPermissionModifications
loadPermissionModifications =
  LoadPermissionModifications'
    { _lAdd = Nothing,
      _lRemove = Nothing
    }

-- | The load permissions to add.
lAdd :: Lens' LoadPermissionModifications [LoadPermissionRequest]
lAdd = lens _lAdd (\s a -> s {_lAdd = a}) . _Default . _Coerce

-- | The load permissions to remove.
lRemove :: Lens' LoadPermissionModifications [LoadPermissionRequest]
lRemove = lens _lRemove (\s a -> s {_lRemove = a}) . _Default . _Coerce

instance Hashable LoadPermissionModifications

instance NFData LoadPermissionModifications

instance ToQuery LoadPermissionModifications where
  toQuery LoadPermissionModifications' {..} =
    mconcat
      [ toQuery (toQueryList "Add" <$> _lAdd),
        toQuery (toQueryList "Remove" <$> _lRemove)
      ]
