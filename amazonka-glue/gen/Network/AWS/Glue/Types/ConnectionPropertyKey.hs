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
-- Module      : Network.AWS.Glue.Types.ConnectionPropertyKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionPropertyKey
  ( ConnectionPropertyKey
      ( ..,
        ConnectionPropertyKeyCONFIGFILES,
        ConnectionPropertyKeyCONNECTIONURL,
        ConnectionPropertyKeyCONNECTORCLASSNAME,
        ConnectionPropertyKeyCONNECTORTYPE,
        ConnectionPropertyKeyCONNECTORURL,
        ConnectionPropertyKeyCUSTOMJDBCCERT,
        ConnectionPropertyKeyCUSTOMJDBCCERTSTRING,
        ConnectionPropertyKeyENCRYPTEDPASSWORD,
        ConnectionPropertyKeyHOST,
        ConnectionPropertyKeyINSTANCEID,
        ConnectionPropertyKeyJDBCCONNECTIONURL,
        ConnectionPropertyKeyJDBCDRIVERCLASSNAME,
        ConnectionPropertyKeyJDBCDRIVERJARURI,
        ConnectionPropertyKeyJDBCENFORCESSL,
        ConnectionPropertyKeyJDBCENGINE,
        ConnectionPropertyKeyJDBCENGINEVERSION,
        ConnectionPropertyKeyKAFKABOOTSTRAPSERVERS,
        ConnectionPropertyKeyKAFKACUSTOMCERT,
        ConnectionPropertyKeyKAFKASKIPCUSTOMCERTVALIDATION,
        ConnectionPropertyKeyKAFKASSLENABLED,
        ConnectionPropertyKeyPASSWORD,
        ConnectionPropertyKeyPORT,
        ConnectionPropertyKeySECRETID,
        ConnectionPropertyKeySKIPCUSTOMJDBCCERTVALIDATION,
        ConnectionPropertyKeyUSERNAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionPropertyKey = ConnectionPropertyKey'
  { fromConnectionPropertyKey ::
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

pattern ConnectionPropertyKeyCONFIGFILES :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCONFIGFILES = ConnectionPropertyKey' "CONFIG_FILES"

pattern ConnectionPropertyKeyCONNECTIONURL :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCONNECTIONURL = ConnectionPropertyKey' "CONNECTION_URL"

pattern ConnectionPropertyKeyCONNECTORCLASSNAME :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCONNECTORCLASSNAME = ConnectionPropertyKey' "CONNECTOR_CLASS_NAME"

pattern ConnectionPropertyKeyCONNECTORTYPE :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCONNECTORTYPE = ConnectionPropertyKey' "CONNECTOR_TYPE"

pattern ConnectionPropertyKeyCONNECTORURL :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCONNECTORURL = ConnectionPropertyKey' "CONNECTOR_URL"

pattern ConnectionPropertyKeyCUSTOMJDBCCERT :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCUSTOMJDBCCERT = ConnectionPropertyKey' "CUSTOM_JDBC_CERT"

pattern ConnectionPropertyKeyCUSTOMJDBCCERTSTRING :: ConnectionPropertyKey
pattern ConnectionPropertyKeyCUSTOMJDBCCERTSTRING = ConnectionPropertyKey' "CUSTOM_JDBC_CERT_STRING"

pattern ConnectionPropertyKeyENCRYPTEDPASSWORD :: ConnectionPropertyKey
pattern ConnectionPropertyKeyENCRYPTEDPASSWORD = ConnectionPropertyKey' "ENCRYPTED_PASSWORD"

pattern ConnectionPropertyKeyHOST :: ConnectionPropertyKey
pattern ConnectionPropertyKeyHOST = ConnectionPropertyKey' "HOST"

pattern ConnectionPropertyKeyINSTANCEID :: ConnectionPropertyKey
pattern ConnectionPropertyKeyINSTANCEID = ConnectionPropertyKey' "INSTANCE_ID"

pattern ConnectionPropertyKeyJDBCCONNECTIONURL :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCCONNECTIONURL = ConnectionPropertyKey' "JDBC_CONNECTION_URL"

pattern ConnectionPropertyKeyJDBCDRIVERCLASSNAME :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCDRIVERCLASSNAME = ConnectionPropertyKey' "JDBC_DRIVER_CLASS_NAME"

pattern ConnectionPropertyKeyJDBCDRIVERJARURI :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCDRIVERJARURI = ConnectionPropertyKey' "JDBC_DRIVER_JAR_URI"

pattern ConnectionPropertyKeyJDBCENFORCESSL :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCENFORCESSL = ConnectionPropertyKey' "JDBC_ENFORCE_SSL"

pattern ConnectionPropertyKeyJDBCENGINE :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCENGINE = ConnectionPropertyKey' "JDBC_ENGINE"

pattern ConnectionPropertyKeyJDBCENGINEVERSION :: ConnectionPropertyKey
pattern ConnectionPropertyKeyJDBCENGINEVERSION = ConnectionPropertyKey' "JDBC_ENGINE_VERSION"

pattern ConnectionPropertyKeyKAFKABOOTSTRAPSERVERS :: ConnectionPropertyKey
pattern ConnectionPropertyKeyKAFKABOOTSTRAPSERVERS = ConnectionPropertyKey' "KAFKA_BOOTSTRAP_SERVERS"

pattern ConnectionPropertyKeyKAFKACUSTOMCERT :: ConnectionPropertyKey
pattern ConnectionPropertyKeyKAFKACUSTOMCERT = ConnectionPropertyKey' "KAFKA_CUSTOM_CERT"

pattern ConnectionPropertyKeyKAFKASKIPCUSTOMCERTVALIDATION :: ConnectionPropertyKey
pattern ConnectionPropertyKeyKAFKASKIPCUSTOMCERTVALIDATION = ConnectionPropertyKey' "KAFKA_SKIP_CUSTOM_CERT_VALIDATION"

pattern ConnectionPropertyKeyKAFKASSLENABLED :: ConnectionPropertyKey
pattern ConnectionPropertyKeyKAFKASSLENABLED = ConnectionPropertyKey' "KAFKA_SSL_ENABLED"

pattern ConnectionPropertyKeyPASSWORD :: ConnectionPropertyKey
pattern ConnectionPropertyKeyPASSWORD = ConnectionPropertyKey' "PASSWORD"

pattern ConnectionPropertyKeyPORT :: ConnectionPropertyKey
pattern ConnectionPropertyKeyPORT = ConnectionPropertyKey' "PORT"

pattern ConnectionPropertyKeySECRETID :: ConnectionPropertyKey
pattern ConnectionPropertyKeySECRETID = ConnectionPropertyKey' "SECRET_ID"

pattern ConnectionPropertyKeySKIPCUSTOMJDBCCERTVALIDATION :: ConnectionPropertyKey
pattern ConnectionPropertyKeySKIPCUSTOMJDBCCERTVALIDATION = ConnectionPropertyKey' "SKIP_CUSTOM_JDBC_CERT_VALIDATION"

pattern ConnectionPropertyKeyUSERNAME :: ConnectionPropertyKey
pattern ConnectionPropertyKeyUSERNAME = ConnectionPropertyKey' "USERNAME"

{-# COMPLETE
  ConnectionPropertyKeyCONFIGFILES,
  ConnectionPropertyKeyCONNECTIONURL,
  ConnectionPropertyKeyCONNECTORCLASSNAME,
  ConnectionPropertyKeyCONNECTORTYPE,
  ConnectionPropertyKeyCONNECTORURL,
  ConnectionPropertyKeyCUSTOMJDBCCERT,
  ConnectionPropertyKeyCUSTOMJDBCCERTSTRING,
  ConnectionPropertyKeyENCRYPTEDPASSWORD,
  ConnectionPropertyKeyHOST,
  ConnectionPropertyKeyINSTANCEID,
  ConnectionPropertyKeyJDBCCONNECTIONURL,
  ConnectionPropertyKeyJDBCDRIVERCLASSNAME,
  ConnectionPropertyKeyJDBCDRIVERJARURI,
  ConnectionPropertyKeyJDBCENFORCESSL,
  ConnectionPropertyKeyJDBCENGINE,
  ConnectionPropertyKeyJDBCENGINEVERSION,
  ConnectionPropertyKeyKAFKABOOTSTRAPSERVERS,
  ConnectionPropertyKeyKAFKACUSTOMCERT,
  ConnectionPropertyKeyKAFKASKIPCUSTOMCERTVALIDATION,
  ConnectionPropertyKeyKAFKASSLENABLED,
  ConnectionPropertyKeyPASSWORD,
  ConnectionPropertyKeyPORT,
  ConnectionPropertyKeySECRETID,
  ConnectionPropertyKeySKIPCUSTOMJDBCCERTVALIDATION,
  ConnectionPropertyKeyUSERNAME,
  ConnectionPropertyKey'
  #-}

instance Prelude.FromText ConnectionPropertyKey where
  parser = ConnectionPropertyKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionPropertyKey where
  toText (ConnectionPropertyKey' x) = x

instance Prelude.Hashable ConnectionPropertyKey

instance Prelude.NFData ConnectionPropertyKey

instance Prelude.ToByteString ConnectionPropertyKey

instance Prelude.ToQuery ConnectionPropertyKey

instance Prelude.ToHeader ConnectionPropertyKey

instance Prelude.ToJSON ConnectionPropertyKey where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConnectionPropertyKey where
  parseJSON = Prelude.parseJSONText "ConnectionPropertyKey"
