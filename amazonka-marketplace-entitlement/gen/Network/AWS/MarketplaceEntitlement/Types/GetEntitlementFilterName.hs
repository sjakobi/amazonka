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
-- Module      : Network.AWS.MarketplaceEntitlement.Types.GetEntitlementFilterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceEntitlement.Types.GetEntitlementFilterName
  ( GetEntitlementFilterName
      ( ..,
        GetEntitlementFilterNameCUSTOMERIDENTIFIER,
        GetEntitlementFilterNameDIMENSION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GetEntitlementFilterName = GetEntitlementFilterName'
  { fromGetEntitlementFilterName ::
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

pattern GetEntitlementFilterNameCUSTOMERIDENTIFIER :: GetEntitlementFilterName
pattern GetEntitlementFilterNameCUSTOMERIDENTIFIER = GetEntitlementFilterName' "CUSTOMER_IDENTIFIER"

pattern GetEntitlementFilterNameDIMENSION :: GetEntitlementFilterName
pattern GetEntitlementFilterNameDIMENSION = GetEntitlementFilterName' "DIMENSION"

{-# COMPLETE
  GetEntitlementFilterNameCUSTOMERIDENTIFIER,
  GetEntitlementFilterNameDIMENSION,
  GetEntitlementFilterName'
  #-}

instance Prelude.FromText GetEntitlementFilterName where
  parser = GetEntitlementFilterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText GetEntitlementFilterName where
  toText (GetEntitlementFilterName' x) = x

instance Prelude.Hashable GetEntitlementFilterName

instance Prelude.NFData GetEntitlementFilterName

instance Prelude.ToByteString GetEntitlementFilterName

instance Prelude.ToQuery GetEntitlementFilterName

instance Prelude.ToHeader GetEntitlementFilterName

instance Prelude.ToJSON GetEntitlementFilterName where
  toJSON = Prelude.toJSONText
