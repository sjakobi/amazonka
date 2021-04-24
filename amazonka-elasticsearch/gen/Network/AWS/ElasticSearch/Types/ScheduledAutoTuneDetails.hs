{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ScheduledAutoTuneDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ScheduledAutoTuneDetails where

import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies details of the scheduled Auto-Tune action. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
--
--
-- /See:/ 'scheduledAutoTuneDetails' smart constructor.
data ScheduledAutoTuneDetails = ScheduledAutoTuneDetails'
  { _satdActionType ::
      !( Maybe
           ScheduledAutoTuneActionType
       ),
    _satdSeverity ::
      !( Maybe
           ScheduledAutoTuneSeverityType
       ),
    _satdDate ::
      !(Maybe POSIX),
    _satdAction ::
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

-- | Creates a value of 'ScheduledAutoTuneDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'satdActionType' - Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING.
--
-- * 'satdSeverity' - Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH.
--
-- * 'satdDate' - Specifies timestamp for the Auto-Tune action scheduled for the domain.
--
-- * 'satdAction' - Specifies Auto-Tune action description.
scheduledAutoTuneDetails ::
  ScheduledAutoTuneDetails
scheduledAutoTuneDetails =
  ScheduledAutoTuneDetails'
    { _satdActionType =
        Nothing,
      _satdSeverity = Nothing,
      _satdDate = Nothing,
      _satdAction = Nothing
    }

-- | Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING.
satdActionType :: Lens' ScheduledAutoTuneDetails (Maybe ScheduledAutoTuneActionType)
satdActionType = lens _satdActionType (\s a -> s {_satdActionType = a})

-- | Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH.
satdSeverity :: Lens' ScheduledAutoTuneDetails (Maybe ScheduledAutoTuneSeverityType)
satdSeverity = lens _satdSeverity (\s a -> s {_satdSeverity = a})

-- | Specifies timestamp for the Auto-Tune action scheduled for the domain.
satdDate :: Lens' ScheduledAutoTuneDetails (Maybe UTCTime)
satdDate = lens _satdDate (\s a -> s {_satdDate = a}) . mapping _Time

-- | Specifies Auto-Tune action description.
satdAction :: Lens' ScheduledAutoTuneDetails (Maybe Text)
satdAction = lens _satdAction (\s a -> s {_satdAction = a})

instance FromJSON ScheduledAutoTuneDetails where
  parseJSON =
    withObject
      "ScheduledAutoTuneDetails"
      ( \x ->
          ScheduledAutoTuneDetails'
            <$> (x .:? "ActionType")
            <*> (x .:? "Severity")
            <*> (x .:? "Date")
            <*> (x .:? "Action")
      )

instance Hashable ScheduledAutoTuneDetails

instance NFData ScheduledAutoTuneDetails
