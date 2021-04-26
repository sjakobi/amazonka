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
-- Module      : Network.AWS.CostExplorer.Types.PaymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.PaymentOption
  ( PaymentOption
      ( ..,
        PaymentOptionALLUPFRONT,
        PaymentOptionHEAVYUTILIZATION,
        PaymentOptionLIGHTUTILIZATION,
        PaymentOptionMEDIUMUTILIZATION,
        PaymentOptionNOUPFRONT,
        PaymentOptionPARTIALUPFRONT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PaymentOption = PaymentOption'
  { fromPaymentOption ::
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

pattern PaymentOptionALLUPFRONT :: PaymentOption
pattern PaymentOptionALLUPFRONT = PaymentOption' "ALL_UPFRONT"

pattern PaymentOptionHEAVYUTILIZATION :: PaymentOption
pattern PaymentOptionHEAVYUTILIZATION = PaymentOption' "HEAVY_UTILIZATION"

pattern PaymentOptionLIGHTUTILIZATION :: PaymentOption
pattern PaymentOptionLIGHTUTILIZATION = PaymentOption' "LIGHT_UTILIZATION"

pattern PaymentOptionMEDIUMUTILIZATION :: PaymentOption
pattern PaymentOptionMEDIUMUTILIZATION = PaymentOption' "MEDIUM_UTILIZATION"

pattern PaymentOptionNOUPFRONT :: PaymentOption
pattern PaymentOptionNOUPFRONT = PaymentOption' "NO_UPFRONT"

pattern PaymentOptionPARTIALUPFRONT :: PaymentOption
pattern PaymentOptionPARTIALUPFRONT = PaymentOption' "PARTIAL_UPFRONT"

{-# COMPLETE
  PaymentOptionALLUPFRONT,
  PaymentOptionHEAVYUTILIZATION,
  PaymentOptionLIGHTUTILIZATION,
  PaymentOptionMEDIUMUTILIZATION,
  PaymentOptionNOUPFRONT,
  PaymentOptionPARTIALUPFRONT,
  PaymentOption'
  #-}

instance Prelude.FromText PaymentOption where
  parser = PaymentOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText PaymentOption where
  toText (PaymentOption' x) = x

instance Prelude.Hashable PaymentOption

instance Prelude.NFData PaymentOption

instance Prelude.ToByteString PaymentOption

instance Prelude.ToQuery PaymentOption

instance Prelude.ToHeader PaymentOption

instance Prelude.ToJSON PaymentOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PaymentOption where
  parseJSON = Prelude.parseJSONText "PaymentOption"
