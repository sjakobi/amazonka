{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptions where

import Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
import Network.AWS.ElasticSearch.Types.AutoTuneMaintenanceSchedule
import Network.AWS.ElasticSearch.Types.RollbackOnDisable
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the Auto-Tune options: the Auto-Tune desired state for the domain, rollback state when disabling Auto-Tune options and list of maintenance schedules.
--
--
--
-- /See:/ 'autoTuneOptions' smart constructor.
data AutoTuneOptions = AutoTuneOptions'
  { _atoDesiredState ::
      !(Maybe AutoTuneDesiredState),
    _atoRollbackOnDisable ::
      !(Maybe RollbackOnDisable),
    _atoMaintenanceSchedules ::
      !(Maybe [AutoTuneMaintenanceSchedule])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoTuneOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atoDesiredState' - Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.
--
-- * 'atoRollbackOnDisable' - Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK.
--
-- * 'atoMaintenanceSchedules' - Specifies list of maitenance schedules. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
autoTuneOptions ::
  AutoTuneOptions
autoTuneOptions =
  AutoTuneOptions'
    { _atoDesiredState = Nothing,
      _atoRollbackOnDisable = Nothing,
      _atoMaintenanceSchedules = Nothing
    }

-- | Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.
atoDesiredState :: Lens' AutoTuneOptions (Maybe AutoTuneDesiredState)
atoDesiredState = lens _atoDesiredState (\s a -> s {_atoDesiredState = a})

-- | Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK.
atoRollbackOnDisable :: Lens' AutoTuneOptions (Maybe RollbackOnDisable)
atoRollbackOnDisable = lens _atoRollbackOnDisable (\s a -> s {_atoRollbackOnDisable = a})

-- | Specifies list of maitenance schedules. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
atoMaintenanceSchedules :: Lens' AutoTuneOptions [AutoTuneMaintenanceSchedule]
atoMaintenanceSchedules = lens _atoMaintenanceSchedules (\s a -> s {_atoMaintenanceSchedules = a}) . _Default . _Coerce

instance FromJSON AutoTuneOptions where
  parseJSON =
    withObject
      "AutoTuneOptions"
      ( \x ->
          AutoTuneOptions'
            <$> (x .:? "DesiredState")
            <*> (x .:? "RollbackOnDisable")
            <*> (x .:? "MaintenanceSchedules" .!= mempty)
      )

instance Hashable AutoTuneOptions

instance NFData AutoTuneOptions

instance ToJSON AutoTuneOptions where
  toJSON AutoTuneOptions' {..} =
    object
      ( catMaybes
          [ ("DesiredState" .=) <$> _atoDesiredState,
            ("RollbackOnDisable" .=) <$> _atoRollbackOnDisable,
            ("MaintenanceSchedules" .=)
              <$> _atoMaintenanceSchedules
          ]
      )
