{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.CustomerPolicyScopeIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.CustomerPolicyScopeIdType
  ( CustomerPolicyScopeIdType
      ( ..,
        Account,
        OrgUnit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomerPolicyScopeIdType
  = CustomerPolicyScopeIdType'
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

pattern Account :: CustomerPolicyScopeIdType
pattern Account = CustomerPolicyScopeIdType' "ACCOUNT"

pattern OrgUnit :: CustomerPolicyScopeIdType
pattern OrgUnit = CustomerPolicyScopeIdType' "ORG_UNIT"

{-# COMPLETE
  Account,
  OrgUnit,
  CustomerPolicyScopeIdType'
  #-}

instance FromText CustomerPolicyScopeIdType where
  parser = (CustomerPolicyScopeIdType' . mk) <$> takeText

instance ToText CustomerPolicyScopeIdType where
  toText (CustomerPolicyScopeIdType' ci) = original ci

instance Hashable CustomerPolicyScopeIdType

instance NFData CustomerPolicyScopeIdType

instance ToByteString CustomerPolicyScopeIdType

instance ToQuery CustomerPolicyScopeIdType

instance ToHeader CustomerPolicyScopeIdType

instance ToJSON CustomerPolicyScopeIdType where
  toJSON = toJSONText

instance FromJSON CustomerPolicyScopeIdType where
  parseJSON = parseJSONText "CustomerPolicyScopeIdType"
