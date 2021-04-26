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
-- Module      : Network.AWS.Snowball.Types.ShippingLabelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShippingLabelStatus
  ( ShippingLabelStatus
      ( ..,
        ShippingLabelStatusFailed,
        ShippingLabelStatusInProgress,
        ShippingLabelStatusSucceeded,
        ShippingLabelStatusTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShippingLabelStatus = ShippingLabelStatus'
  { fromShippingLabelStatus ::
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

pattern ShippingLabelStatusFailed :: ShippingLabelStatus
pattern ShippingLabelStatusFailed = ShippingLabelStatus' "Failed"

pattern ShippingLabelStatusInProgress :: ShippingLabelStatus
pattern ShippingLabelStatusInProgress = ShippingLabelStatus' "InProgress"

pattern ShippingLabelStatusSucceeded :: ShippingLabelStatus
pattern ShippingLabelStatusSucceeded = ShippingLabelStatus' "Succeeded"

pattern ShippingLabelStatusTimedOut :: ShippingLabelStatus
pattern ShippingLabelStatusTimedOut = ShippingLabelStatus' "TimedOut"

{-# COMPLETE
  ShippingLabelStatusFailed,
  ShippingLabelStatusInProgress,
  ShippingLabelStatusSucceeded,
  ShippingLabelStatusTimedOut,
  ShippingLabelStatus'
  #-}

instance Prelude.FromText ShippingLabelStatus where
  parser = ShippingLabelStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShippingLabelStatus where
  toText (ShippingLabelStatus' x) = x

instance Prelude.Hashable ShippingLabelStatus

instance Prelude.NFData ShippingLabelStatus

instance Prelude.ToByteString ShippingLabelStatus

instance Prelude.ToQuery ShippingLabelStatus

instance Prelude.ToHeader ShippingLabelStatus

instance Prelude.FromJSON ShippingLabelStatus where
  parseJSON = Prelude.parseJSONText "ShippingLabelStatus"
