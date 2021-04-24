{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptionsInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptionsInput where

import Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
import Network.AWS.ElasticSearch.Types.AutoTuneMaintenanceSchedule
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.
--
--
--
-- /See:/ 'autoTuneOptionsInput' smart constructor.
data AutoTuneOptionsInput = AutoTuneOptionsInput'
  { _atoiDesiredState ::
      !(Maybe AutoTuneDesiredState),
    _atoiMaintenanceSchedules ::
      !( Maybe
           [AutoTuneMaintenanceSchedule]
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoTuneOptionsInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atoiDesiredState' - Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.
--
-- * 'atoiMaintenanceSchedules' - Specifies list of maitenance schedules. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
autoTuneOptionsInput ::
  AutoTuneOptionsInput
autoTuneOptionsInput =
  AutoTuneOptionsInput'
    { _atoiDesiredState = Nothing,
      _atoiMaintenanceSchedules = Nothing
    }

-- | Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.
atoiDesiredState :: Lens' AutoTuneOptionsInput (Maybe AutoTuneDesiredState)
atoiDesiredState = lens _atoiDesiredState (\s a -> s {_atoiDesiredState = a})

-- | Specifies list of maitenance schedules. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
atoiMaintenanceSchedules :: Lens' AutoTuneOptionsInput [AutoTuneMaintenanceSchedule]
atoiMaintenanceSchedules = lens _atoiMaintenanceSchedules (\s a -> s {_atoiMaintenanceSchedules = a}) . _Default . _Coerce

instance Hashable AutoTuneOptionsInput

instance NFData AutoTuneOptionsInput

instance ToJSON AutoTuneOptionsInput where
  toJSON AutoTuneOptionsInput' {..} =
    object
      ( catMaybes
          [ ("DesiredState" .=) <$> _atoiDesiredState,
            ("MaintenanceSchedules" .=)
              <$> _atoiMaintenanceSchedules
          ]
      )
