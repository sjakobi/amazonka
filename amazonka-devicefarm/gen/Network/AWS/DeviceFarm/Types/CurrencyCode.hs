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
-- Module      : Network.AWS.DeviceFarm.Types.CurrencyCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.CurrencyCode
  ( CurrencyCode
      ( ..,
        CurrencyCodeUSD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CurrencyCode = CurrencyCode'
  { fromCurrencyCode ::
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

pattern CurrencyCodeUSD :: CurrencyCode
pattern CurrencyCodeUSD = CurrencyCode' "USD"

{-# COMPLETE
  CurrencyCodeUSD,
  CurrencyCode'
  #-}

instance Prelude.FromText CurrencyCode where
  parser = CurrencyCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CurrencyCode where
  toText (CurrencyCode' x) = x

instance Prelude.Hashable CurrencyCode

instance Prelude.NFData CurrencyCode

instance Prelude.ToByteString CurrencyCode

instance Prelude.ToQuery CurrencyCode

instance Prelude.ToHeader CurrencyCode

instance Prelude.FromJSON CurrencyCode where
  parseJSON = Prelude.parseJSONText "CurrencyCode"
