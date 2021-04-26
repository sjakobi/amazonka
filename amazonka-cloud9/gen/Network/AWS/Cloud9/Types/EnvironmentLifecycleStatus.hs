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
-- Module      : Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
  ( EnvironmentLifecycleStatus
      ( ..,
        EnvironmentLifecycleStatusCREATED,
        EnvironmentLifecycleStatusCREATEFAILED,
        EnvironmentLifecycleStatusCREATING,
        EnvironmentLifecycleStatusDELETEFAILED,
        EnvironmentLifecycleStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentLifecycleStatus = EnvironmentLifecycleStatus'
  { fromEnvironmentLifecycleStatus ::
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

pattern EnvironmentLifecycleStatusCREATED :: EnvironmentLifecycleStatus
pattern EnvironmentLifecycleStatusCREATED = EnvironmentLifecycleStatus' "CREATED"

pattern EnvironmentLifecycleStatusCREATEFAILED :: EnvironmentLifecycleStatus
pattern EnvironmentLifecycleStatusCREATEFAILED = EnvironmentLifecycleStatus' "CREATE_FAILED"

pattern EnvironmentLifecycleStatusCREATING :: EnvironmentLifecycleStatus
pattern EnvironmentLifecycleStatusCREATING = EnvironmentLifecycleStatus' "CREATING"

pattern EnvironmentLifecycleStatusDELETEFAILED :: EnvironmentLifecycleStatus
pattern EnvironmentLifecycleStatusDELETEFAILED = EnvironmentLifecycleStatus' "DELETE_FAILED"

pattern EnvironmentLifecycleStatusDELETING :: EnvironmentLifecycleStatus
pattern EnvironmentLifecycleStatusDELETING = EnvironmentLifecycleStatus' "DELETING"

{-# COMPLETE
  EnvironmentLifecycleStatusCREATED,
  EnvironmentLifecycleStatusCREATEFAILED,
  EnvironmentLifecycleStatusCREATING,
  EnvironmentLifecycleStatusDELETEFAILED,
  EnvironmentLifecycleStatusDELETING,
  EnvironmentLifecycleStatus'
  #-}

instance Prelude.FromText EnvironmentLifecycleStatus where
  parser = EnvironmentLifecycleStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentLifecycleStatus where
  toText (EnvironmentLifecycleStatus' x) = x

instance Prelude.Hashable EnvironmentLifecycleStatus

instance Prelude.NFData EnvironmentLifecycleStatus

instance Prelude.ToByteString EnvironmentLifecycleStatus

instance Prelude.ToQuery EnvironmentLifecycleStatus

instance Prelude.ToHeader EnvironmentLifecycleStatus

instance Prelude.FromJSON EnvironmentLifecycleStatus where
  parseJSON = Prelude.parseJSONText "EnvironmentLifecycleStatus"
