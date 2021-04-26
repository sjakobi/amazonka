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
-- Module      : Network.AWS.KMS.Types.ConnectionErrorCodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.ConnectionErrorCodeType
  ( ConnectionErrorCodeType
      ( ..,
        ConnectionErrorCodeTypeCLUSTERNOTFOUND,
        ConnectionErrorCodeTypeINSUFFICIENTCLOUDHSMHSMS,
        ConnectionErrorCodeTypeINTERNALERROR,
        ConnectionErrorCodeTypeINVALIDCREDENTIALS,
        ConnectionErrorCodeTypeNETWORKERRORS,
        ConnectionErrorCodeTypeSUBNETNOTFOUND,
        ConnectionErrorCodeTypeUSERLOCKEDOUT,
        ConnectionErrorCodeTypeUSERLOGGEDIN,
        ConnectionErrorCodeTypeUSERNOTFOUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionErrorCodeType = ConnectionErrorCodeType'
  { fromConnectionErrorCodeType ::
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

pattern ConnectionErrorCodeTypeCLUSTERNOTFOUND :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeCLUSTERNOTFOUND = ConnectionErrorCodeType' "CLUSTER_NOT_FOUND"

pattern ConnectionErrorCodeTypeINSUFFICIENTCLOUDHSMHSMS :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeINSUFFICIENTCLOUDHSMHSMS = ConnectionErrorCodeType' "INSUFFICIENT_CLOUDHSM_HSMS"

pattern ConnectionErrorCodeTypeINTERNALERROR :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeINTERNALERROR = ConnectionErrorCodeType' "INTERNAL_ERROR"

pattern ConnectionErrorCodeTypeINVALIDCREDENTIALS :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeINVALIDCREDENTIALS = ConnectionErrorCodeType' "INVALID_CREDENTIALS"

pattern ConnectionErrorCodeTypeNETWORKERRORS :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeNETWORKERRORS = ConnectionErrorCodeType' "NETWORK_ERRORS"

pattern ConnectionErrorCodeTypeSUBNETNOTFOUND :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeSUBNETNOTFOUND = ConnectionErrorCodeType' "SUBNET_NOT_FOUND"

pattern ConnectionErrorCodeTypeUSERLOCKEDOUT :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeUSERLOCKEDOUT = ConnectionErrorCodeType' "USER_LOCKED_OUT"

pattern ConnectionErrorCodeTypeUSERLOGGEDIN :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeUSERLOGGEDIN = ConnectionErrorCodeType' "USER_LOGGED_IN"

pattern ConnectionErrorCodeTypeUSERNOTFOUND :: ConnectionErrorCodeType
pattern ConnectionErrorCodeTypeUSERNOTFOUND = ConnectionErrorCodeType' "USER_NOT_FOUND"

{-# COMPLETE
  ConnectionErrorCodeTypeCLUSTERNOTFOUND,
  ConnectionErrorCodeTypeINSUFFICIENTCLOUDHSMHSMS,
  ConnectionErrorCodeTypeINTERNALERROR,
  ConnectionErrorCodeTypeINVALIDCREDENTIALS,
  ConnectionErrorCodeTypeNETWORKERRORS,
  ConnectionErrorCodeTypeSUBNETNOTFOUND,
  ConnectionErrorCodeTypeUSERLOCKEDOUT,
  ConnectionErrorCodeTypeUSERLOGGEDIN,
  ConnectionErrorCodeTypeUSERNOTFOUND,
  ConnectionErrorCodeType'
  #-}

instance Prelude.FromText ConnectionErrorCodeType where
  parser = ConnectionErrorCodeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionErrorCodeType where
  toText (ConnectionErrorCodeType' x) = x

instance Prelude.Hashable ConnectionErrorCodeType

instance Prelude.NFData ConnectionErrorCodeType

instance Prelude.ToByteString ConnectionErrorCodeType

instance Prelude.ToQuery ConnectionErrorCodeType

instance Prelude.ToHeader ConnectionErrorCodeType

instance Prelude.FromJSON ConnectionErrorCodeType where
  parseJSON = Prelude.parseJSONText "ConnectionErrorCodeType"
