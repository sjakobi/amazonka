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
        DimensionDimensionAGREEMENTENDDATETIMEAFTER,
        DimensionDimensionAGREEMENTENDDATETIMEBEFORE,
        DimensionDimensionAZ,
        DimensionDimensionBILLINGENTITY,
        DimensionDimensionCACHEENGINE,
        DimensionDimensionDATABASEENGINE,
        DimensionDimensionDEPLOYMENTOPTION,
        DimensionDimensionINSTANCETYPE,
        DimensionDimensionINSTANCETYPEFAMILY,
        DimensionDimensionLEGALENTITYNAME,
        DimensionDimensionLINKEDACCOUNT,
        DimensionDimensionLINKEDACCOUNTNAME,
        DimensionDimensionOPERATINGSYSTEM,
        DimensionDimensionOPERATION,
        DimensionDimensionPAYMENTOPTION,
        DimensionDimensionPLATFORM,
        DimensionDimensionPURCHASETYPE,
        DimensionDimensionRECORDTYPE,
        DimensionDimensionREGION,
        DimensionDimensionRESERVATIONID,
        DimensionDimensionRESOURCEID,
        DimensionDimensionRIGHTSIZINGTYPE,
        DimensionDimensionSAVINGSPLANARN,
        DimensionDimensionSAVINGSPLANSTYPE,
        DimensionDimensionSCOPE,
        DimensionDimensionSERVICE,
        DimensionDimensionSERVICECODE,
        DimensionDimensionSUBSCRIPTIONID,
        DimensionDimensionTENANCY,
        DimensionDimensionUSAGETYPE,
        DimensionDimensionUSAGETYPEGROUP
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

pattern DimensionDimensionAGREEMENTENDDATETIMEAFTER :: Dimension
pattern DimensionDimensionAGREEMENTENDDATETIMEAFTER = Dimension' "AGREEMENT_END_DATE_TIME_AFTER"

pattern DimensionDimensionAGREEMENTENDDATETIMEBEFORE :: Dimension
pattern DimensionDimensionAGREEMENTENDDATETIMEBEFORE = Dimension' "AGREEMENT_END_DATE_TIME_BEFORE"

pattern DimensionDimensionAZ :: Dimension
pattern DimensionDimensionAZ = Dimension' "AZ"

pattern DimensionDimensionBILLINGENTITY :: Dimension
pattern DimensionDimensionBILLINGENTITY = Dimension' "BILLING_ENTITY"

pattern DimensionDimensionCACHEENGINE :: Dimension
pattern DimensionDimensionCACHEENGINE = Dimension' "CACHE_ENGINE"

pattern DimensionDimensionDATABASEENGINE :: Dimension
pattern DimensionDimensionDATABASEENGINE = Dimension' "DATABASE_ENGINE"

pattern DimensionDimensionDEPLOYMENTOPTION :: Dimension
pattern DimensionDimensionDEPLOYMENTOPTION = Dimension' "DEPLOYMENT_OPTION"

pattern DimensionDimensionINSTANCETYPE :: Dimension
pattern DimensionDimensionINSTANCETYPE = Dimension' "INSTANCE_TYPE"

pattern DimensionDimensionINSTANCETYPEFAMILY :: Dimension
pattern DimensionDimensionINSTANCETYPEFAMILY = Dimension' "INSTANCE_TYPE_FAMILY"

pattern DimensionDimensionLEGALENTITYNAME :: Dimension
pattern DimensionDimensionLEGALENTITYNAME = Dimension' "LEGAL_ENTITY_NAME"

pattern DimensionDimensionLINKEDACCOUNT :: Dimension
pattern DimensionDimensionLINKEDACCOUNT = Dimension' "LINKED_ACCOUNT"

pattern DimensionDimensionLINKEDACCOUNTNAME :: Dimension
pattern DimensionDimensionLINKEDACCOUNTNAME = Dimension' "LINKED_ACCOUNT_NAME"

pattern DimensionDimensionOPERATINGSYSTEM :: Dimension
pattern DimensionDimensionOPERATINGSYSTEM = Dimension' "OPERATING_SYSTEM"

pattern DimensionDimensionOPERATION :: Dimension
pattern DimensionDimensionOPERATION = Dimension' "OPERATION"

