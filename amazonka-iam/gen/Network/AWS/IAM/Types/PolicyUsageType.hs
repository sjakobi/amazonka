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
-- Module      : Network.AWS.IAM.Types.PolicyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyUsageType
  ( PolicyUsageType
      ( ..,
        PolicyUsageTypePermissionsBoundary,
        PolicyUsageTypePermissionsPolicy
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The policy usage type that indicates whether the policy is used as a
-- permissions policy or as the permissions boundary for an entity.
--
-- For more information about permissions boundaries, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html Permissions boundaries for IAM identities>
-- in the /IAM User Guide/.
newtype PolicyUsageType = PolicyUsageType'
  { fromPolicyUsageType ::
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

pattern PolicyUsageTypePermissionsBoundary :: PolicyUsageType
pattern PolicyUsageTypePermissionsBoundary = PolicyUsageType' "PermissionsBoundary"

pattern PolicyUsageTypePermissionsPolicy :: PolicyUsageType
pattern PolicyUsageTypePermissionsPolicy = PolicyUsageType' "PermissionsPolicy"

{-# COMPLETE
  PolicyUsageTypePermissionsBoundary,
  PolicyUsageTypePermissionsPolicy,
  PolicyUsageType'
  #-}

instance Prelude.FromText PolicyUsageType where
  parser = PolicyUsageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyUsageType where
  toText (PolicyUsageType' x) = x

instance Prelude.Hashable PolicyUsageType

instance Prelude.NFData PolicyUsageType

instance Prelude.ToByteString PolicyUsageType

instance Prelude.ToQuery PolicyUsageType

instance Prelude.ToHeader PolicyUsageType
