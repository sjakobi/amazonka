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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.ChallengeNameType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.ChallengeNameType
  ( ChallengeNameType
      ( ..,
        ChallengeNameTypeADMINNOSRPAUTH,
        ChallengeNameTypeCUSTOMCHALLENGE,
        ChallengeNameTypeDEVICEPASSWORDVERIFIER,
        ChallengeNameTypeDEVICESRPAUTH,
        ChallengeNameTypeMFASETUP,
        ChallengeNameTypeNEWPASSWORDREQUIRED,
        ChallengeNameTypePASSWORDVERIFIER,
        ChallengeNameTypeSELECTMFATYPE,
        ChallengeNameTypeSMSMFA,
        ChallengeNameTypeSOFTWARETOKENMFA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChallengeNameType = ChallengeNameType'
  { fromChallengeNameType ::
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

pattern ChallengeNameTypeADMINNOSRPAUTH :: ChallengeNameType
pattern ChallengeNameTypeADMINNOSRPAUTH = ChallengeNameType' "ADMIN_NO_SRP_AUTH"

pattern ChallengeNameTypeCUSTOMCHALLENGE :: ChallengeNameType
pattern ChallengeNameTypeCUSTOMCHALLENGE = ChallengeNameType' "CUSTOM_CHALLENGE"

pattern ChallengeNameTypeDEVICEPASSWORDVERIFIER :: ChallengeNameType
pattern ChallengeNameTypeDEVICEPASSWORDVERIFIER = ChallengeNameType' "DEVICE_PASSWORD_VERIFIER"

pattern ChallengeNameTypeDEVICESRPAUTH :: ChallengeNameType
pattern ChallengeNameTypeDEVICESRPAUTH = ChallengeNameType' "DEVICE_SRP_AUTH"

pattern ChallengeNameTypeMFASETUP :: ChallengeNameType
pattern ChallengeNameTypeMFASETUP = ChallengeNameType' "MFA_SETUP"

pattern ChallengeNameTypeNEWPASSWORDREQUIRED :: ChallengeNameType
pattern ChallengeNameTypeNEWPASSWORDREQUIRED = ChallengeNameType' "NEW_PASSWORD_REQUIRED"

pattern ChallengeNameTypePASSWORDVERIFIER :: ChallengeNameType
pattern ChallengeNameTypePASSWORDVERIFIER = ChallengeNameType' "PASSWORD_VERIFIER"

pattern ChallengeNameTypeSELECTMFATYPE :: ChallengeNameType
pattern ChallengeNameTypeSELECTMFATYPE = ChallengeNameType' "SELECT_MFA_TYPE"

pattern ChallengeNameTypeSMSMFA :: ChallengeNameType
pattern ChallengeNameTypeSMSMFA = ChallengeNameType' "SMS_MFA"

pattern ChallengeNameTypeSOFTWARETOKENMFA :: ChallengeNameType
pattern ChallengeNameTypeSOFTWARETOKENMFA = ChallengeNameType' "SOFTWARE_TOKEN_MFA"

{-# COMPLETE
  ChallengeNameTypeADMINNOSRPAUTH,
  ChallengeNameTypeCUSTOMCHALLENGE,
  ChallengeNameTypeDEVICEPASSWORDVERIFIER,
  ChallengeNameTypeDEVICESRPAUTH,
  ChallengeNameTypeMFASETUP,
  ChallengeNameTypeNEWPASSWORDREQUIRED,
  ChallengeNameTypePASSWORDVERIFIER,
  ChallengeNameTypeSELECTMFATYPE,
  ChallengeNameTypeSMSMFA,
  ChallengeNameTypeSOFTWARETOKENMFA,
  ChallengeNameType'
  #-}

instance Prelude.FromText ChallengeNameType where
  parser = ChallengeNameType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChallengeNameType where
  toText (ChallengeNameType' x) = x

instance Prelude.Hashable ChallengeNameType

instance Prelude.NFData ChallengeNameType

instance Prelude.ToByteString ChallengeNameType

instance Prelude.ToQuery ChallengeNameType

instance Prelude.ToHeader ChallengeNameType

instance Prelude.ToJSON ChallengeNameType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChallengeNameType where
  parseJSON = Prelude.parseJSONText "ChallengeNameType"
