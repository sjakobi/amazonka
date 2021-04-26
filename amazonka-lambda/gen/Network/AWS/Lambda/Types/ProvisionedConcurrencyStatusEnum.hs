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
-- Module      : Network.AWS.Lambda.Types.ProvisionedConcurrencyStatusEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.ProvisionedConcurrencyStatusEnum
  ( ProvisionedConcurrencyStatusEnum
      ( ..,
        ProvisionedConcurrencyStatusEnumFAILED,
        ProvisionedConcurrencyStatusEnumINPROGRESS,
        ProvisionedConcurrencyStatusEnumREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedConcurrencyStatusEnum = ProvisionedConcurrencyStatusEnum'
  { fromProvisionedConcurrencyStatusEnum ::
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

pattern ProvisionedConcurrencyStatusEnumFAILED :: ProvisionedConcurrencyStatusEnum
pattern ProvisionedConcurrencyStatusEnumFAILED = ProvisionedConcurrencyStatusEnum' "FAILED"

pattern ProvisionedConcurrencyStatusEnumINPROGRESS :: ProvisionedConcurrencyStatusEnum
pattern ProvisionedConcurrencyStatusEnumINPROGRESS = ProvisionedConcurrencyStatusEnum' "IN_PROGRESS"

pattern ProvisionedConcurrencyStatusEnumREADY :: ProvisionedConcurrencyStatusEnum
pattern ProvisionedConcurrencyStatusEnumREADY = ProvisionedConcurrencyStatusEnum' "READY"

{-# COMPLETE
  ProvisionedConcurrencyStatusEnumFAILED,
  ProvisionedConcurrencyStatusEnumINPROGRESS,
  ProvisionedConcurrencyStatusEnumREADY,
  ProvisionedConcurrencyStatusEnum'
  #-}

instance Prelude.FromText ProvisionedConcurrencyStatusEnum where
  parser = ProvisionedConcurrencyStatusEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisionedConcurrencyStatusEnum where
  toText (ProvisionedConcurrencyStatusEnum' x) = x

instance Prelude.Hashable ProvisionedConcurrencyStatusEnum

instance Prelude.NFData ProvisionedConcurrencyStatusEnum

instance Prelude.ToByteString ProvisionedConcurrencyStatusEnum

instance Prelude.ToQuery ProvisionedConcurrencyStatusEnum

instance Prelude.ToHeader ProvisionedConcurrencyStatusEnum

instance Prelude.FromJSON ProvisionedConcurrencyStatusEnum where
  parseJSON = Prelude.parseJSONText "ProvisionedConcurrencyStatusEnum"
