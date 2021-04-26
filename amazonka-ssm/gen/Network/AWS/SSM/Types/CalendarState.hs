{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CalendarStateCLOSED,
        CalendarStateOPEN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CalendarState = CalendarState'
  { fromCalendarState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CalendarStateCLOSED :: CalendarState
pattern CalendarStateCLOSED = CalendarState' "CLOSED"

pattern CalendarStateOPEN :: CalendarState
pattern CalendarStateOPEN = CalendarState' "OPEN"

{-# COMPLETE
  CalendarStateCLOSED,
  CalendarStateOPEN,
  CalendarState'
  #-}

instance Prelude.FromText CalendarState where
  parser = CalendarState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CalendarState where
  toText (CalendarState' x) = x

instance Prelude.Hashable CalendarState

instance Prelude.NFData CalendarState

instance Prelude.ToByteString CalendarState

instance Prelude.ToQuery CalendarState

instance Prelude.ToHeader CalendarState

instance Prelude.FromJSON CalendarState where
  parseJSON = Prelude.parseJSONText "CalendarState"
