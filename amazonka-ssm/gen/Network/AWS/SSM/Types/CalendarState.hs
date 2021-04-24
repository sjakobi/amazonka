{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CalendarState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CalendarState
  ( CalendarState
      ( ..,
        Closed,
        Open
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CalendarState = CalendarState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Closed :: CalendarState
pattern Closed = CalendarState' "CLOSED"

pattern Open :: CalendarState
pattern Open = CalendarState' "OPEN"

{-# COMPLETE
  Closed,
  Open,
  CalendarState'
  #-}

instance FromText CalendarState where
  parser = (CalendarState' . mk) <$> takeText

instance ToText CalendarState where
  toText (CalendarState' ci) = original ci

instance Hashable CalendarState

instance NFData CalendarState

instance ToByteString CalendarState

instance ToQuery CalendarState

instance ToHeader CalendarState

instance FromJSON CalendarState where
  parseJSON = parseJSONText "CalendarState"
