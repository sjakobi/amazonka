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
-- Module      : Network.AWS.Pinpoint.Types.DeliveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DeliveryStatus
  ( DeliveryStatus
      ( ..,
        DeliveryStatusDUPLICATE,
        DeliveryStatusOPTOUT,
        DeliveryStatusPERMANENTFAILURE,
        DeliveryStatusSUCCESSFUL,
        DeliveryStatusTEMPORARYFAILURE,
        DeliveryStatusTHROTTLED,
        DeliveryStatusUNKNOWNFAILURE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryStatus = DeliveryStatus'
  { fromDeliveryStatus ::
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

pattern DeliveryStatusDUPLICATE :: DeliveryStatus
pattern DeliveryStatusDUPLICATE = DeliveryStatus' "DUPLICATE"

pattern DeliveryStatusOPTOUT :: DeliveryStatus
pattern DeliveryStatusOPTOUT = DeliveryStatus' "OPT_OUT"

pattern DeliveryStatusPERMANENTFAILURE :: DeliveryStatus
pattern DeliveryStatusPERMANENTFAILURE = DeliveryStatus' "PERMANENT_FAILURE"

pattern DeliveryStatusSUCCESSFUL :: DeliveryStatus
pattern DeliveryStatusSUCCESSFUL = DeliveryStatus' "SUCCESSFUL"

pattern DeliveryStatusTEMPORARYFAILURE :: DeliveryStatus
pattern DeliveryStatusTEMPORARYFAILURE = DeliveryStatus' "TEMPORARY_FAILURE"

pattern DeliveryStatusTHROTTLED :: DeliveryStatus
pattern DeliveryStatusTHROTTLED = DeliveryStatus' "THROTTLED"

pattern DeliveryStatusUNKNOWNFAILURE :: DeliveryStatus
pattern DeliveryStatusUNKNOWNFAILURE = DeliveryStatus' "UNKNOWN_FAILURE"

{-# COMPLETE
  DeliveryStatusDUPLICATE,
  DeliveryStatusOPTOUT,
  DeliveryStatusPERMANENTFAILURE,
  DeliveryStatusSUCCESSFUL,
  DeliveryStatusTEMPORARYFAILURE,
  DeliveryStatusTHROTTLED,
  DeliveryStatusUNKNOWNFAILURE,
  DeliveryStatus'
  #-}

instance Prelude.FromText DeliveryStatus where
  parser = DeliveryStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryStatus where
  toText (DeliveryStatus' x) = x

instance Prelude.Hashable DeliveryStatus

instance Prelude.NFData DeliveryStatus

instance Prelude.ToByteString DeliveryStatus

instance Prelude.ToQuery DeliveryStatus

instance Prelude.ToHeader DeliveryStatus

instance Prelude.FromJSON DeliveryStatus where
  parseJSON = Prelude.parseJSONText "DeliveryStatus"
