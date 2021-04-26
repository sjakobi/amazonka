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
-- Module      : Network.AWS.Route53.Types.AccountLimitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.AccountLimitType
  ( AccountLimitType
      ( ..,
        AccountLimitTypeMAXHEALTHCHECKSBYOWNER,
        AccountLimitTypeMAXHOSTEDZONESBYOWNER,
        AccountLimitTypeMAXREUSABLEDELEGATIONSETSBYOWNER,
        AccountLimitTypeMAXTRAFFICPOLICIESBYOWNER,
        AccountLimitTypeMAXTRAFFICPOLICYINSTANCESBYOWNER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype AccountLimitType = AccountLimitType'
  { fromAccountLimitType ::
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

pattern AccountLimitTypeMAXHEALTHCHECKSBYOWNER :: AccountLimitType
pattern AccountLimitTypeMAXHEALTHCHECKSBYOWNER = AccountLimitType' "MAX_HEALTH_CHECKS_BY_OWNER"

pattern AccountLimitTypeMAXHOSTEDZONESBYOWNER :: AccountLimitType
pattern AccountLimitTypeMAXHOSTEDZONESBYOWNER = AccountLimitType' "MAX_HOSTED_ZONES_BY_OWNER"

pattern AccountLimitTypeMAXREUSABLEDELEGATIONSETSBYOWNER :: AccountLimitType
pattern AccountLimitTypeMAXREUSABLEDELEGATIONSETSBYOWNER = AccountLimitType' "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER"

pattern AccountLimitTypeMAXTRAFFICPOLICIESBYOWNER :: AccountLimitType
pattern AccountLimitTypeMAXTRAFFICPOLICIESBYOWNER = AccountLimitType' "MAX_TRAFFIC_POLICIES_BY_OWNER"

pattern AccountLimitTypeMAXTRAFFICPOLICYINSTANCESBYOWNER :: AccountLimitType
pattern AccountLimitTypeMAXTRAFFICPOLICYINSTANCESBYOWNER = AccountLimitType' "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER"

{-# COMPLETE
  AccountLimitTypeMAXHEALTHCHECKSBYOWNER,
  AccountLimitTypeMAXHOSTEDZONESBYOWNER,
  AccountLimitTypeMAXREUSABLEDELEGATIONSETSBYOWNER,
  AccountLimitTypeMAXTRAFFICPOLICIESBYOWNER,
  AccountLimitTypeMAXTRAFFICPOLICYINSTANCESBYOWNER,
  AccountLimitType'
  #-}

instance Prelude.FromText AccountLimitType where
  parser = AccountLimitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountLimitType where
  toText (AccountLimitType' x) = x

instance Prelude.Hashable AccountLimitType

instance Prelude.NFData AccountLimitType

instance Prelude.ToByteString AccountLimitType

instance Prelude.ToQuery AccountLimitType

instance Prelude.ToHeader AccountLimitType

instance Prelude.FromXML AccountLimitType where
  parseXML = Prelude.parseXMLText "AccountLimitType"

instance Prelude.ToXML AccountLimitType where
  toXML = Prelude.toXMLText
