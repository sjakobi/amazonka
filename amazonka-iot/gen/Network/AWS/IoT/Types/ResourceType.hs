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
-- Module      : Network.AWS.IoT.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ResourceType
  ( ResourceType
      ( ..,
        ResourceTypeACCOUNTSETTINGS,
        ResourceTypeCACERTIFICATE,
        ResourceTypeCLIENTID,
        ResourceTypeCOGNITOIDENTITYPOOL,
        ResourceTypeDEVICECERTIFICATE,
        ResourceTypeIAMROLE,
        ResourceTypeIOTPOLICY,
        ResourceTypeROLEALIAS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceType = ResourceType'
  { fromResourceType ::
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

pattern ResourceTypeACCOUNTSETTINGS :: ResourceType
pattern ResourceTypeACCOUNTSETTINGS = ResourceType' "ACCOUNT_SETTINGS"

pattern ResourceTypeCACERTIFICATE :: ResourceType
pattern ResourceTypeCACERTIFICATE = ResourceType' "CA_CERTIFICATE"

pattern ResourceTypeCLIENTID :: ResourceType
pattern ResourceTypeCLIENTID = ResourceType' "CLIENT_ID"

pattern ResourceTypeCOGNITOIDENTITYPOOL :: ResourceType
pattern ResourceTypeCOGNITOIDENTITYPOOL = ResourceType' "COGNITO_IDENTITY_POOL"

pattern ResourceTypeDEVICECERTIFICATE :: ResourceType
pattern ResourceTypeDEVICECERTIFICATE = ResourceType' "DEVICE_CERTIFICATE"

pattern ResourceTypeIAMROLE :: ResourceType
pattern ResourceTypeIAMROLE = ResourceType' "IAM_ROLE"

pattern ResourceTypeIOTPOLICY :: ResourceType
pattern ResourceTypeIOTPOLICY = ResourceType' "IOT_POLICY"

pattern ResourceTypeROLEALIAS :: ResourceType
pattern ResourceTypeROLEALIAS = ResourceType' "ROLE_ALIAS"

{-# COMPLETE
  ResourceTypeACCOUNTSETTINGS,
  ResourceTypeCACERTIFICATE,
  ResourceTypeCLIENTID,
  ResourceTypeCOGNITOIDENTITYPOOL,
  ResourceTypeDEVICECERTIFICATE,
  ResourceTypeIAMROLE,
  ResourceTypeIOTPOLICY,
  ResourceTypeROLEALIAS,
  ResourceType'
  #-}

instance Prelude.FromText ResourceType where
  parser = ResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceType where
  toText (ResourceType' x) = x

instance Prelude.Hashable ResourceType

instance Prelude.NFData ResourceType

instance Prelude.ToByteString ResourceType

instance Prelude.ToQuery ResourceType

instance Prelude.ToHeader ResourceType

instance Prelude.FromJSON ResourceType where
  parseJSON = Prelude.parseJSONText "ResourceType"
