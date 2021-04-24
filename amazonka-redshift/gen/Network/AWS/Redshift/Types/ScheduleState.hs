{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ScheduleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduleState
  ( ScheduleState
      ( ..,
        SSActive,
        SSFailed,
        SSModifying
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data ScheduleState = ScheduleState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSActive :: ScheduleState
pattern SSActive = ScheduleState' "ACTIVE"

pattern SSFailed :: ScheduleState
pattern SSFailed = ScheduleState' "FAILED"

pattern SSModifying :: ScheduleState
pattern SSModifying = ScheduleState' "MODIFYING"

{-# COMPLETE
  SSActive,
  SSFailed,
  SSModifying,
  ScheduleState'
  #-}

instance FromText ScheduleState where
  parser = (ScheduleState' . mk) <$> takeText

instance ToText ScheduleState where
  toText (ScheduleState' ci) = original ci

instance Hashable ScheduleState

instance NFData ScheduleState

instance ToByteString ScheduleState

instance ToQuery ScheduleState

instance ToHeader ScheduleState

instance FromXML ScheduleState where
  parseXML = parseXMLText "ScheduleState"
