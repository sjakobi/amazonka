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
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamStatus
  ( DeliveryStreamStatus
      ( ..,
        DeliveryStreamStatusACTIVE,
        DeliveryStreamStatusCREATING,
        DeliveryStreamStatusCREATINGFAILED,
        DeliveryStreamStatusDELETING,
        DeliveryStreamStatusDELETINGFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryStreamStatus = DeliveryStreamStatus'
  { fromDeliveryStreamStatus ::
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

pattern DeliveryStreamStatusACTIVE :: DeliveryStreamStatus
pattern DeliveryStreamStatusACTIVE = DeliveryStreamStatus' "ACTIVE"

pattern DeliveryStreamStatusCREATING :: DeliveryStreamStatus
pattern DeliveryStreamStatusCREATING = DeliveryStreamStatus' "CREATING"

pattern DeliveryStreamStatusCREATINGFAILED :: DeliveryStreamStatus
pattern DeliveryStreamStatusCREATINGFAILED = DeliveryStreamStatus' "CREATING_FAILED"

pattern DeliveryStreamStatusDELETING :: DeliveryStreamStatus
pattern DeliveryStreamStatusDELETING = DeliveryStreamStatus' "DELETING"

pattern DeliveryStreamStatusDELETINGFAILED :: DeliveryStreamStatus
pattern DeliveryStreamStatusDELETINGFAILED = DeliveryStreamStatus' "DELETING_FAILED"

{-# COMPLETE
  DeliveryStreamStatusACTIVE,
  DeliveryStreamStatusCREATING,
  DeliveryStreamStatusCREATINGFAILED,
  DeliveryStreamStatusDELETING,
  DeliveryStreamStatusDELETINGFAILED,
  DeliveryStreamStatus'
  #-}

instance Prelude.FromText DeliveryStreamStatus where
  parser = DeliveryStreamStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryStreamStatus where
  toText (DeliveryStreamStatus' x) = x

instance Prelude.Hashable DeliveryStreamStatus

instance Prelude.NFData DeliveryStreamStatus

instance Prelude.ToByteString DeliveryStreamStatus

instance Prelude.ToQuery DeliveryStreamStatus

instance Prelude.ToHeader DeliveryStreamStatus

instance Prelude.FromJSON DeliveryStreamStatus where
  parseJSON = Prelude.parseJSONText "DeliveryStreamStatus"
