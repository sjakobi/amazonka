{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FADomainJoinInfo,
        FAIAMRoleARN,
        FAVPCConfiguration,
        FAVPCConfigurationSecurityGroupIds
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The fleet attribute.
data FleetAttribute = FleetAttribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FADomainJoinInfo :: FleetAttribute
pattern FADomainJoinInfo = FleetAttribute' "DOMAIN_JOIN_INFO"

pattern FAIAMRoleARN :: FleetAttribute
pattern FAIAMRoleARN = FleetAttribute' "IAM_ROLE_ARN"

pattern FAVPCConfiguration :: FleetAttribute
pattern FAVPCConfiguration = FleetAttribute' "VPC_CONFIGURATION"

pattern FAVPCConfigurationSecurityGroupIds :: FleetAttribute
pattern FAVPCConfigurationSecurityGroupIds = FleetAttribute' "VPC_CONFIGURATION_SECURITY_GROUP_IDS"

{-# COMPLETE
  FADomainJoinInfo,
  FAIAMRoleARN,
  FAVPCConfiguration,
  FAVPCConfigurationSecurityGroupIds,
  FleetAttribute'
  #-}

instance FromText FleetAttribute where
  parser = (FleetAttribute' . mk) <$> takeText

instance ToText FleetAttribute where
  toText (FleetAttribute' ci) = original ci

instance Hashable FleetAttribute

instance NFData FleetAttribute

instance ToByteString FleetAttribute

instance ToQuery FleetAttribute

instance ToHeader FleetAttribute

instance ToJSON FleetAttribute where
  toJSON = toJSONText
