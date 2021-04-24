{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.ConformancePackState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.ConformancePackState
  ( ConformancePackState
      ( ..,
        CPSCreateComplete,
        CPSCreateFailed,
        CPSCreateInProgress,
        CPSDeleteFailed,
        CPSDeleteInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConformancePackState
  = ConformancePackState'
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

pattern CPSCreateComplete :: ConformancePackState
pattern CPSCreateComplete = ConformancePackState' "CREATE_COMPLETE"

pattern CPSCreateFailed :: ConformancePackState
pattern CPSCreateFailed = ConformancePackState' "CREATE_FAILED"

pattern CPSCreateInProgress :: ConformancePackState
pattern CPSCreateInProgress = ConformancePackState' "CREATE_IN_PROGRESS"

pattern CPSDeleteFailed :: ConformancePackState
pattern CPSDeleteFailed = ConformancePackState' "DELETE_FAILED"

pattern CPSDeleteInProgress :: ConformancePackState
pattern CPSDeleteInProgress = ConformancePackState' "DELETE_IN_PROGRESS"

{-# COMPLETE
  CPSCreateComplete,
  CPSCreateFailed,
  CPSCreateInProgress,
  CPSDeleteFailed,
  CPSDeleteInProgress,
  ConformancePackState'
  #-}

instance FromText ConformancePackState where
  parser = (ConformancePackState' . mk) <$> takeText

instance ToText ConformancePackState where
  toText (ConformancePackState' ci) = original ci

instance Hashable ConformancePackState

instance NFData ConformancePackState

instance ToByteString ConformancePackState

instance ToQuery ConformancePackState

instance ToHeader ConformancePackState

instance FromJSON ConformancePackState where
  parseJSON = parseJSONText "ConformancePackState"
