{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneMaintenanceSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneMaintenanceSchedule where

import Network.AWS.ElasticSearch.Types.Duration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies Auto-Tune maitenance schedule. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
--
--
-- /See:/ 'autoTuneMaintenanceSchedule' smart constructor.
data AutoTuneMaintenanceSchedule = AutoTuneMaintenanceSchedule'
  { _atmsDuration ::
      !( Maybe
           Duration
       ),
    _atmsStartAt ::
      !(Maybe POSIX),
    _atmsCronExpressionForRecurrence ::
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

-- | Creates a value of 'AutoTuneMaintenanceSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atmsDuration' - Specifies maintenance schedule duration: duration value and duration unit. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
-- * 'atmsStartAt' - Specifies timestamp at which Auto-Tune maintenance schedule start.
--
-- * 'atmsCronExpressionForRecurrence' - Specifies cron expression for a recurring maintenance schedule. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
autoTuneMaintenanceSchedule ::
  AutoTuneMaintenanceSchedule
autoTuneMaintenanceSchedule =
  AutoTuneMaintenanceSchedule'
    { _atmsDuration =
        Nothing,
      _atmsStartAt = Nothing,
      _atmsCronExpressionForRecurrence = Nothing
    }

-- | Specifies maintenance schedule duration: duration value and duration unit. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
atmsDuration :: Lens' AutoTuneMaintenanceSchedule (Maybe Duration)
atmsDuration = lens _atmsDuration (\s a -> s {_atmsDuration = a})

-- | Specifies timestamp at which Auto-Tune maintenance schedule start.
atmsStartAt :: Lens' AutoTuneMaintenanceSchedule (Maybe UTCTime)
atmsStartAt = lens _atmsStartAt (\s a -> s {_atmsStartAt = a}) . mapping _Time

-- | Specifies cron expression for a recurring maintenance schedule. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
atmsCronExpressionForRecurrence :: Lens' AutoTuneMaintenanceSchedule (Maybe Text)
atmsCronExpressionForRecurrence = lens _atmsCronExpressionForRecurrence (\s a -> s {_atmsCronExpressionForRecurrence = a})

instance FromJSON AutoTuneMaintenanceSchedule where
  parseJSON =
    withObject
      "AutoTuneMaintenanceSchedule"
      ( \x ->
          AutoTuneMaintenanceSchedule'
            <$> (x .:? "Duration")
            <*> (x .:? "StartAt")
            <*> (x .:? "CronExpressionForRecurrence")
      )

instance Hashable AutoTuneMaintenanceSchedule

instance NFData AutoTuneMaintenanceSchedule

instance ToJSON AutoTuneMaintenanceSchedule where
  toJSON AutoTuneMaintenanceSchedule' {..} =
    object
      ( catMaybes
          [ ("Duration" .=) <$> _atmsDuration,
            ("StartAt" .=) <$> _atmsStartAt,
            ("CronExpressionForRecurrence" .=)
              <$> _atmsCronExpressionForRecurrence
          ]
      )
