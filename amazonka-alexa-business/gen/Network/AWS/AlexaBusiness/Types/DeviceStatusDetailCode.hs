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
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
  ( DeviceStatusDetailCode
      ( ..,
        DeviceStatusDetailCodeASSOCIATIONREJECTION,
        DeviceStatusDetailCodeAUTHENTICATIONFAILURE,
        DeviceStatusDetailCodeCERTIFICATEAUTHORITYACCESSDENIED,
        DeviceStatusDetailCodeCERTIFICATEISSUINGLIMITEXCEEDED,
        DeviceStatusDetailCodeCREDENTIALSACCESSFAILURE,
        DeviceStatusDetailCodeDEVICESOFTWAREUPDATENEEDED,
        DeviceStatusDetailCodeDEVICEWASOFFLINE,
        DeviceStatusDetailCodeDHCPFAILURE,
        DeviceStatusDetailCodeDNSFAILURE,
        DeviceStatusDetailCodeINTERNETUNAVAILABLE,
        DeviceStatusDetailCodeINVALIDCERTIFICATEAUTHORITY,
        DeviceStatusDetailCodeINVALIDPASSWORDSTATE,
        DeviceStatusDetailCodeNETWORKPROFILENOTFOUND,
        DeviceStatusDetailCodePASSWORDMANAGERACCESSDENIED,
        DeviceStatusDetailCodePASSWORDNOTFOUND,
        DeviceStatusDetailCodeTLSVERSIONMISMATCH,
        DeviceStatusDetailCodeUNKNOWNFAILURE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceStatusDetailCode = DeviceStatusDetailCode'
  { fromDeviceStatusDetailCode ::
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

pattern DeviceStatusDetailCodeASSOCIATIONREJECTION :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeASSOCIATIONREJECTION = DeviceStatusDetailCode' "ASSOCIATION_REJECTION"

pattern DeviceStatusDetailCodeAUTHENTICATIONFAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeAUTHENTICATIONFAILURE = DeviceStatusDetailCode' "AUTHENTICATION_FAILURE"

pattern DeviceStatusDetailCodeCERTIFICATEAUTHORITYACCESSDENIED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeCERTIFICATEAUTHORITYACCESSDENIED = DeviceStatusDetailCode' "CERTIFICATE_AUTHORITY_ACCESS_DENIED"

pattern DeviceStatusDetailCodeCERTIFICATEISSUINGLIMITEXCEEDED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeCERTIFICATEISSUINGLIMITEXCEEDED = DeviceStatusDetailCode' "CERTIFICATE_ISSUING_LIMIT_EXCEEDED"

pattern DeviceStatusDetailCodeCREDENTIALSACCESSFAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeCREDENTIALSACCESSFAILURE = DeviceStatusDetailCode' "CREDENTIALS_ACCESS_FAILURE"

pattern DeviceStatusDetailCodeDEVICESOFTWAREUPDATENEEDED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeDEVICESOFTWAREUPDATENEEDED = DeviceStatusDetailCode' "DEVICE_SOFTWARE_UPDATE_NEEDED"

pattern DeviceStatusDetailCodeDEVICEWASOFFLINE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeDEVICEWASOFFLINE = DeviceStatusDetailCode' "DEVICE_WAS_OFFLINE"

pattern DeviceStatusDetailCodeDHCPFAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeDHCPFAILURE = DeviceStatusDetailCode' "DHCP_FAILURE"

pattern DeviceStatusDetailCodeDNSFAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeDNSFAILURE = DeviceStatusDetailCode' "DNS_FAILURE"

pattern DeviceStatusDetailCodeINTERNETUNAVAILABLE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeINTERNETUNAVAILABLE = DeviceStatusDetailCode' "INTERNET_UNAVAILABLE"

pattern DeviceStatusDetailCodeINVALIDCERTIFICATEAUTHORITY :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeINVALIDCERTIFICATEAUTHORITY = DeviceStatusDetailCode' "INVALID_CERTIFICATE_AUTHORITY"

pattern DeviceStatusDetailCodeINVALIDPASSWORDSTATE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeINVALIDPASSWORDSTATE = DeviceStatusDetailCode' "INVALID_PASSWORD_STATE"

pattern DeviceStatusDetailCodeNETWORKPROFILENOTFOUND :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeNETWORKPROFILENOTFOUND = DeviceStatusDetailCode' "NETWORK_PROFILE_NOT_FOUND"

pattern DeviceStatusDetailCodePASSWORDMANAGERACCESSDENIED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodePASSWORDMANAGERACCESSDENIED = DeviceStatusDetailCode' "PASSWORD_MANAGER_ACCESS_DENIED"

pattern DeviceStatusDetailCodePASSWORDNOTFOUND :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodePASSWORDNOTFOUND = DeviceStatusDetailCode' "PASSWORD_NOT_FOUND"

pattern DeviceStatusDetailCodeTLSVERSIONMISMATCH :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeTLSVERSIONMISMATCH = DeviceStatusDetailCode' "TLS_VERSION_MISMATCH"

pattern DeviceStatusDetailCodeUNKNOWNFAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCodeUNKNOWNFAILURE = DeviceStatusDetailCode' "UNKNOWN_FAILURE"

{-# COMPLETE
  DeviceStatusDetailCodeASSOCIATIONREJECTION,
  DeviceStatusDetailCodeAUTHENTICATIONFAILURE,
  DeviceStatusDetailCodeCERTIFICATEAUTHORITYACCESSDENIED,
  DeviceStatusDetailCodeCERTIFICATEISSUINGLIMITEXCEEDED,
  DeviceStatusDetailCodeCREDENTIALSACCESSFAILURE,
  DeviceStatusDetailCodeDEVICESOFTWAREUPDATENEEDED,
  DeviceStatusDetailCodeDEVICEWASOFFLINE,
  DeviceStatusDetailCodeDHCPFAILURE,
  DeviceStatusDetailCodeDNSFAILURE,
  DeviceStatusDetailCodeINTERNETUNAVAILABLE,
  DeviceStatusDetailCodeINVALIDCERTIFICATEAUTHORITY,
  DeviceStatusDetailCodeINVALIDPASSWORDSTATE,
  DeviceStatusDetailCodeNETWORKPROFILENOTFOUND,
  DeviceStatusDetailCodePASSWORDMANAGERACCESSDENIED,
  DeviceStatusDetailCodePASSWORDNOTFOUND,
  DeviceStatusDetailCodeTLSVERSIONMISMATCH,
  DeviceStatusDetailCodeUNKNOWNFAILURE,
  DeviceStatusDetailCode'
  #-}

instance Prelude.FromText DeviceStatusDetailCode where
  parser = DeviceStatusDetailCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceStatusDetailCode where
  toText (DeviceStatusDetailCode' x) = x

instance Prelude.Hashable DeviceStatusDetailCode

instance Prelude.NFData DeviceStatusDetailCode

instance Prelude.ToByteString DeviceStatusDetailCode

instance Prelude.ToQuery DeviceStatusDetailCode

instance Prelude.ToHeader DeviceStatusDetailCode

instance Prelude.FromJSON DeviceStatusDetailCode where
  parseJSON = Prelude.parseJSONText "DeviceStatusDetailCode"