pattern DimensionDimensionPAYMENTOPTION :: Dimension
pattern DimensionDimensionPAYMENTOPTION = Dimension' "PAYMENT_OPTION"

pattern DimensionDimensionPLATFORM :: Dimension
pattern DimensionDimensionPLATFORM = Dimension' "PLATFORM"

pattern DimensionDimensionPURCHASETYPE :: Dimension
pattern DimensionDimensionPURCHASETYPE = Dimension' "PURCHASE_TYPE"

pattern DimensionDimensionRECORDTYPE :: Dimension
pattern DimensionDimensionRECORDTYPE = Dimension' "RECORD_TYPE"

pattern DimensionDimensionREGION :: Dimension
pattern DimensionDimensionREGION = Dimension' "REGION"

pattern DimensionDimensionRESERVATIONID :: Dimension
pattern DimensionDimensionRESERVATIONID = Dimension' "RESERVATION_ID"

pattern DimensionDimensionRESOURCEID :: Dimension
pattern DimensionDimensionRESOURCEID = Dimension' "RESOURCE_ID"

pattern DimensionDimensionRIGHTSIZINGTYPE :: Dimension
pattern DimensionDimensionRIGHTSIZINGTYPE = Dimension' "RIGHTSIZING_TYPE"

pattern DimensionDimensionSAVINGSPLANARN :: Dimension
pattern DimensionDimensionSAVINGSPLANARN = Dimension' "SAVINGS_PLAN_ARN"

pattern DimensionDimensionSAVINGSPLANSTYPE :: Dimension
pattern DimensionDimensionSAVINGSPLANSTYPE = Dimension' "SAVINGS_PLANS_TYPE"

pattern DimensionDimensionSCOPE :: Dimension
pattern DimensionDimensionSCOPE = Dimension' "SCOPE"

pattern DimensionDimensionSERVICE :: Dimension
pattern DimensionDimensionSERVICE = Dimension' "SERVICE"

pattern DimensionDimensionSERVICECODE :: Dimension
pattern DimensionDimensionSERVICECODE = Dimension' "SERVICE_CODE"

pattern DimensionDimensionSUBSCRIPTIONID :: Dimension
pattern DimensionDimensionSUBSCRIPTIONID = Dimension' "SUBSCRIPTION_ID"

pattern DimensionDimensionTENANCY :: Dimension
pattern DimensionDimensionTENANCY = Dimension' "TENANCY"

pattern DimensionDimensionUSAGETYPE :: Dimension
pattern DimensionDimensionUSAGETYPE = Dimension' "USAGE_TYPE"

pattern DimensionDimensionUSAGETYPEGROUP :: Dimension
pattern DimensionDimensionUSAGETYPEGROUP = Dimension' "USAGE_TYPE_GROUP"

{-# COMPLETE
  DimensionDimensionAGREEMENTENDDATETIMEAFTER,
  DimensionDimensionAGREEMENTENDDATETIMEBEFORE,
  DimensionDimensionAZ,
  DimensionDimensionBILLINGENTITY,
  DimensionDimensionCACHEENGINE,
  DimensionDimensionDATABASEENGINE,
  DimensionDimensionDEPLOYMENTOPTION,
  DimensionDimensionINSTANCETYPE,
  DimensionDimensionINSTANCETYPEFAMILY,
  DimensionDimensionLEGALENTITYNAME,
  DimensionDimensionLINKEDACCOUNT,
  DimensionDimensionLINKEDACCOUNTNAME,
  DimensionDimensionOPERATINGSYSTEM,
  DimensionDimensionOPERATION,
  DimensionDimensionPAYMENTOPTION,
  DimensionDimensionPLATFORM,
  DimensionDimensionPURCHASETYPE,
  DimensionDimensionRECORDTYPE,
  DimensionDimensionREGION,
  DimensionDimensionRESERVATIONID,
  DimensionDimensionRESOURCEID,
  DimensionDimensionRIGHTSIZINGTYPE,
  DimensionDimensionSAVINGSPLANARN,
  DimensionDimensionSAVINGSPLANSTYPE,
  DimensionDimensionSCOPE,
  DimensionDimensionSERVICE,
  DimensionDimensionSERVICECODE,
  DimensionDimensionSUBSCRIPTIONID,
  DimensionDimensionTENANCY,
  DimensionDimensionUSAGETYPE,
  DimensionDimensionUSAGETYPEGROUP,
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
