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
-- Module      : Network.AWS.AppStream.Types.FleetAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.FleetAttribute
  ( FleetAttribute
      ( ..,
        FleetAttributeDOMAINJOININFO,
        FleetAttributeIAMROLEARN,
        FleetAttributeVPCCONFIGURATION,
        FleetAttributeVPCCONFIGURATIONSECURITYGROUPIDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The fleet attribute.
newtype FleetAttribute = FleetAttribute'
  { fromFleetAttribute ::
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

pattern FleetAttributeDOMAINJOININFO :: FleetAttribute
pattern FleetAttributeDOMAINJOININFO = FleetAttribute' "DOMAIN_JOIN_INFO"

pattern FleetAttributeIAMROLEARN :: FleetAttribute
pattern FleetAttributeIAMROLEARN = FleetAttribute' "IAM_ROLE_ARN"

pattern FleetAttributeVPCCONFIGURATION :: FleetAttribute
pattern FleetAttributeVPCCONFIGURATION = FleetAttribute' "VPC_CONFIGURATION"

pattern FleetAttributeVPCCONFIGURATIONSECURITYGROUPIDS :: FleetAttribute
pattern FleetAttributeVPCCONFIGURATIONSECURITYGROUPIDS = FleetAttribute' "VPC_CONFIGURATION_SECURITY_GROUP_IDS"

{-# COMPLETE
  FleetAttributeDOMAINJOININFO,
  FleetAttributeIAMROLEARN,
  FleetAttributeVPCCONFIGURATION,
  FleetAttributeVPCCONFIGURATIONSECURITYGROUPIDS,
  FleetAttribute'
  #-}

instance Prelude.FromText FleetAttribute where
  parser = FleetAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetAttribute where
  toText (FleetAttribute' x) = x

instance Prelude.Hashable FleetAttribute

instance Prelude.NFData FleetAttribute

instance Prelude.ToByteString FleetAttribute

instance Prelude.ToQuery FleetAttribute

instance Prelude.ToHeader FleetAttribute

instance Prelude.ToJSON FleetAttribute where
  toJSON = Prelude.toJSONText
