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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
  ( ProvisionedProductPlanStatus
      ( ..,
        ProvisionedProductPlanStatusCREATEFAILED,
        ProvisionedProductPlanStatusCREATEINPROGRESS,
        ProvisionedProductPlanStatusCREATESUCCESS,
        ProvisionedProductPlanStatusEXECUTEFAILED,
        ProvisionedProductPlanStatusEXECUTEINPROGRESS,
        ProvisionedProductPlanStatusEXECUTESUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisionedProductPlanStatus = ProvisionedProductPlanStatus'
  { fromProvisionedProductPlanStatus ::
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

pattern ProvisionedProductPlanStatusCREATEFAILED :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusCREATEFAILED = ProvisionedProductPlanStatus' "CREATE_FAILED"

pattern ProvisionedProductPlanStatusCREATEINPROGRESS :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusCREATEINPROGRESS = ProvisionedProductPlanStatus' "CREATE_IN_PROGRESS"

pattern ProvisionedProductPlanStatusCREATESUCCESS :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusCREATESUCCESS = ProvisionedProductPlanStatus' "CREATE_SUCCESS"

pattern ProvisionedProductPlanStatusEXECUTEFAILED :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusEXECUTEFAILED = ProvisionedProductPlanStatus' "EXECUTE_FAILED"

pattern ProvisionedProductPlanStatusEXECUTEINPROGRESS :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusEXECUTEINPROGRESS = ProvisionedProductPlanStatus' "EXECUTE_IN_PROGRESS"

pattern ProvisionedProductPlanStatusEXECUTESUCCESS :: ProvisionedProductPlanStatus
pattern ProvisionedProductPlanStatusEXECUTESUCCESS = ProvisionedProductPlanStatus' "EXECUTE_SUCCESS"

{-# COMPLETE
  ProvisionedProductPlanStatusCREATEFAILED,
  ProvisionedProductPlanStatusCREATEINPROGRESS,
  ProvisionedProductPlanStatusCREATESUCCESS,
  ProvisionedProductPlanStatusEXECUTEFAILED,
  ProvisionedProductPlanStatusEXECUTEINPROGRESS,
  ProvisionedProductPlanStatusEXECUTESUCCESS,
  ProvisionedProductPlanStatus'
  #-}

instance Prelude.FromText ProvisionedProductPlanStatus where
  parser = ProvisionedProductPlanStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisionedProductPlanStatus where
  toText (ProvisionedProductPlanStatus' x) = x

instance Prelude.Hashable ProvisionedProductPlanStatus

instance Prelude.NFData ProvisionedProductPlanStatus

instance Prelude.ToByteString ProvisionedProductPlanStatus

instance Prelude.ToQuery ProvisionedProductPlanStatus

instance Prelude.ToHeader ProvisionedProductPlanStatus

instance Prelude.FromJSON ProvisionedProductPlanStatus where
  parseJSON = Prelude.parseJSONText "ProvisionedProductPlanStatus"
