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
-- Module      : Network.AWS.Snowball.Types.ShippingOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShippingOption
  ( ShippingOption
      ( ..,
        ShippingOptionEXPRESS,
        ShippingOptionNEXTDAY,
        ShippingOptionSECONDDAY,
        ShippingOptionSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShippingOption = ShippingOption'
  { fromShippingOption ::
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

pattern ShippingOptionEXPRESS :: ShippingOption
pattern ShippingOptionEXPRESS = ShippingOption' "EXPRESS"

pattern ShippingOptionNEXTDAY :: ShippingOption
pattern ShippingOptionNEXTDAY = ShippingOption' "NEXT_DAY"

pattern ShippingOptionSECONDDAY :: ShippingOption
pattern ShippingOptionSECONDDAY = ShippingOption' "SECOND_DAY"

pattern ShippingOptionSTANDARD :: ShippingOption
pattern ShippingOptionSTANDARD = ShippingOption' "STANDARD"

{-# COMPLETE
  ShippingOptionEXPRESS,
  ShippingOptionNEXTDAY,
  ShippingOptionSECONDDAY,
  ShippingOptionSTANDARD,
  ShippingOption'
  #-}

instance Prelude.FromText ShippingOption where
  parser = ShippingOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShippingOption where
  toText (ShippingOption' x) = x

instance Prelude.Hashable ShippingOption

instance Prelude.NFData ShippingOption

instance Prelude.ToByteString ShippingOption

instance Prelude.ToQuery ShippingOption

instance Prelude.ToHeader ShippingOption

instance Prelude.ToJSON ShippingOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ShippingOption where
  parseJSON = Prelude.parseJSONText "ShippingOption"
