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
-- Module      : Network.AWS.EC2.Types.CurrencyCodeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CurrencyCodeValues
  ( CurrencyCodeValues
      ( ..,
        CurrencyCodeValuesUSD
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CurrencyCodeValues = CurrencyCodeValues'
  { fromCurrencyCodeValues ::
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

pattern CurrencyCodeValuesUSD :: CurrencyCodeValues
pattern CurrencyCodeValuesUSD = CurrencyCodeValues' "USD"

{-# COMPLETE
  CurrencyCodeValuesUSD,
  CurrencyCodeValues'
  #-}

instance Prelude.FromText CurrencyCodeValues where
  parser = CurrencyCodeValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText CurrencyCodeValues where
  toText (CurrencyCodeValues' x) = x

instance Prelude.Hashable CurrencyCodeValues

instance Prelude.NFData CurrencyCodeValues

instance Prelude.ToByteString CurrencyCodeValues

instance Prelude.ToQuery CurrencyCodeValues

instance Prelude.ToHeader CurrencyCodeValues

instance Prelude.FromXML CurrencyCodeValues where
  parseXML = Prelude.parseXMLText "CurrencyCodeValues"
