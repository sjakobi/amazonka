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
-- Module      : Network.AWS.SMS.Types.ValidationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ValidationStatus
  ( ValidationStatus
      ( ..,
        ValidationStatusFAILED,
        ValidationStatusINPROGRESS,
        ValidationStatusPENDING,
        ValidationStatusREADYFORVALIDATION,
        ValidationStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ValidationStatus = ValidationStatus'
  { fromValidationStatus ::
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

pattern ValidationStatusFAILED :: ValidationStatus
pattern ValidationStatusFAILED = ValidationStatus' "FAILED"

pattern ValidationStatusINPROGRESS :: ValidationStatus
pattern ValidationStatusINPROGRESS = ValidationStatus' "IN_PROGRESS"

pattern ValidationStatusPENDING :: ValidationStatus
pattern ValidationStatusPENDING = ValidationStatus' "PENDING"

pattern ValidationStatusREADYFORVALIDATION :: ValidationStatus
pattern ValidationStatusREADYFORVALIDATION = ValidationStatus' "READY_FOR_VALIDATION"

pattern ValidationStatusSUCCEEDED :: ValidationStatus
pattern ValidationStatusSUCCEEDED = ValidationStatus' "SUCCEEDED"

{-# COMPLETE
  ValidationStatusFAILED,
  ValidationStatusINPROGRESS,
  ValidationStatusPENDING,
  ValidationStatusREADYFORVALIDATION,
  ValidationStatusSUCCEEDED,
  ValidationStatus'
  #-}

instance Prelude.FromText ValidationStatus where
  parser = ValidationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ValidationStatus where
  toText (ValidationStatus' x) = x

instance Prelude.Hashable ValidationStatus

instance Prelude.NFData ValidationStatus

instance Prelude.ToByteString ValidationStatus

instance Prelude.ToQuery ValidationStatus

instance Prelude.ToHeader ValidationStatus

instance Prelude.ToJSON ValidationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ValidationStatus where
  parseJSON = Prelude.parseJSONText "ValidationStatus"
