{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneDesiredState
  ( AutoTuneDesiredState
      ( ..,
        ATDSDisabled,
        ATDSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.
data AutoTuneDesiredState
  = AutoTuneDesiredState'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ATDSDisabled :: AutoTuneDesiredState
pattern ATDSDisabled = AutoTuneDesiredState' "DISABLED"

pattern ATDSEnabled :: AutoTuneDesiredState
pattern ATDSEnabled = AutoTuneDesiredState' "ENABLED"

{-# COMPLETE
  ATDSDisabled,
  ATDSEnabled,
  AutoTuneDesiredState'
  #-}

instance FromText AutoTuneDesiredState where
  parser = (AutoTuneDesiredState' . mk) <$> takeText

instance ToText AutoTuneDesiredState where
  toText (AutoTuneDesiredState' ci) = original ci

instance Hashable AutoTuneDesiredState

instance NFData AutoTuneDesiredState

instance ToByteString AutoTuneDesiredState

instance ToQuery AutoTuneDesiredState

instance ToHeader AutoTuneDesiredState

instance ToJSON AutoTuneDesiredState where
  toJSON = toJSONText

instance FromJSON AutoTuneDesiredState where
  parseJSON = parseJSONText "AutoTuneDesiredState"
