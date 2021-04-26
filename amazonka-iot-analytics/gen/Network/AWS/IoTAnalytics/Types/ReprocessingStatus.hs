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
-- Module      : Network.AWS.IoTAnalytics.Types.ReprocessingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ReprocessingStatus
  ( ReprocessingStatus
      ( ..,
        ReprocessingStatusCANCELLED,
        ReprocessingStatusFAILED,
        ReprocessingStatusRUNNING,
        ReprocessingStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReprocessingStatus = ReprocessingStatus'
  { fromReprocessingStatus ::
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

pattern ReprocessingStatusCANCELLED :: ReprocessingStatus
pattern ReprocessingStatusCANCELLED = ReprocessingStatus' "CANCELLED"

pattern ReprocessingStatusFAILED :: ReprocessingStatus
pattern ReprocessingStatusFAILED = ReprocessingStatus' "FAILED"

pattern ReprocessingStatusRUNNING :: ReprocessingStatus
pattern ReprocessingStatusRUNNING = ReprocessingStatus' "RUNNING"

pattern ReprocessingStatusSUCCEEDED :: ReprocessingStatus
pattern ReprocessingStatusSUCCEEDED = ReprocessingStatus' "SUCCEEDED"

{-# COMPLETE
  ReprocessingStatusCANCELLED,
  ReprocessingStatusFAILED,
  ReprocessingStatusRUNNING,
  ReprocessingStatusSUCCEEDED,
  ReprocessingStatus'
  #-}

instance Prelude.FromText ReprocessingStatus where
  parser = ReprocessingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReprocessingStatus where
  toText (ReprocessingStatus' x) = x

instance Prelude.Hashable ReprocessingStatus

instance Prelude.NFData ReprocessingStatus

instance Prelude.ToByteString ReprocessingStatus

instance Prelude.ToQuery ReprocessingStatus

instance Prelude.ToHeader ReprocessingStatus

instance Prelude.FromJSON ReprocessingStatus where
  parseJSON = Prelude.parseJSONText "ReprocessingStatus"
