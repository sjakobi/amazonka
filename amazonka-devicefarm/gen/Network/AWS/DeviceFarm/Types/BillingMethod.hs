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
-- Module      : Network.AWS.DeviceFarm.Types.BillingMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.BillingMethod
  ( BillingMethod
      ( ..,
        BillingMethodMETERED,
        BillingMethodUNMETERED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BillingMethod = BillingMethod'
  { fromBillingMethod ::
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

pattern BillingMethodMETERED :: BillingMethod
pattern BillingMethodMETERED = BillingMethod' "METERED"

pattern BillingMethodUNMETERED :: BillingMethod
pattern BillingMethodUNMETERED = BillingMethod' "UNMETERED"

{-# COMPLETE
  BillingMethodMETERED,
  BillingMethodUNMETERED,
  BillingMethod'
  #-}

instance Prelude.FromText BillingMethod where
  parser = BillingMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText BillingMethod where
  toText (BillingMethod' x) = x

instance Prelude.Hashable BillingMethod

instance Prelude.NFData BillingMethod

instance Prelude.ToByteString BillingMethod

instance Prelude.ToQuery BillingMethod

instance Prelude.ToHeader BillingMethod

instance Prelude.ToJSON BillingMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BillingMethod where
  parseJSON = Prelude.parseJSONText "BillingMethod"
