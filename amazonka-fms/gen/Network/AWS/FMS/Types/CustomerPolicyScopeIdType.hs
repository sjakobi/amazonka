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
-- Module      : Network.AWS.FMS.Types.CustomerPolicyScopeIdType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.CustomerPolicyScopeIdType
  ( CustomerPolicyScopeIdType
      ( ..,
        CustomerPolicyScopeIdTypeACCOUNT,
        CustomerPolicyScopeIdTypeORGUNIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CustomerPolicyScopeIdType = CustomerPolicyScopeIdType'
  { fromCustomerPolicyScopeIdType ::
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

pattern CustomerPolicyScopeIdTypeACCOUNT :: CustomerPolicyScopeIdType
pattern CustomerPolicyScopeIdTypeACCOUNT = CustomerPolicyScopeIdType' "ACCOUNT"

pattern CustomerPolicyScopeIdTypeORGUNIT :: CustomerPolicyScopeIdType
pattern CustomerPolicyScopeIdTypeORGUNIT = CustomerPolicyScopeIdType' "ORG_UNIT"

{-# COMPLETE
  CustomerPolicyScopeIdTypeACCOUNT,
  CustomerPolicyScopeIdTypeORGUNIT,
  CustomerPolicyScopeIdType'
  #-}

instance Prelude.FromText CustomerPolicyScopeIdType where
  parser = CustomerPolicyScopeIdType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CustomerPolicyScopeIdType where
  toText (CustomerPolicyScopeIdType' x) = x

instance Prelude.Hashable CustomerPolicyScopeIdType

instance Prelude.NFData CustomerPolicyScopeIdType

instance Prelude.ToByteString CustomerPolicyScopeIdType

instance Prelude.ToQuery CustomerPolicyScopeIdType

instance Prelude.ToHeader CustomerPolicyScopeIdType

instance Prelude.ToJSON CustomerPolicyScopeIdType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CustomerPolicyScopeIdType where
  parseJSON = Prelude.parseJSONText "CustomerPolicyScopeIdType"
