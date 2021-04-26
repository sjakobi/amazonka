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
-- Module      : Network.AWS.ECS.Types.CapacityProviderUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderUpdateStatus
  ( CapacityProviderUpdateStatus
      ( ..,
        CapacityProviderUpdateStatusDELETECOMPLETE,
        CapacityProviderUpdateStatusDELETEFAILED,
        CapacityProviderUpdateStatusDELETEINPROGRESS,
        CapacityProviderUpdateStatusUPDATECOMPLETE,
        CapacityProviderUpdateStatusUPDATEFAILED,
        CapacityProviderUpdateStatusUPDATEINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CapacityProviderUpdateStatus = CapacityProviderUpdateStatus'
  { fromCapacityProviderUpdateStatus ::
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

pattern CapacityProviderUpdateStatusDELETECOMPLETE :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusDELETECOMPLETE = CapacityProviderUpdateStatus' "DELETE_COMPLETE"

pattern CapacityProviderUpdateStatusDELETEFAILED :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusDELETEFAILED = CapacityProviderUpdateStatus' "DELETE_FAILED"

pattern CapacityProviderUpdateStatusDELETEINPROGRESS :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusDELETEINPROGRESS = CapacityProviderUpdateStatus' "DELETE_IN_PROGRESS"

pattern CapacityProviderUpdateStatusUPDATECOMPLETE :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusUPDATECOMPLETE = CapacityProviderUpdateStatus' "UPDATE_COMPLETE"

pattern CapacityProviderUpdateStatusUPDATEFAILED :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusUPDATEFAILED = CapacityProviderUpdateStatus' "UPDATE_FAILED"

pattern CapacityProviderUpdateStatusUPDATEINPROGRESS :: CapacityProviderUpdateStatus
pattern CapacityProviderUpdateStatusUPDATEINPROGRESS = CapacityProviderUpdateStatus' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  CapacityProviderUpdateStatusDELETECOMPLETE,
  CapacityProviderUpdateStatusDELETEFAILED,
  CapacityProviderUpdateStatusDELETEINPROGRESS,
  CapacityProviderUpdateStatusUPDATECOMPLETE,
  CapacityProviderUpdateStatusUPDATEFAILED,
  CapacityProviderUpdateStatusUPDATEINPROGRESS,
  CapacityProviderUpdateStatus'
  #-}

instance Prelude.FromText CapacityProviderUpdateStatus where
  parser = CapacityProviderUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityProviderUpdateStatus where
  toText (CapacityProviderUpdateStatus' x) = x

instance Prelude.Hashable CapacityProviderUpdateStatus

instance Prelude.NFData CapacityProviderUpdateStatus

instance Prelude.ToByteString CapacityProviderUpdateStatus

instance Prelude.ToQuery CapacityProviderUpdateStatus

instance Prelude.ToHeader CapacityProviderUpdateStatus

instance Prelude.FromJSON CapacityProviderUpdateStatus where
  parseJSON = Prelude.parseJSONText "CapacityProviderUpdateStatus"
