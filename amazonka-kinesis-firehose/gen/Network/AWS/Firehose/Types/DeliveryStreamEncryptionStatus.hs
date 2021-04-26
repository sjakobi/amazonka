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
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamEncryptionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamEncryptionStatus
  ( DeliveryStreamEncryptionStatus
      ( ..,
        DeliveryStreamEncryptionStatusDISABLED,
        DeliveryStreamEncryptionStatusDISABLING,
        DeliveryStreamEncryptionStatusDISABLINGFAILED,
        DeliveryStreamEncryptionStatusENABLED,
        DeliveryStreamEncryptionStatusENABLING,
        DeliveryStreamEncryptionStatusENABLINGFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryStreamEncryptionStatus = DeliveryStreamEncryptionStatus'
  { fromDeliveryStreamEncryptionStatus ::
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

pattern DeliveryStreamEncryptionStatusDISABLED :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusDISABLED = DeliveryStreamEncryptionStatus' "DISABLED"

pattern DeliveryStreamEncryptionStatusDISABLING :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusDISABLING = DeliveryStreamEncryptionStatus' "DISABLING"

pattern DeliveryStreamEncryptionStatusDISABLINGFAILED :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusDISABLINGFAILED = DeliveryStreamEncryptionStatus' "DISABLING_FAILED"

pattern DeliveryStreamEncryptionStatusENABLED :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusENABLED = DeliveryStreamEncryptionStatus' "ENABLED"

pattern DeliveryStreamEncryptionStatusENABLING :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusENABLING = DeliveryStreamEncryptionStatus' "ENABLING"

pattern DeliveryStreamEncryptionStatusENABLINGFAILED :: DeliveryStreamEncryptionStatus
pattern DeliveryStreamEncryptionStatusENABLINGFAILED = DeliveryStreamEncryptionStatus' "ENABLING_FAILED"

{-# COMPLETE
  DeliveryStreamEncryptionStatusDISABLED,
  DeliveryStreamEncryptionStatusDISABLING,
  DeliveryStreamEncryptionStatusDISABLINGFAILED,
  DeliveryStreamEncryptionStatusENABLED,
  DeliveryStreamEncryptionStatusENABLING,
  DeliveryStreamEncryptionStatusENABLINGFAILED,
  DeliveryStreamEncryptionStatus'
  #-}

instance Prelude.FromText DeliveryStreamEncryptionStatus where
  parser = DeliveryStreamEncryptionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryStreamEncryptionStatus where
  toText (DeliveryStreamEncryptionStatus' x) = x

instance Prelude.Hashable DeliveryStreamEncryptionStatus

instance Prelude.NFData DeliveryStreamEncryptionStatus

instance Prelude.ToByteString DeliveryStreamEncryptionStatus

instance Prelude.ToQuery DeliveryStreamEncryptionStatus

instance Prelude.ToHeader DeliveryStreamEncryptionStatus

instance Prelude.FromJSON DeliveryStreamEncryptionStatus where
  parseJSON = Prelude.parseJSONText "DeliveryStreamEncryptionStatus"
