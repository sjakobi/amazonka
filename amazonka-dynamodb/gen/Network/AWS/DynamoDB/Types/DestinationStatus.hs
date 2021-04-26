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
-- Module      : Network.AWS.DynamoDB.Types.DestinationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.DestinationStatus
  ( DestinationStatus
      ( ..,
        DestinationStatusACTIVE,
        DestinationStatusDISABLED,
        DestinationStatusDISABLING,
        DestinationStatusENABLEFAILED,
        DestinationStatusENABLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DestinationStatus = DestinationStatus'
  { fromDestinationStatus ::
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

pattern DestinationStatusACTIVE :: DestinationStatus
pattern DestinationStatusACTIVE = DestinationStatus' "ACTIVE"

pattern DestinationStatusDISABLED :: DestinationStatus
pattern DestinationStatusDISABLED = DestinationStatus' "DISABLED"

pattern DestinationStatusDISABLING :: DestinationStatus
pattern DestinationStatusDISABLING = DestinationStatus' "DISABLING"

pattern DestinationStatusENABLEFAILED :: DestinationStatus
pattern DestinationStatusENABLEFAILED = DestinationStatus' "ENABLE_FAILED"

pattern DestinationStatusENABLING :: DestinationStatus
pattern DestinationStatusENABLING = DestinationStatus' "ENABLING"

{-# COMPLETE
  DestinationStatusACTIVE,
  DestinationStatusDISABLED,
  DestinationStatusDISABLING,
  DestinationStatusENABLEFAILED,
  DestinationStatusENABLING,
  DestinationStatus'
  #-}

instance Prelude.FromText DestinationStatus where
  parser = DestinationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DestinationStatus where
  toText (DestinationStatus' x) = x

instance Prelude.Hashable DestinationStatus

instance Prelude.NFData DestinationStatus

instance Prelude.ToByteString DestinationStatus

instance Prelude.ToQuery DestinationStatus

instance Prelude.ToHeader DestinationStatus

instance Prelude.FromJSON DestinationStatus where
  parseJSON = Prelude.parseJSONText "DestinationStatus"
