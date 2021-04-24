{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.SecurityServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.SecurityServiceType
  ( SecurityServiceType
      ( ..,
        NetworkFirewall,
        SecurityGroupsCommon,
        SecurityGroupsContentAudit,
        SecurityGroupsUsageAudit,
        ShieldAdvanced,
        WAFV2,
        Waf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SecurityServiceType
  = SecurityServiceType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NetworkFirewall :: SecurityServiceType
pattern NetworkFirewall = SecurityServiceType' "NETWORK_FIREWALL"

pattern SecurityGroupsCommon :: SecurityServiceType
pattern SecurityGroupsCommon = SecurityServiceType' "SECURITY_GROUPS_COMMON"

pattern SecurityGroupsContentAudit :: SecurityServiceType
pattern SecurityGroupsContentAudit = SecurityServiceType' "SECURITY_GROUPS_CONTENT_AUDIT"

pattern SecurityGroupsUsageAudit :: SecurityServiceType
pattern SecurityGroupsUsageAudit = SecurityServiceType' "SECURITY_GROUPS_USAGE_AUDIT"

pattern ShieldAdvanced :: SecurityServiceType
pattern ShieldAdvanced = SecurityServiceType' "SHIELD_ADVANCED"

pattern WAFV2 :: SecurityServiceType
pattern WAFV2 = SecurityServiceType' "WAFV2"

pattern Waf :: SecurityServiceType
pattern Waf = SecurityServiceType' "WAF"

{-# COMPLETE
  NetworkFirewall,
  SecurityGroupsCommon,
  SecurityGroupsContentAudit,
  SecurityGroupsUsageAudit,
  ShieldAdvanced,
  WAFV2,
  Waf,
  SecurityServiceType'
  #-}

instance FromText SecurityServiceType where
  parser = (SecurityServiceType' . mk) <$> takeText

instance ToText SecurityServiceType where
  toText (SecurityServiceType' ci) = original ci

instance Hashable SecurityServiceType

instance NFData SecurityServiceType

instance ToByteString SecurityServiceType

instance ToQuery SecurityServiceType

instance ToHeader SecurityServiceType

instance ToJSON SecurityServiceType where
  toJSON = toJSONText

instance FromJSON SecurityServiceType where
  parseJSON = parseJSONText "SecurityServiceType"
