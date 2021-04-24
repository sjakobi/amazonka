{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneType
  ( AutoTuneType
      ( ..,
        ScheduledAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION.
data AutoTuneType = AutoTuneType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ScheduledAction :: AutoTuneType
pattern ScheduledAction = AutoTuneType' "SCHEDULED_ACTION"

{-# COMPLETE
  ScheduledAction,
  AutoTuneType'
  #-}

instance FromText AutoTuneType where
  parser = (AutoTuneType' . mk) <$> takeText

instance ToText AutoTuneType where
  toText (AutoTuneType' ci) = original ci

instance Hashable AutoTuneType

instance NFData AutoTuneType

instance ToByteString AutoTuneType

instance ToQuery AutoTuneType

instance ToHeader AutoTuneType

instance FromJSON AutoTuneType where
  parseJSON = parseJSONText "AutoTuneType"
