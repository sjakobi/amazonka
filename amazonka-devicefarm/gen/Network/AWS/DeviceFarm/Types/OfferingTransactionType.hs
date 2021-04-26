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
-- Module      : Network.AWS.DeviceFarm.Types.OfferingTransactionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.OfferingTransactionType
  ( OfferingTransactionType
      ( ..,
        OfferingTransactionTypePURCHASE,
        OfferingTransactionTypeRENEW,
        OfferingTransactionTypeSYSTEM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OfferingTransactionType = OfferingTransactionType'
  { fromOfferingTransactionType ::
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

pattern OfferingTransactionTypePURCHASE :: OfferingTransactionType
pattern OfferingTransactionTypePURCHASE = OfferingTransactionType' "PURCHASE"

pattern OfferingTransactionTypeRENEW :: OfferingTransactionType
pattern OfferingTransactionTypeRENEW = OfferingTransactionType' "RENEW"

pattern OfferingTransactionTypeSYSTEM :: OfferingTransactionType
pattern OfferingTransactionTypeSYSTEM = OfferingTransactionType' "SYSTEM"

{-# COMPLETE
  OfferingTransactionTypePURCHASE,
  OfferingTransactionTypeRENEW,
  OfferingTransactionTypeSYSTEM,
  OfferingTransactionType'
  #-}

instance Prelude.FromText OfferingTransactionType where
  parser = OfferingTransactionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingTransactionType where
  toText (OfferingTransactionType' x) = x

instance Prelude.Hashable OfferingTransactionType

instance Prelude.NFData OfferingTransactionType

instance Prelude.ToByteString OfferingTransactionType

instance Prelude.ToQuery OfferingTransactionType

instance Prelude.ToHeader OfferingTransactionType

instance Prelude.FromJSON OfferingTransactionType where
  parseJSON = Prelude.parseJSONText "OfferingTransactionType"
