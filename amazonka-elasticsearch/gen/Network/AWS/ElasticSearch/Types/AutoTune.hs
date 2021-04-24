{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTune
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTune where

import Network.AWS.ElasticSearch.Types.AutoTuneDetails
import Network.AWS.ElasticSearch.Types.AutoTuneType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies Auto-Tune type and Auto-Tune action details.
--
--
--
-- /See:/ 'autoTune' smart constructor.
data AutoTune = AutoTune'
  { _atAutoTuneType ::
      !(Maybe AutoTuneType),
    _atAutoTuneDetails :: !(Maybe AutoTuneDetails)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoTune' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atAutoTuneType' - Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION.
--
-- * 'atAutoTuneDetails' - Specifies details of the Auto-Tune action. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
autoTune ::
  AutoTune
autoTune =
  AutoTune'
    { _atAutoTuneType = Nothing,
      _atAutoTuneDetails = Nothing
    }

-- | Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION.
atAutoTuneType :: Lens' AutoTune (Maybe AutoTuneType)
atAutoTuneType = lens _atAutoTuneType (\s a -> s {_atAutoTuneType = a})

-- | Specifies details of the Auto-Tune action. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
atAutoTuneDetails :: Lens' AutoTune (Maybe AutoTuneDetails)
atAutoTuneDetails = lens _atAutoTuneDetails (\s a -> s {_atAutoTuneDetails = a})

instance FromJSON AutoTune where
  parseJSON =
    withObject
      "AutoTune"
      ( \x ->
          AutoTune'
            <$> (x .:? "AutoTuneType") <*> (x .:? "AutoTuneDetails")
      )

instance Hashable AutoTune

instance NFData AutoTune
