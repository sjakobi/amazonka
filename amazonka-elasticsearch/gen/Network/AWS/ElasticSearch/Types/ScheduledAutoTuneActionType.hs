{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ScheduledAutoTuneActionType
  ( ScheduledAutoTuneActionType
      ( ..,
        JVMHeapSizeTuning,
        JVMYoungGenTuning
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING.
data ScheduledAutoTuneActionType
  = ScheduledAutoTuneActionType'
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

pattern JVMHeapSizeTuning :: ScheduledAutoTuneActionType
pattern JVMHeapSizeTuning = ScheduledAutoTuneActionType' "JVM_HEAP_SIZE_TUNING"

pattern JVMYoungGenTuning :: ScheduledAutoTuneActionType
pattern JVMYoungGenTuning = ScheduledAutoTuneActionType' "JVM_YOUNG_GEN_TUNING"

{-# COMPLETE
  JVMHeapSizeTuning,
  JVMYoungGenTuning,
  ScheduledAutoTuneActionType'
  #-}

instance FromText ScheduledAutoTuneActionType where
  parser = (ScheduledAutoTuneActionType' . mk) <$> takeText

instance ToText ScheduledAutoTuneActionType where
  toText (ScheduledAutoTuneActionType' ci) = original ci

instance Hashable ScheduledAutoTuneActionType

instance NFData ScheduledAutoTuneActionType

instance ToByteString ScheduledAutoTuneActionType

instance ToQuery ScheduledAutoTuneActionType

instance ToHeader ScheduledAutoTuneActionType

instance FromJSON ScheduledAutoTuneActionType where
  parseJSON = parseJSONText "ScheduledAutoTuneActionType"
