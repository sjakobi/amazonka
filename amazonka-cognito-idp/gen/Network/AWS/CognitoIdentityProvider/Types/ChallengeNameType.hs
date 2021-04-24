{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CNTAdminNoSrpAuth,
        CNTCustomChallenge,
        CNTDevicePasswordVerifier,
        CNTDeviceSrpAuth,
        CNTMFASetup,
        CNTNewPasswordRequired,
        CNTPasswordVerifier,
        CNTSelectMFAType,
        CNTSmsMFA,
        CNTSoftwareTokenMFA
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChallengeNameType = ChallengeNameType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CNTAdminNoSrpAuth :: ChallengeNameType
pattern CNTAdminNoSrpAuth = ChallengeNameType' "ADMIN_NO_SRP_AUTH"

pattern CNTCustomChallenge :: ChallengeNameType
pattern CNTCustomChallenge = ChallengeNameType' "CUSTOM_CHALLENGE"

pattern CNTDevicePasswordVerifier :: ChallengeNameType
pattern CNTDevicePasswordVerifier = ChallengeNameType' "DEVICE_PASSWORD_VERIFIER"

pattern CNTDeviceSrpAuth :: ChallengeNameType
pattern CNTDeviceSrpAuth = ChallengeNameType' "DEVICE_SRP_AUTH"

pattern CNTMFASetup :: ChallengeNameType
pattern CNTMFASetup = ChallengeNameType' "MFA_SETUP"

pattern CNTNewPasswordRequired :: ChallengeNameType
pattern CNTNewPasswordRequired = ChallengeNameType' "NEW_PASSWORD_REQUIRED"

pattern CNTPasswordVerifier :: ChallengeNameType
pattern CNTPasswordVerifier = ChallengeNameType' "PASSWORD_VERIFIER"

pattern CNTSelectMFAType :: ChallengeNameType
pattern CNTSelectMFAType = ChallengeNameType' "SELECT_MFA_TYPE"

pattern CNTSmsMFA :: ChallengeNameType
pattern CNTSmsMFA = ChallengeNameType' "SMS_MFA"

pattern CNTSoftwareTokenMFA :: ChallengeNameType
pattern CNTSoftwareTokenMFA = ChallengeNameType' "SOFTWARE_TOKEN_MFA"

{-# COMPLETE
  CNTAdminNoSrpAuth,
  CNTCustomChallenge,
  CNTDevicePasswordVerifier,
  CNTDeviceSrpAuth,
  CNTMFASetup,
  CNTNewPasswordRequired,
  CNTPasswordVerifier,
  CNTSelectMFAType,
  CNTSmsMFA,
  CNTSoftwareTokenMFA,
  ChallengeNameType'
  #-}

instance FromText ChallengeNameType where
  parser = (ChallengeNameType' . mk) <$> takeText

instance ToText ChallengeNameType where
  toText (ChallengeNameType' ci) = original ci

instance Hashable ChallengeNameType

instance NFData ChallengeNameType

instance ToByteString ChallengeNameType

instance ToQuery ChallengeNameType

instance ToHeader ChallengeNameType

instance ToJSON ChallengeNameType where
  toJSON = toJSONText

instance FromJSON ChallengeNameType where
  parseJSON = parseJSONText "ChallengeNameType"
