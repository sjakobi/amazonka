{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneDetails where

import Network.AWS.ElasticSearch.Types.ScheduledAutoTuneDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies details of the Auto-Tune action. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
--
--
--
-- /See:/ 'autoTuneDetails' smart constructor.
newtype AutoTuneDetails = AutoTuneDetails'
  { _atdScheduledAutoTuneDetails ::
      Maybe ScheduledAutoTuneDetails
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AutoTuneDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atdScheduledAutoTuneDetails' - Undocumented member.
autoTuneDetails ::
  AutoTuneDetails
autoTuneDetails =
  AutoTuneDetails'
    { _atdScheduledAutoTuneDetails =
        Nothing
    }

-- | Undocumented member.
atdScheduledAutoTuneDetails :: Lens' AutoTuneDetails (Maybe ScheduledAutoTuneDetails)
atdScheduledAutoTuneDetails = lens _atdScheduledAutoTuneDetails (\s a -> s {_atdScheduledAutoTuneDetails = a})

instance FromJSON AutoTuneDetails where
  parseJSON =
    withObject
      "AutoTuneDetails"
      ( \x ->
          AutoTuneDetails'
            <$> (x .:? "ScheduledAutoTuneDetails")
      )

instance Hashable AutoTuneDetails

instance NFData AutoTuneDetails
