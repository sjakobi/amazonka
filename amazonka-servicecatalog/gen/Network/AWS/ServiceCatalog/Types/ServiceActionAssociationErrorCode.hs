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
-- Module      : Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ServiceActionAssociationErrorCode
  ( ServiceActionAssociationErrorCode
      ( ..,
        ServiceActionAssociationErrorCodeDUPLICATERESOURCE,
        ServiceActionAssociationErrorCodeINTERNALFAILURE,
        ServiceActionAssociationErrorCodeLIMITEXCEEDED,
        ServiceActionAssociationErrorCodeRESOURCENOTFOUND,
        ServiceActionAssociationErrorCodeTHROTTLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServiceActionAssociationErrorCode = ServiceActionAssociationErrorCode'
  { fromServiceActionAssociationErrorCode ::
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

pattern ServiceActionAssociationErrorCodeDUPLICATERESOURCE :: ServiceActionAssociationErrorCode
pattern ServiceActionAssociationErrorCodeDUPLICATERESOURCE = ServiceActionAssociationErrorCode' "DUPLICATE_RESOURCE"

pattern ServiceActionAssociationErrorCodeINTERNALFAILURE :: ServiceActionAssociationErrorCode
pattern ServiceActionAssociationErrorCodeINTERNALFAILURE = ServiceActionAssociationErrorCode' "INTERNAL_FAILURE"

pattern ServiceActionAssociationErrorCodeLIMITEXCEEDED :: ServiceActionAssociationErrorCode
pattern ServiceActionAssociationErrorCodeLIMITEXCEEDED = ServiceActionAssociationErrorCode' "LIMIT_EXCEEDED"

pattern ServiceActionAssociationErrorCodeRESOURCENOTFOUND :: ServiceActionAssociationErrorCode
pattern ServiceActionAssociationErrorCodeRESOURCENOTFOUND = ServiceActionAssociationErrorCode' "RESOURCE_NOT_FOUND"

pattern ServiceActionAssociationErrorCodeTHROTTLING :: ServiceActionAssociationErrorCode
pattern ServiceActionAssociationErrorCodeTHROTTLING = ServiceActionAssociationErrorCode' "THROTTLING"

{-# COMPLETE
  ServiceActionAssociationErrorCodeDUPLICATERESOURCE,
  ServiceActionAssociationErrorCodeINTERNALFAILURE,
  ServiceActionAssociationErrorCodeLIMITEXCEEDED,
  ServiceActionAssociationErrorCodeRESOURCENOTFOUND,
  ServiceActionAssociationErrorCodeTHROTTLING,
  ServiceActionAssociationErrorCode'
  #-}

instance Prelude.FromText ServiceActionAssociationErrorCode where
  parser = ServiceActionAssociationErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServiceActionAssociationErrorCode where
  toText (ServiceActionAssociationErrorCode' x) = x

instance Prelude.Hashable ServiceActionAssociationErrorCode

instance Prelude.NFData ServiceActionAssociationErrorCode

instance Prelude.ToByteString ServiceActionAssociationErrorCode

instance Prelude.ToQuery ServiceActionAssociationErrorCode

instance Prelude.ToHeader ServiceActionAssociationErrorCode

instance Prelude.FromJSON ServiceActionAssociationErrorCode where
  parseJSON = Prelude.parseJSONText "ServiceActionAssociationErrorCode"
