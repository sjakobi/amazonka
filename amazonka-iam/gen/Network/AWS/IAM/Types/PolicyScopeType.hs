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
-- Module      : Network.AWS.IAM.Types.PolicyScopeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyScopeType
  ( PolicyScopeType
      ( ..,
        PolicyScopeTypeAWS,
        PolicyScopeTypeAll,
        PolicyScopeTypeLocal
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyScopeType = PolicyScopeType'
  { fromPolicyScopeType ::
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

pattern PolicyScopeTypeAWS :: PolicyScopeType
pattern PolicyScopeTypeAWS = PolicyScopeType' "AWS"

pattern PolicyScopeTypeAll :: PolicyScopeType
pattern PolicyScopeTypeAll = PolicyScopeType' "All"

pattern PolicyScopeTypeLocal :: PolicyScopeType
pattern PolicyScopeTypeLocal = PolicyScopeType' "Local"

{-# COMPLETE
  PolicyScopeTypeAWS,
  PolicyScopeTypeAll,
  PolicyScopeTypeLocal,
  PolicyScopeType'
  #-}

instance Prelude.FromText PolicyScopeType where
  parser = PolicyScopeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyScopeType where
  toText (PolicyScopeType' x) = x

instance Prelude.Hashable PolicyScopeType

instance Prelude.NFData PolicyScopeType

instance Prelude.ToByteString PolicyScopeType

instance Prelude.ToQuery PolicyScopeType

instance Prelude.ToHeader PolicyScopeType
