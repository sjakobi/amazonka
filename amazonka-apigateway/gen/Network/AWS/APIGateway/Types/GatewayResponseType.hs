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
-- Module      : Network.AWS.APIGateway.Types.GatewayResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.GatewayResponseType
  ( GatewayResponseType
      ( ..,
        GatewayResponseTypeACCESSDENIED,
        GatewayResponseTypeAPICONFIGURATIONERROR,
        GatewayResponseTypeAUTHORIZERCONFIGURATIONERROR,
        GatewayResponseTypeAUTHORIZERFAILURE,
        GatewayResponseTypeBADREQUESTBODY,
        GatewayResponseTypeBADREQUESTPARAMETERS,
        GatewayResponseTypeDEFAULT4XX,
        GatewayResponseTypeDEFAULT5XX,
        GatewayResponseTypeEXPIREDTOKEN,
        GatewayResponseTypeINTEGRATIONFAILURE,
        GatewayResponseTypeINTEGRATIONTIMEOUT,
        GatewayResponseTypeINVALIDAPIKEY,
        GatewayResponseTypeINVALIDSIGNATURE,
        GatewayResponseTypeMISSINGAUTHENTICATIONTOKEN,
        GatewayResponseTypeQUOTAEXCEEDED,
        GatewayResponseTypeREQUESTTOOLARGE,
        GatewayResponseTypeRESOURCENOTFOUND,
        GatewayResponseTypeTHROTTLED,
        GatewayResponseTypeUNAUTHORIZED,
        GatewayResponseTypeUNSUPPORTEDMEDIATYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GatewayResponseType = GatewayResponseType'
  { fromGatewayResponseType ::
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

pattern GatewayResponseTypeACCESSDENIED :: GatewayResponseType
pattern GatewayResponseTypeACCESSDENIED = GatewayResponseType' "ACCESS_DENIED"

pattern GatewayResponseTypeAPICONFIGURATIONERROR :: GatewayResponseType
pattern GatewayResponseTypeAPICONFIGURATIONERROR = GatewayResponseType' "API_CONFIGURATION_ERROR"

pattern GatewayResponseTypeAUTHORIZERCONFIGURATIONERROR :: GatewayResponseType
pattern GatewayResponseTypeAUTHORIZERCONFIGURATIONERROR = GatewayResponseType' "AUTHORIZER_CONFIGURATION_ERROR"

pattern GatewayResponseTypeAUTHORIZERFAILURE :: GatewayResponseType
pattern GatewayResponseTypeAUTHORIZERFAILURE = GatewayResponseType' "AUTHORIZER_FAILURE"

pattern GatewayResponseTypeBADREQUESTBODY :: GatewayResponseType
pattern GatewayResponseTypeBADREQUESTBODY = GatewayResponseType' "BAD_REQUEST_BODY"

pattern GatewayResponseTypeBADREQUESTPARAMETERS :: GatewayResponseType
pattern GatewayResponseTypeBADREQUESTPARAMETERS = GatewayResponseType' "BAD_REQUEST_PARAMETERS"

pattern GatewayResponseTypeDEFAULT4XX :: GatewayResponseType
pattern GatewayResponseTypeDEFAULT4XX = GatewayResponseType' "DEFAULT_4XX"

pattern GatewayResponseTypeDEFAULT5XX :: GatewayResponseType
pattern GatewayResponseTypeDEFAULT5XX = GatewayResponseType' "DEFAULT_5XX"

pattern GatewayResponseTypeEXPIREDTOKEN :: GatewayResponseType
pattern GatewayResponseTypeEXPIREDTOKEN = GatewayResponseType' "EXPIRED_TOKEN"

pattern GatewayResponseTypeINTEGRATIONFAILURE :: GatewayResponseType
pattern GatewayResponseTypeINTEGRATIONFAILURE = GatewayResponseType' "INTEGRATION_FAILURE"

pattern GatewayResponseTypeINTEGRATIONTIMEOUT :: GatewayResponseType
pattern GatewayResponseTypeINTEGRATIONTIMEOUT = GatewayResponseType' "INTEGRATION_TIMEOUT"

pattern GatewayResponseTypeINVALIDAPIKEY :: GatewayResponseType
pattern GatewayResponseTypeINVALIDAPIKEY = GatewayResponseType' "INVALID_API_KEY"

pattern GatewayResponseTypeINVALIDSIGNATURE :: GatewayResponseType
pattern GatewayResponseTypeINVALIDSIGNATURE = GatewayResponseType' "INVALID_SIGNATURE"

pattern GatewayResponseTypeMISSINGAUTHENTICATIONTOKEN :: GatewayResponseType
pattern GatewayResponseTypeMISSINGAUTHENTICATIONTOKEN = GatewayResponseType' "MISSING_AUTHENTICATION_TOKEN"

pattern GatewayResponseTypeQUOTAEXCEEDED :: GatewayResponseType
pattern GatewayResponseTypeQUOTAEXCEEDED = GatewayResponseType' "QUOTA_EXCEEDED"

pattern GatewayResponseTypeREQUESTTOOLARGE :: GatewayResponseType
pattern GatewayResponseTypeREQUESTTOOLARGE = GatewayResponseType' "REQUEST_TOO_LARGE"

pattern GatewayResponseTypeRESOURCENOTFOUND :: GatewayResponseType
pattern GatewayResponseTypeRESOURCENOTFOUND = GatewayResponseType' "RESOURCE_NOT_FOUND"

pattern GatewayResponseTypeTHROTTLED :: GatewayResponseType
pattern GatewayResponseTypeTHROTTLED = GatewayResponseType' "THROTTLED"

pattern GatewayResponseTypeUNAUTHORIZED :: GatewayResponseType
pattern GatewayResponseTypeUNAUTHORIZED = GatewayResponseType' "UNAUTHORIZED"

pattern GatewayResponseTypeUNSUPPORTEDMEDIATYPE :: GatewayResponseType
pattern GatewayResponseTypeUNSUPPORTEDMEDIATYPE = GatewayResponseType' "UNSUPPORTED_MEDIA_TYPE"

{-# COMPLETE
  GatewayResponseTypeACCESSDENIED,
  GatewayResponseTypeAPICONFIGURATIONERROR,
  GatewayResponseTypeAUTHORIZERCONFIGURATIONERROR,
  GatewayResponseTypeAUTHORIZERFAILURE,
  GatewayResponseTypeBADREQUESTBODY,
  GatewayResponseTypeBADREQUESTPARAMETERS,
  GatewayResponseTypeDEFAULT4XX,
  GatewayResponseTypeDEFAULT5XX,
  GatewayResponseTypeEXPIREDTOKEN,
  GatewayResponseTypeINTEGRATIONFAILURE,
  GatewayResponseTypeINTEGRATIONTIMEOUT,
  GatewayResponseTypeINVALIDAPIKEY,
  GatewayResponseTypeINVALIDSIGNATURE,
  GatewayResponseTypeMISSINGAUTHENTICATIONTOKEN,
  GatewayResponseTypeQUOTAEXCEEDED,
  GatewayResponseTypeREQUESTTOOLARGE,
  GatewayResponseTypeRESOURCENOTFOUND,
  GatewayResponseTypeTHROTTLED,
  GatewayResponseTypeUNAUTHORIZED,
  GatewayResponseTypeUNSUPPORTEDMEDIATYPE,
  GatewayResponseType'
  #-}

instance Prelude.FromText GatewayResponseType where
  parser = GatewayResponseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GatewayResponseType where
  toText (GatewayResponseType' x) = x

instance Prelude.Hashable GatewayResponseType

instance Prelude.NFData GatewayResponseType

instance Prelude.ToByteString GatewayResponseType

instance Prelude.ToQuery GatewayResponseType

instance Prelude.ToHeader GatewayResponseType

instance Prelude.ToJSON GatewayResponseType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GatewayResponseType where
  parseJSON = Prelude.parseJSONText "GatewayResponseType"
