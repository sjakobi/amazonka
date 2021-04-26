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
-- Module      : Network.AWS.FMS.Types.SecurityServiceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.SecurityServiceType
  ( SecurityServiceType
      ( ..,
        SecurityServiceTypeNETWORKFIREWALL,
        SecurityServiceTypeSECURITYGROUPSCOMMON,
        SecurityServiceTypeSECURITYGROUPSCONTENTAUDIT,
        SecurityServiceTypeSECURITYGROUPSUSAGEAUDIT,
        SecurityServiceTypeSHIELDADVANCED,
        SecurityServiceTypeWAF,
        SecurityServiceTypeWAFV2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SecurityServiceType = SecurityServiceType'
  { fromSecurityServiceType ::
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

pattern SecurityServiceTypeNETWORKFIREWALL :: SecurityServiceType
pattern SecurityServiceTypeNETWORKFIREWALL = SecurityServiceType' "NETWORK_FIREWALL"

pattern SecurityServiceTypeSECURITYGROUPSCOMMON :: SecurityServiceType
pattern SecurityServiceTypeSECURITYGROUPSCOMMON = SecurityServiceType' "SECURITY_GROUPS_COMMON"

pattern SecurityServiceTypeSECURITYGROUPSCONTENTAUDIT :: SecurityServiceType
pattern SecurityServiceTypeSECURITYGROUPSCONTENTAUDIT = SecurityServiceType' "SECURITY_GROUPS_CONTENT_AUDIT"

pattern SecurityServiceTypeSECURITYGROUPSUSAGEAUDIT :: SecurityServiceType
pattern SecurityServiceTypeSECURITYGROUPSUSAGEAUDIT = SecurityServiceType' "SECURITY_GROUPS_USAGE_AUDIT"

pattern SecurityServiceTypeSHIELDADVANCED :: SecurityServiceType
pattern SecurityServiceTypeSHIELDADVANCED = SecurityServiceType' "SHIELD_ADVANCED"

pattern SecurityServiceTypeWAF :: SecurityServiceType
pattern SecurityServiceTypeWAF = SecurityServiceType' "WAF"

pattern SecurityServiceTypeWAFV2 :: SecurityServiceType
pattern SecurityServiceTypeWAFV2 = SecurityServiceType' "WAFV2"

{-# COMPLETE
  SecurityServiceTypeNETWORKFIREWALL,
  SecurityServiceTypeSECURITYGROUPSCOMMON,
  SecurityServiceTypeSECURITYGROUPSCONTENTAUDIT,
  SecurityServiceTypeSECURITYGROUPSUSAGEAUDIT,
  SecurityServiceTypeSHIELDADVANCED,
  SecurityServiceTypeWAF,
  SecurityServiceTypeWAFV2,
  SecurityServiceType'
  #-}

instance Prelude.FromText SecurityServiceType where
  parser = SecurityServiceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SecurityServiceType where
  toText (SecurityServiceType' x) = x

instance Prelude.Hashable SecurityServiceType

instance Prelude.NFData SecurityServiceType

instance Prelude.ToByteString SecurityServiceType

instance Prelude.ToQuery SecurityServiceType

instance Prelude.ToHeader SecurityServiceType

instance Prelude.ToJSON SecurityServiceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SecurityServiceType where
  parseJSON = Prelude.parseJSONText "SecurityServiceType"
