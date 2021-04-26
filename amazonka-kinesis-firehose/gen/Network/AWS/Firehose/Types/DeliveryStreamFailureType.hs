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
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamFailureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamFailureType
  ( DeliveryStreamFailureType
      ( ..,
        DeliveryStreamFailureTypeCREATEENIFAILED,
        DeliveryStreamFailureTypeCREATEKMSGRANTFAILED,
        DeliveryStreamFailureTypeDELETEENIFAILED,
        DeliveryStreamFailureTypeDISABLEDKMSKEY,
        DeliveryStreamFailureTypeENIACCESSDENIED,
        DeliveryStreamFailureTypeINVALIDKMSKEY,
        DeliveryStreamFailureTypeKMSACCESSDENIED,
        DeliveryStreamFailureTypeKMSKEYNOTFOUND,
        DeliveryStreamFailureTypeKMSOPTINREQUIRED,
        DeliveryStreamFailureTypeRETIREKMSGRANTFAILED,
        DeliveryStreamFailureTypeSECURITYGROUPACCESSDENIED,
        DeliveryStreamFailureTypeSECURITYGROUPNOTFOUND,
        DeliveryStreamFailureTypeSUBNETACCESSDENIED,
        DeliveryStreamFailureTypeSUBNETNOTFOUND,
        DeliveryStreamFailureTypeUNKNOWNERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryStreamFailureType = DeliveryStreamFailureType'
  { fromDeliveryStreamFailureType ::
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

pattern DeliveryStreamFailureTypeCREATEENIFAILED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeCREATEENIFAILED = DeliveryStreamFailureType' "CREATE_ENI_FAILED"

pattern DeliveryStreamFailureTypeCREATEKMSGRANTFAILED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeCREATEKMSGRANTFAILED = DeliveryStreamFailureType' "CREATE_KMS_GRANT_FAILED"

pattern DeliveryStreamFailureTypeDELETEENIFAILED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeDELETEENIFAILED = DeliveryStreamFailureType' "DELETE_ENI_FAILED"

pattern DeliveryStreamFailureTypeDISABLEDKMSKEY :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeDISABLEDKMSKEY = DeliveryStreamFailureType' "DISABLED_KMS_KEY"

pattern DeliveryStreamFailureTypeENIACCESSDENIED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeENIACCESSDENIED = DeliveryStreamFailureType' "ENI_ACCESS_DENIED"

pattern DeliveryStreamFailureTypeINVALIDKMSKEY :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeINVALIDKMSKEY = DeliveryStreamFailureType' "INVALID_KMS_KEY"

pattern DeliveryStreamFailureTypeKMSACCESSDENIED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeKMSACCESSDENIED = DeliveryStreamFailureType' "KMS_ACCESS_DENIED"

pattern DeliveryStreamFailureTypeKMSKEYNOTFOUND :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeKMSKEYNOTFOUND = DeliveryStreamFailureType' "KMS_KEY_NOT_FOUND"

pattern DeliveryStreamFailureTypeKMSOPTINREQUIRED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeKMSOPTINREQUIRED = DeliveryStreamFailureType' "KMS_OPT_IN_REQUIRED"

pattern DeliveryStreamFailureTypeRETIREKMSGRANTFAILED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeRETIREKMSGRANTFAILED = DeliveryStreamFailureType' "RETIRE_KMS_GRANT_FAILED"

pattern DeliveryStreamFailureTypeSECURITYGROUPACCESSDENIED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeSECURITYGROUPACCESSDENIED = DeliveryStreamFailureType' "SECURITY_GROUP_ACCESS_DENIED"

pattern DeliveryStreamFailureTypeSECURITYGROUPNOTFOUND :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeSECURITYGROUPNOTFOUND = DeliveryStreamFailureType' "SECURITY_GROUP_NOT_FOUND"

pattern DeliveryStreamFailureTypeSUBNETACCESSDENIED :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeSUBNETACCESSDENIED = DeliveryStreamFailureType' "SUBNET_ACCESS_DENIED"

pattern DeliveryStreamFailureTypeSUBNETNOTFOUND :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeSUBNETNOTFOUND = DeliveryStreamFailureType' "SUBNET_NOT_FOUND"

pattern DeliveryStreamFailureTypeUNKNOWNERROR :: DeliveryStreamFailureType
pattern DeliveryStreamFailureTypeUNKNOWNERROR = DeliveryStreamFailureType' "UNKNOWN_ERROR"

{-# COMPLETE
  DeliveryStreamFailureTypeCREATEENIFAILED,
  DeliveryStreamFailureTypeCREATEKMSGRANTFAILED,
  DeliveryStreamFailureTypeDELETEENIFAILED,
  DeliveryStreamFailureTypeDISABLEDKMSKEY,
  DeliveryStreamFailureTypeENIACCESSDENIED,
  DeliveryStreamFailureTypeINVALIDKMSKEY,
  DeliveryStreamFailureTypeKMSACCESSDENIED,
  DeliveryStreamFailureTypeKMSKEYNOTFOUND,
  DeliveryStreamFailureTypeKMSOPTINREQUIRED,
  DeliveryStreamFailureTypeRETIREKMSGRANTFAILED,
  DeliveryStreamFailureTypeSECURITYGROUPACCESSDENIED,
  DeliveryStreamFailureTypeSECURITYGROUPNOTFOUND,
  DeliveryStreamFailureTypeSUBNETACCESSDENIED,
  DeliveryStreamFailureTypeSUBNETNOTFOUND,
  DeliveryStreamFailureTypeUNKNOWNERROR,
  DeliveryStreamFailureType'
  #-}

instance Prelude.FromText DeliveryStreamFailureType where
  parser = DeliveryStreamFailureType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryStreamFailureType where
  toText (DeliveryStreamFailureType' x) = x

instance Prelude.Hashable DeliveryStreamFailureType

instance Prelude.NFData DeliveryStreamFailureType

instance Prelude.ToByteString DeliveryStreamFailureType

instance Prelude.ToQuery DeliveryStreamFailureType

instance Prelude.ToHeader DeliveryStreamFailureType

instance Prelude.FromJSON DeliveryStreamFailureType where
  parseJSON = Prelude.parseJSONText "DeliveryStreamFailureType"
