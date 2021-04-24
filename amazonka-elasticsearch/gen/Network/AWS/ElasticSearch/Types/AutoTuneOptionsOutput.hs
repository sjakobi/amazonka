{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneOptionsOutput where

import Network.AWS.ElasticSearch.Types.AutoTuneState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.
--
--
--
-- /See:/ 'autoTuneOptionsOutput' smart constructor.
data AutoTuneOptionsOutput = AutoTuneOptionsOutput'
  { _atooState ::
      !(Maybe AutoTuneState),
    _atooErrorMessage ::
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

-- | Creates a value of 'AutoTuneOptionsOutput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atooState' - Specifies the @AutoTuneState@ for the Elasticsearch domain.
--
-- * 'atooErrorMessage' - Specifies the error message while enabling or disabling the Auto-Tune.
autoTuneOptionsOutput ::
  AutoTuneOptionsOutput
autoTuneOptionsOutput =
  AutoTuneOptionsOutput'
    { _atooState = Nothing,
      _atooErrorMessage = Nothing
    }

-- | Specifies the @AutoTuneState@ for the Elasticsearch domain.
atooState :: Lens' AutoTuneOptionsOutput (Maybe AutoTuneState)
atooState = lens _atooState (\s a -> s {_atooState = a})

-- | Specifies the error message while enabling or disabling the Auto-Tune.
atooErrorMessage :: Lens' AutoTuneOptionsOutput (Maybe Text)
atooErrorMessage = lens _atooErrorMessage (\s a -> s {_atooErrorMessage = a})

instance FromJSON AutoTuneOptionsOutput where
  parseJSON =
    withObject
      "AutoTuneOptionsOutput"
      ( \x ->
          AutoTuneOptionsOutput'
            <$> (x .:? "State") <*> (x .:? "ErrorMessage")
      )

instance Hashable AutoTuneOptionsOutput

instance NFData AutoTuneOptionsOutput
