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
-- Module      : Network.AWS.CostExplorer.Types.Dimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Dimension
  ( Dimension
      ( ..,
        DimensionAGREEMENTENDDATETIMEAFTER,
        DimensionAGREEMENTENDDATETIMEBEFORE,
        DimensionAZ,
        DimensionBILLINGENTITY,
        DimensionCACHEENGINE,
        DimensionDATABASEENGINE,
        DimensionDEPLOYMENTOPTION,
        DimensionINSTANCETYPE,
        DimensionINSTANCETYPEFAMILY,
        DimensionLEGALENTITYNAME,
        DimensionLINKEDACCOUNT,
        DimensionLINKEDACCOUNTNAME,
        DimensionOPERATINGSYSTEM,
        DimensionOPERATION,
        DimensionPAYMENTOPTION,
        DimensionPLATFORM,
        DimensionPURCHASETYPE,
        DimensionRECORDTYPE,
        DimensionREGION,
        DimensionRESERVATIONID,
        DimensionRESOURCEID,
        DimensionRIGHTSIZINGTYPE,
        DimensionSAVINGSPLANARN,
        DimensionSAVINGSPLANSTYPE,
        DimensionSCOPE,
        DimensionSERVICE,
        DimensionSERVICECODE,
        DimensionSUBSCRIPTIONID,
        DimensionTENANCY,
        DimensionUSAGETYPE,
        DimensionUSAGETYPEGROUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Dimension = Dimension'
  { fromDimension ::
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

pattern DimensionAGREEMENTENDDATETIMEAFTER :: Dimension
pattern DimensionAGREEMENTENDDATETIMEAFTER = Dimension' "AGREEMENT_END_DATE_TIME_AFTER"

pattern DimensionAGREEMENTENDDATETIMEBEFORE :: Dimension
pattern DimensionAGREEMENTENDDATETIMEBEFORE = Dimension' "AGREEMENT_END_DATE_TIME_BEFORE"

pattern DimensionAZ :: Dimension
pattern DimensionAZ = Dimension' "AZ"

pattern DimensionBILLINGENTITY :: Dimension
pattern DimensionBILLINGENTITY = Dimension' "BILLING_ENTITY"

pattern DimensionCACHEENGINE :: Dimension
pattern DimensionCACHEENGINE = Dimension' "CACHE_ENGINE"

pattern DimensionDATABASEENGINE :: Dimension
pattern DimensionDATABASEENGINE = Dimension' "DATABASE_ENGINE"

pattern DimensionDEPLOYMENTOPTION :: Dimension
pattern DimensionDEPLOYMENTOPTION = Dimension' "DEPLOYMENT_OPTION"

pattern DimensionINSTANCETYPE :: Dimension
pattern DimensionINSTANCETYPE = Dimension' "INSTANCE_TYPE"

pattern DimensionINSTANCETYPEFAMILY :: Dimension
pattern DimensionINSTANCETYPEFAMILY = Dimension' "INSTANCE_TYPE_FAMILY"

pattern DimensionLEGALENTITYNAME :: Dimension
pattern DimensionLEGALENTITYNAME = Dimension' "LEGAL_ENTITY_NAME"

pattern DimensionLINKEDACCOUNT :: Dimension
pattern DimensionLINKEDACCOUNT = Dimension' "LINKED_ACCOUNT"

pattern DimensionLINKEDACCOUNTNAME :: Dimension
pattern DimensionLINKEDACCOUNTNAME = Dimension' "LINKED_ACCOUNT_NAME"

pattern DimensionOPERATINGSYSTEM :: Dimension
pattern DimensionOPERATINGSYSTEM = Dimension' "OPERATING_SYSTEM"

pattern DimensionOPERATION :: Dimension
pattern DimensionOPERATION = Dimension' "OPERATION"

pattern DimensionPAYMENTOPTION :: Dimension
pattern DimensionPAYMENTOPTION = Dimension' "PAYMENT_OPTION"

pattern DimensionPLATFORM :: Dimension
pattern DimensionPLATFORM = Dimension' "PLATFORM"

pattern DimensionPURCHASETYPE :: Dimension
pattern DimensionPURCHASETYPE = Dimension' "PURCHASE_TYPE"

pattern DimensionRECORDTYPE :: Dimension
pattern DimensionRECORDTYPE = Dimension' "RECORD_TYPE"

pattern DimensionREGION :: Dimension
pattern DimensionREGION = Dimension' "REGION"

pattern DimensionRESERVATIONID :: Dimension
pattern DimensionRESERVATIONID = Dimension' "RESERVATION_ID"

pattern DimensionRESOURCEID :: Dimension
pattern DimensionRESOURCEID = Dimension' "RESOURCE_ID"

pattern DimensionRIGHTSIZINGTYPE :: Dimension
pattern DimensionRIGHTSIZINGTYPE = Dimension' "RIGHTSIZING_TYPE"

pattern DimensionSAVINGSPLANARN :: Dimension
pattern DimensionSAVINGSPLANARN = Dimension' "SAVINGS_PLAN_ARN"

pattern DimensionSAVINGSPLANSTYPE :: Dimension
pattern DimensionSAVINGSPLANSTYPE = Dimension' "SAVINGS_PLANS_TYPE"

pattern DimensionSCOPE :: Dimension
pattern DimensionSCOPE = Dimension' "SCOPE"

pattern DimensionSERVICE :: Dimension
pattern DimensionSERVICE = Dimension' "SERVICE"

pattern DimensionSERVICECODE :: Dimension
pattern DimensionSERVICECODE = Dimension' "SERVICE_CODE"

pattern DimensionSUBSCRIPTIONID :: Dimension
pattern DimensionSUBSCRIPTIONID = Dimension' "SUBSCRIPTION_ID"

pattern DimensionTENANCY :: Dimension
pattern DimensionTENANCY = Dimension' "TENANCY"

pattern DimensionUSAGETYPE :: Dimension
pattern DimensionUSAGETYPE = Dimension' "USAGE_TYPE"

pattern DimensionUSAGETYPEGROUP :: Dimension
pattern DimensionUSAGETYPEGROUP = Dimension' "USAGE_TYPE_GROUP"

{-# COMPLETE
  DimensionAGREEMENTENDDATETIMEAFTER,
  DimensionAGREEMENTENDDATETIMEBEFORE,
  DimensionAZ,
  DimensionBILLINGENTITY,
  DimensionCACHEENGINE,
  DimensionDATABASEENGINE,
  DimensionDEPLOYMENTOPTION,
  DimensionINSTANCETYPE,
  DimensionINSTANCETYPEFAMILY,
  DimensionLEGALENTITYNAME,
  DimensionLINKEDACCOUNT,
  DimensionLINKEDACCOUNTNAME,
  DimensionOPERATINGSYSTEM,
  DimensionOPERATION,
  DimensionPAYMENTOPTION,
  DimensionPLATFORM,
  DimensionPURCHASETYPE,
  DimensionRECORDTYPE,
  DimensionREGION,
  DimensionRESERVATIONID,
  DimensionRESOURCEID,
  DimensionRIGHTSIZINGTYPE,
  DimensionSAVINGSPLANARN,
  DimensionSAVINGSPLANSTYPE,
  DimensionSCOPE,
  DimensionSERVICE,
  DimensionSERVICECODE,
  DimensionSUBSCRIPTIONID,
  DimensionTENANCY,
  DimensionUSAGETYPE,
  DimensionUSAGETYPEGROUP,
  Dimension'
  #-}

instance Prelude.FromText Dimension where
  parser = Dimension' Prelude.<$> Prelude.takeText

instance Prelude.ToText Dimension where
  toText (Dimension' x) = x

instance Prelude.Hashable Dimension

instance Prelude.NFData Dimension

instance Prelude.ToByteString Dimension

instance Prelude.ToQuery Dimension

instance Prelude.ToHeader Dimension

instance Prelude.ToJSON Dimension where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Dimension where
  parseJSON = Prelude.parseJSONText "Dimension"
