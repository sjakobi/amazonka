{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.PendingMaintenanceAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PendingMaintenanceAction where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a pending database maintenance action.
--
--
--
-- /See:/ 'pendingMaintenanceAction' smart constructor.
data PendingMaintenanceAction = PendingMaintenanceAction'
  { _pmaCurrentApplyDate ::
      !(Maybe POSIX),
    _pmaAction ::
      !(Maybe Text),
    _pmaDescription ::
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

-- | Creates a value of 'PendingMaintenanceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmaCurrentApplyDate' - The effective date of the pending database maintenance action.
--
-- * 'pmaAction' - The type of pending database maintenance action.
--
-- * 'pmaDescription' - Additional detail about the pending database maintenance action.
pendingMaintenanceAction ::
  PendingMaintenanceAction
pendingMaintenanceAction =
  PendingMaintenanceAction'
    { _pmaCurrentApplyDate =
        Nothing,
      _pmaAction = Nothing,
      _pmaDescription = Nothing
    }

-- | The effective date of the pending database maintenance action.
pmaCurrentApplyDate :: Lens' PendingMaintenanceAction (Maybe UTCTime)
pmaCurrentApplyDate = lens _pmaCurrentApplyDate (\s a -> s {_pmaCurrentApplyDate = a}) . mapping _Time

-- | The type of pending database maintenance action.
pmaAction :: Lens' PendingMaintenanceAction (Maybe Text)
pmaAction = lens _pmaAction (\s a -> s {_pmaAction = a})

-- | Additional detail about the pending database maintenance action.
pmaDescription :: Lens' PendingMaintenanceAction (Maybe Text)
pmaDescription = lens _pmaDescription (\s a -> s {_pmaDescription = a})

instance FromJSON PendingMaintenanceAction where
  parseJSON =
    withObject
      "PendingMaintenanceAction"
      ( \x ->
          PendingMaintenanceAction'
            <$> (x .:? "currentApplyDate")
            <*> (x .:? "action")
            <*> (x .:? "description")
      )

instance Hashable PendingMaintenanceAction

instance NFData PendingMaintenanceAction
