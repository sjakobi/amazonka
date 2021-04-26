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
-- Module      : Network.AWS.CloudWatchEvents.Types.ArchiveState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ArchiveState
  ( ArchiveState
      ( ..,
        ArchiveStateCREATEFAILED,
        ArchiveStateCREATING,
        ArchiveStateDISABLED,
        ArchiveStateENABLED,
        ArchiveStateUPDATEFAILED,
        ArchiveStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArchiveState = ArchiveState'
  { fromArchiveState ::
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

pattern ArchiveStateCREATEFAILED :: ArchiveState
pattern ArchiveStateCREATEFAILED = ArchiveState' "CREATE_FAILED"

pattern ArchiveStateCREATING :: ArchiveState
pattern ArchiveStateCREATING = ArchiveState' "CREATING"

pattern ArchiveStateDISABLED :: ArchiveState
pattern ArchiveStateDISABLED = ArchiveState' "DISABLED"

pattern ArchiveStateENABLED :: ArchiveState
pattern ArchiveStateENABLED = ArchiveState' "ENABLED"

pattern ArchiveStateUPDATEFAILED :: ArchiveState
pattern ArchiveStateUPDATEFAILED = ArchiveState' "UPDATE_FAILED"

pattern ArchiveStateUPDATING :: ArchiveState
pattern ArchiveStateUPDATING = ArchiveState' "UPDATING"

{-# COMPLETE
  ArchiveStateCREATEFAILED,
  ArchiveStateCREATING,
  ArchiveStateDISABLED,
  ArchiveStateENABLED,
  ArchiveStateUPDATEFAILED,
  ArchiveStateUPDATING,
  ArchiveState'
  #-}

instance Prelude.FromText ArchiveState where
  parser = ArchiveState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArchiveState where
  toText (ArchiveState' x) = x

instance Prelude.Hashable ArchiveState

instance Prelude.NFData ArchiveState

instance Prelude.ToByteString ArchiveState

instance Prelude.ToQuery ArchiveState

instance Prelude.ToHeader ArchiveState

instance Prelude.ToJSON ArchiveState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArchiveState where
  parseJSON = Prelude.parseJSONText "ArchiveState"
