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
-- Module      : Network.AWS.Shield.Types.ProactiveEngagementStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProactiveEngagementStatus
  ( ProactiveEngagementStatus
      ( ..,
        ProactiveEngagementStatusDISABLED,
        ProactiveEngagementStatusENABLED,
        ProactiveEngagementStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProactiveEngagementStatus = ProactiveEngagementStatus'
  { fromProactiveEngagementStatus ::
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

pattern ProactiveEngagementStatusDISABLED :: ProactiveEngagementStatus
pattern ProactiveEngagementStatusDISABLED = ProactiveEngagementStatus' "DISABLED"

pattern ProactiveEngagementStatusENABLED :: ProactiveEngagementStatus
pattern ProactiveEngagementStatusENABLED = ProactiveEngagementStatus' "ENABLED"

pattern ProactiveEngagementStatusPENDING :: ProactiveEngagementStatus
pattern ProactiveEngagementStatusPENDING = ProactiveEngagementStatus' "PENDING"

{-# COMPLETE
  ProactiveEngagementStatusDISABLED,
  ProactiveEngagementStatusENABLED,
  ProactiveEngagementStatusPENDING,
  ProactiveEngagementStatus'
  #-}

instance Prelude.FromText ProactiveEngagementStatus where
  parser = ProactiveEngagementStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProactiveEngagementStatus where
  toText (ProactiveEngagementStatus' x) = x

instance Prelude.Hashable ProactiveEngagementStatus

instance Prelude.NFData ProactiveEngagementStatus

instance Prelude.ToByteString ProactiveEngagementStatus

instance Prelude.ToQuery ProactiveEngagementStatus

instance Prelude.ToHeader ProactiveEngagementStatus

instance Prelude.FromJSON ProactiveEngagementStatus where
  parseJSON = Prelude.parseJSONText "ProactiveEngagementStatus"
