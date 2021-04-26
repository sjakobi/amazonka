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
-- Module      : Network.AWS.EC2.Types.PaymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PaymentOption
  ( PaymentOption
      ( ..,
        PaymentOptionAllUpfront,
        PaymentOptionNoUpfront,
        PaymentOptionPartialUpfront
      ),
  )
where

import Network.AWS.EC2.Internal
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

pattern PaymentOptionAllUpfront :: PaymentOption
pattern PaymentOptionAllUpfront = PaymentOption' "AllUpfront"

pattern PaymentOptionNoUpfront :: PaymentOption
pattern PaymentOptionNoUpfront = PaymentOption' "NoUpfront"

pattern PaymentOptionPartialUpfront :: PaymentOption
pattern PaymentOptionPartialUpfront = PaymentOption' "PartialUpfront"

{-# COMPLETE
  PaymentOptionAllUpfront,
  PaymentOptionNoUpfront,
  PaymentOptionPartialUpfront,
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

instance Prelude.FromXML PaymentOption where
  parseXML = Prelude.parseXMLText "PaymentOption"
