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
-- Module      : Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
  ( PointInTimeRecoveryStatus
      ( ..,
        PointInTimeRecoveryStatusDISABLED,
        PointInTimeRecoveryStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PointInTimeRecoveryStatus = PointInTimeRecoveryStatus'
  { fromPointInTimeRecoveryStatus ::
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

pattern PointInTimeRecoveryStatusDISABLED :: PointInTimeRecoveryStatus
pattern PointInTimeRecoveryStatusDISABLED = PointInTimeRecoveryStatus' "DISABLED"

pattern PointInTimeRecoveryStatusENABLED :: PointInTimeRecoveryStatus
pattern PointInTimeRecoveryStatusENABLED = PointInTimeRecoveryStatus' "ENABLED"

{-# COMPLETE
  PointInTimeRecoveryStatusDISABLED,
  PointInTimeRecoveryStatusENABLED,
  PointInTimeRecoveryStatus'
  #-}

instance Prelude.FromText PointInTimeRecoveryStatus where
  parser = PointInTimeRecoveryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PointInTimeRecoveryStatus where
  toText (PointInTimeRecoveryStatus' x) = x

instance Prelude.Hashable PointInTimeRecoveryStatus

instance Prelude.NFData PointInTimeRecoveryStatus

instance Prelude.ToByteString PointInTimeRecoveryStatus

instance Prelude.ToQuery PointInTimeRecoveryStatus

instance Prelude.ToHeader PointInTimeRecoveryStatus

instance Prelude.FromJSON PointInTimeRecoveryStatus where
  parseJSON = Prelude.parseJSONText "PointInTimeRecoveryStatus"
