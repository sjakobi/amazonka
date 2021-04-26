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
-- Module      : Network.AWS.Config.Types.DeliveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.DeliveryStatus
  ( DeliveryStatus
      ( ..,
        DeliveryStatusFailure,
        DeliveryStatusNotApplicable,
        DeliveryStatusSuccess
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

pattern DeliveryStatusFailure :: DeliveryStatus
pattern DeliveryStatusFailure = DeliveryStatus' "Failure"

pattern DeliveryStatusNotApplicable :: DeliveryStatus
pattern DeliveryStatusNotApplicable = DeliveryStatus' "Not_Applicable"

pattern DeliveryStatusSuccess :: DeliveryStatus
pattern DeliveryStatusSuccess = DeliveryStatus' "Success"

{-# COMPLETE
  DeliveryStatusFailure,
  DeliveryStatusNotApplicable,
  DeliveryStatusSuccess,
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
