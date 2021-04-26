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
-- Module      : Network.AWS.Route53Domains.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.OperationType
  ( OperationType
      ( ..,
        OperationTypeADDDNSSEC,
        OperationTypeCHANGEDOMAINOWNER,
        OperationTypeCHANGEPRIVACYPROTECTION,
        OperationTypeDELETEDOMAIN,
        OperationTypeDISABLEAUTORENEW,
        OperationTypeDOMAINLOCK,
        OperationTypeENABLEAUTORENEW,
        OperationTypeEXPIREDOMAIN,
        OperationTypeINTERNALTRANSFERINDOMAIN,
        OperationTypeINTERNALTRANSFEROUTDOMAIN,
        OperationTypePUSHDOMAIN,
        OperationTypeREGISTERDOMAIN,
        OperationTypeREMOVEDNSSEC,
        OperationTypeRENEWDOMAIN,
        OperationTypeTRANSFERINDOMAIN,
        OperationTypeTRANSFEROUTDOMAIN,
        OperationTypeUPDATEDOMAINCONTACT,
        OperationTypeUPDATENAMESERVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OperationType = OperationType'
  { fromOperationType ::
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

pattern OperationTypeADDDNSSEC :: OperationType
pattern OperationTypeADDDNSSEC = OperationType' "ADD_DNSSEC"

pattern OperationTypeCHANGEDOMAINOWNER :: OperationType
pattern OperationTypeCHANGEDOMAINOWNER = OperationType' "CHANGE_DOMAIN_OWNER"

pattern OperationTypeCHANGEPRIVACYPROTECTION :: OperationType
pattern OperationTypeCHANGEPRIVACYPROTECTION = OperationType' "CHANGE_PRIVACY_PROTECTION"

pattern OperationTypeDELETEDOMAIN :: OperationType
pattern OperationTypeDELETEDOMAIN = OperationType' "DELETE_DOMAIN"

pattern OperationTypeDISABLEAUTORENEW :: OperationType
pattern OperationTypeDISABLEAUTORENEW = OperationType' "DISABLE_AUTORENEW"

pattern OperationTypeDOMAINLOCK :: OperationType
pattern OperationTypeDOMAINLOCK = OperationType' "DOMAIN_LOCK"

pattern OperationTypeENABLEAUTORENEW :: OperationType
pattern OperationTypeENABLEAUTORENEW = OperationType' "ENABLE_AUTORENEW"

pattern OperationTypeEXPIREDOMAIN :: OperationType
pattern OperationTypeEXPIREDOMAIN = OperationType' "EXPIRE_DOMAIN"

pattern OperationTypeINTERNALTRANSFERINDOMAIN :: OperationType
pattern OperationTypeINTERNALTRANSFERINDOMAIN = OperationType' "INTERNAL_TRANSFER_IN_DOMAIN"

pattern OperationTypeINTERNALTRANSFEROUTDOMAIN :: OperationType
pattern OperationTypeINTERNALTRANSFEROUTDOMAIN = OperationType' "INTERNAL_TRANSFER_OUT_DOMAIN"

pattern OperationTypePUSHDOMAIN :: OperationType
pattern OperationTypePUSHDOMAIN = OperationType' "PUSH_DOMAIN"

pattern OperationTypeREGISTERDOMAIN :: OperationType
pattern OperationTypeREGISTERDOMAIN = OperationType' "REGISTER_DOMAIN"

pattern OperationTypeREMOVEDNSSEC :: OperationType
pattern OperationTypeREMOVEDNSSEC = OperationType' "REMOVE_DNSSEC"

pattern OperationTypeRENEWDOMAIN :: OperationType
pattern OperationTypeRENEWDOMAIN = OperationType' "RENEW_DOMAIN"

pattern OperationTypeTRANSFERINDOMAIN :: OperationType
pattern OperationTypeTRANSFERINDOMAIN = OperationType' "TRANSFER_IN_DOMAIN"

pattern OperationTypeTRANSFEROUTDOMAIN :: OperationType
pattern OperationTypeTRANSFEROUTDOMAIN = OperationType' "TRANSFER_OUT_DOMAIN"

pattern OperationTypeUPDATEDOMAINCONTACT :: OperationType
pattern OperationTypeUPDATEDOMAINCONTACT = OperationType' "UPDATE_DOMAIN_CONTACT"

pattern OperationTypeUPDATENAMESERVER :: OperationType
pattern OperationTypeUPDATENAMESERVER = OperationType' "UPDATE_NAMESERVER"

{-# COMPLETE
  OperationTypeADDDNSSEC,
  OperationTypeCHANGEDOMAINOWNER,
  OperationTypeCHANGEPRIVACYPROTECTION,
  OperationTypeDELETEDOMAIN,
  OperationTypeDISABLEAUTORENEW,
  OperationTypeDOMAINLOCK,
  OperationTypeENABLEAUTORENEW,
  OperationTypeEXPIREDOMAIN,
  OperationTypeINTERNALTRANSFERINDOMAIN,
  OperationTypeINTERNALTRANSFEROUTDOMAIN,
  OperationTypePUSHDOMAIN,
  OperationTypeREGISTERDOMAIN,
  OperationTypeREMOVEDNSSEC,
  OperationTypeRENEWDOMAIN,
  OperationTypeTRANSFERINDOMAIN,
  OperationTypeTRANSFEROUTDOMAIN,
  OperationTypeUPDATEDOMAINCONTACT,
  OperationTypeUPDATENAMESERVER,
  OperationType'
  #-}

instance Prelude.FromText OperationType where
  parser = OperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationType where
  toText (OperationType' x) = x

instance Prelude.Hashable OperationType

instance Prelude.NFData OperationType

instance Prelude.ToByteString OperationType

instance Prelude.ToQuery OperationType

instance Prelude.ToHeader OperationType

instance Prelude.FromJSON OperationType where
  parseJSON = Prelude.parseJSONText "OperationType"
