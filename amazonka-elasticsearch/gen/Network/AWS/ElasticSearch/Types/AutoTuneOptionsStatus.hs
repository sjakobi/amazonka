{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptionsStatus where

import Network.AWS.ElasticSearch.Types.AutoTuneOptions
import Network.AWS.ElasticSearch.Types.AutoTuneStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status of Auto-Tune options for the specified Elasticsearch domain.
--
--
--
-- /See:/ 'autoTuneOptionsStatus' smart constructor.
data AutoTuneOptionsStatus = AutoTuneOptionsStatus'
  { _atosStatus ::
      !(Maybe AutoTuneStatus),
    _atosOptions ::
      !(Maybe AutoTuneOptions)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutoTuneOptionsStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atosStatus' - Specifies Status of the Auto-Tune options for the specified Elasticsearch domain.
--
-- * 'atosOptions' - Specifies Auto-Tune options for the specified Elasticsearch domain.
autoTuneOptionsStatus ::
  AutoTuneOptionsStatus
autoTuneOptionsStatus =
  AutoTuneOptionsStatus'
    { _atosStatus = Nothing,
      _atosOptions = Nothing
    }

-- | Specifies Status of the Auto-Tune options for the specified Elasticsearch domain.
atosStatus :: Lens' AutoTuneOptionsStatus (Maybe AutoTuneStatus)
atosStatus = lens _atosStatus (\s a -> s {_atosStatus = a})

-- | Specifies Auto-Tune options for the specified Elasticsearch domain.
atosOptions :: Lens' AutoTuneOptionsStatus (Maybe AutoTuneOptions)
atosOptions = lens _atosOptions (\s a -> s {_atosOptions = a})

instance FromJSON AutoTuneOptionsStatus where
  parseJSON =
    withObject
      "AutoTuneOptionsStatus"
      ( \x ->
          AutoTuneOptionsStatus'
            <$> (x .:? "Status") <*> (x .:? "Options")
      )

instance Hashable AutoTuneOptionsStatus

instance NFData AutoTuneOptionsStatus
