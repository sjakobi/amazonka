{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceEntitlement.Types.GetEntitlementFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceEntitlement.Types.GetEntitlementFilterName
  ( GetEntitlementFilterName
      ( ..,
        CustomerIdentifier,
        Dimension
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GetEntitlementFilterName
  = GetEntitlementFilterName'
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

pattern CustomerIdentifier :: GetEntitlementFilterName
pattern CustomerIdentifier = GetEntitlementFilterName' "CUSTOMER_IDENTIFIER"

pattern Dimension :: GetEntitlementFilterName
pattern Dimension = GetEntitlementFilterName' "DIMENSION"

{-# COMPLETE
  CustomerIdentifier,
  Dimension,
  GetEntitlementFilterName'
  #-}

instance FromText GetEntitlementFilterName where
  parser = (GetEntitlementFilterName' . mk) <$> takeText

instance ToText GetEntitlementFilterName where
  toText (GetEntitlementFilterName' ci) = original ci

instance Hashable GetEntitlementFilterName

instance NFData GetEntitlementFilterName

instance ToByteString GetEntitlementFilterName

instance ToQuery GetEntitlementFilterName

instance ToHeader GetEntitlementFilterName

instance ToJSON GetEntitlementFilterName where
  toJSON = toJSONText
