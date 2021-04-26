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
-- Module      : Network.AWS.Organizations.Types.CreateAccountFailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.CreateAccountFailureReason
  ( CreateAccountFailureReason
      ( ..,
        CreateAccountFailureReasonACCOUNTLIMITEXCEEDED,
        CreateAccountFailureReasonCONCURRENTACCOUNTMODIFICATION,
        CreateAccountFailureReasonEMAILALREADYEXISTS,
        CreateAccountFailureReasonFAILEDBUSINESSVALIDATION,
        CreateAccountFailureReasonGOVCLOUDACCOUNTALREADYEXISTS,
        CreateAccountFailureReasonINTERNALFAILURE,
        CreateAccountFailureReasonINVALIDADDRESS,
        CreateAccountFailureReasonINVALIDEMAIL,
        CreateAccountFailureReasonINVALIDIDENTITYFORBUSINESSVALIDATION,
        CreateAccountFailureReasonMISSINGBUSINESSVALIDATION,
        CreateAccountFailureReasonMISSINGPAYMENTINSTRUMENT,
        CreateAccountFailureReasonPENDINGBUSINESSVALIDATION,
        CreateAccountFailureReasonUNKNOWNBUSINESSVALIDATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CreateAccountFailureReason = CreateAccountFailureReason'
  { fromCreateAccountFailureReason ::
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

pattern CreateAccountFailureReasonACCOUNTLIMITEXCEEDED :: CreateAccountFailureReason
pattern CreateAccountFailureReasonACCOUNTLIMITEXCEEDED = CreateAccountFailureReason' "ACCOUNT_LIMIT_EXCEEDED"

pattern CreateAccountFailureReasonCONCURRENTACCOUNTMODIFICATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonCONCURRENTACCOUNTMODIFICATION = CreateAccountFailureReason' "CONCURRENT_ACCOUNT_MODIFICATION"

pattern CreateAccountFailureReasonEMAILALREADYEXISTS :: CreateAccountFailureReason
pattern CreateAccountFailureReasonEMAILALREADYEXISTS = CreateAccountFailureReason' "EMAIL_ALREADY_EXISTS"

pattern CreateAccountFailureReasonFAILEDBUSINESSVALIDATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonFAILEDBUSINESSVALIDATION = CreateAccountFailureReason' "FAILED_BUSINESS_VALIDATION"

pattern CreateAccountFailureReasonGOVCLOUDACCOUNTALREADYEXISTS :: CreateAccountFailureReason
pattern CreateAccountFailureReasonGOVCLOUDACCOUNTALREADYEXISTS = CreateAccountFailureReason' "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"

pattern CreateAccountFailureReasonINTERNALFAILURE :: CreateAccountFailureReason
pattern CreateAccountFailureReasonINTERNALFAILURE = CreateAccountFailureReason' "INTERNAL_FAILURE"

pattern CreateAccountFailureReasonINVALIDADDRESS :: CreateAccountFailureReason
pattern CreateAccountFailureReasonINVALIDADDRESS = CreateAccountFailureReason' "INVALID_ADDRESS"

pattern CreateAccountFailureReasonINVALIDEMAIL :: CreateAccountFailureReason
pattern CreateAccountFailureReasonINVALIDEMAIL = CreateAccountFailureReason' "INVALID_EMAIL"

pattern CreateAccountFailureReasonINVALIDIDENTITYFORBUSINESSVALIDATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonINVALIDIDENTITYFORBUSINESSVALIDATION = CreateAccountFailureReason' "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"

pattern CreateAccountFailureReasonMISSINGBUSINESSVALIDATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonMISSINGBUSINESSVALIDATION = CreateAccountFailureReason' "MISSING_BUSINESS_VALIDATION"

pattern CreateAccountFailureReasonMISSINGPAYMENTINSTRUMENT :: CreateAccountFailureReason
pattern CreateAccountFailureReasonMISSINGPAYMENTINSTRUMENT = CreateAccountFailureReason' "MISSING_PAYMENT_INSTRUMENT"

pattern CreateAccountFailureReasonPENDINGBUSINESSVALIDATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonPENDINGBUSINESSVALIDATION = CreateAccountFailureReason' "PENDING_BUSINESS_VALIDATION"

pattern CreateAccountFailureReasonUNKNOWNBUSINESSVALIDATION :: CreateAccountFailureReason
pattern CreateAccountFailureReasonUNKNOWNBUSINESSVALIDATION = CreateAccountFailureReason' "UNKNOWN_BUSINESS_VALIDATION"

{-# COMPLETE
  CreateAccountFailureReasonACCOUNTLIMITEXCEEDED,
  CreateAccountFailureReasonCONCURRENTACCOUNTMODIFICATION,
  CreateAccountFailureReasonEMAILALREADYEXISTS,
  CreateAccountFailureReasonFAILEDBUSINESSVALIDATION,
  CreateAccountFailureReasonGOVCLOUDACCOUNTALREADYEXISTS,
  CreateAccountFailureReasonINTERNALFAILURE,
  CreateAccountFailureReasonINVALIDADDRESS,
  CreateAccountFailureReasonINVALIDEMAIL,
  CreateAccountFailureReasonINVALIDIDENTITYFORBUSINESSVALIDATION,
  CreateAccountFailureReasonMISSINGBUSINESSVALIDATION,
  CreateAccountFailureReasonMISSINGPAYMENTINSTRUMENT,
  CreateAccountFailureReasonPENDINGBUSINESSVALIDATION,
  CreateAccountFailureReasonUNKNOWNBUSINESSVALIDATION,
  CreateAccountFailureReason'
  #-}

instance Prelude.FromText CreateAccountFailureReason where
  parser = CreateAccountFailureReason' Prelude.<$> Prelude.takeText

instance Prelude.ToText CreateAccountFailureReason where
  toText (CreateAccountFailureReason' x) = x

instance Prelude.Hashable CreateAccountFailureReason

instance Prelude.NFData CreateAccountFailureReason

instance Prelude.ToByteString CreateAccountFailureReason

instance Prelude.ToQuery CreateAccountFailureReason

instance Prelude.ToHeader CreateAccountFailureReason

instance Prelude.FromJSON CreateAccountFailureReason where
  parseJSON = Prelude.parseJSONText "CreateAccountFailureReason"
