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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
  ( ProvisionedProductStatus
      ( ..,
        ProvisionedProductStatusAVAILABLE,
        ProvisionedProductStatusERROR,
        ProvisionedProductStatusPLANINPROGRESS,
        ProvisionedProductStatusTAINTED,
        ProvisionedProductStatusUNDERCHANGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedProductStatus = ProvisionedProductStatus'
  { fromProvisionedProductStatus ::
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

pattern ProvisionedProductStatusAVAILABLE :: ProvisionedProductStatus
pattern ProvisionedProductStatusAVAILABLE = ProvisionedProductStatus' "AVAILABLE"

pattern ProvisionedProductStatusERROR :: ProvisionedProductStatus
pattern ProvisionedProductStatusERROR = ProvisionedProductStatus' "ERROR"

pattern ProvisionedProductStatusPLANINPROGRESS :: ProvisionedProductStatus
pattern ProvisionedProductStatusPLANINPROGRESS = ProvisionedProductStatus' "PLAN_IN_PROGRESS"

pattern ProvisionedProductStatusTAINTED :: ProvisionedProductStatus
pattern ProvisionedProductStatusTAINTED = ProvisionedProductStatus' "TAINTED"

pattern ProvisionedProductStatusUNDERCHANGE :: ProvisionedProductStatus
pattern ProvisionedProductStatusUNDERCHANGE = ProvisionedProductStatus' "UNDER_CHANGE"

{-# COMPLETE
  ProvisionedProductStatusAVAILABLE,
  ProvisionedProductStatusERROR,
  ProvisionedProductStatusPLANINPROGRESS,
  ProvisionedProductStatusTAINTED,
  ProvisionedProductStatusUNDERCHANGE,
  ProvisionedProductStatus'
  #-}

instance Prelude.FromText ProvisionedProductStatus where
  parser = ProvisionedProductStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisionedProductStatus where
  toText (ProvisionedProductStatus' x) = x

instance Prelude.Hashable ProvisionedProductStatus

instance Prelude.NFData ProvisionedProductStatus

instance Prelude.ToByteString ProvisionedProductStatus

instance Prelude.ToQuery ProvisionedProductStatus

instance Prelude.ToHeader ProvisionedProductStatus

instance Prelude.FromJSON ProvisionedProductStatus where
  parseJSON = Prelude.parseJSONText "ProvisionedProductStatus"
