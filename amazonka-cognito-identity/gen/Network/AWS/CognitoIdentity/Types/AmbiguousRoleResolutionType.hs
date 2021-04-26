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
-- Module      : Network.AWS.CognitoIdentity.Types.AmbiguousRoleResolutionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.AmbiguousRoleResolutionType
  ( AmbiguousRoleResolutionType
      ( ..,
        AmbiguousRoleResolutionTypeAuthenticatedRole,
        AmbiguousRoleResolutionTypeDeny
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AmbiguousRoleResolutionType = AmbiguousRoleResolutionType'
  { fromAmbiguousRoleResolutionType ::
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

pattern AmbiguousRoleResolutionTypeAuthenticatedRole :: AmbiguousRoleResolutionType
pattern AmbiguousRoleResolutionTypeAuthenticatedRole = AmbiguousRoleResolutionType' "AuthenticatedRole"

pattern AmbiguousRoleResolutionTypeDeny :: AmbiguousRoleResolutionType
pattern AmbiguousRoleResolutionTypeDeny = AmbiguousRoleResolutionType' "Deny"

{-# COMPLETE
  AmbiguousRoleResolutionTypeAuthenticatedRole,
  AmbiguousRoleResolutionTypeDeny,
  AmbiguousRoleResolutionType'
  #-}

instance Prelude.FromText AmbiguousRoleResolutionType where
  parser = AmbiguousRoleResolutionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AmbiguousRoleResolutionType where
  toText (AmbiguousRoleResolutionType' x) = x

instance Prelude.Hashable AmbiguousRoleResolutionType

instance Prelude.NFData AmbiguousRoleResolutionType

instance Prelude.ToByteString AmbiguousRoleResolutionType

instance Prelude.ToQuery AmbiguousRoleResolutionType

instance Prelude.ToHeader AmbiguousRoleResolutionType

instance Prelude.ToJSON AmbiguousRoleResolutionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AmbiguousRoleResolutionType where
  parseJSON = Prelude.parseJSONText "AmbiguousRoleResolutionType"
