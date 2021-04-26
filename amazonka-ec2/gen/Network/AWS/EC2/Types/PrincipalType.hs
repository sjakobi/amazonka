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
-- Module      : Network.AWS.EC2.Types.PrincipalType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PrincipalType
  ( PrincipalType
      ( ..,
        PrincipalTypeAccount,
        PrincipalTypeAll,
        PrincipalTypeOrganizationUnit,
        PrincipalTypeRole,
        PrincipalTypeService',
        PrincipalTypeUser
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PrincipalType = PrincipalType'
  { fromPrincipalType ::
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

pattern PrincipalTypeAccount :: PrincipalType
pattern PrincipalTypeAccount = PrincipalType' "Account"

pattern PrincipalTypeAll :: PrincipalType
pattern PrincipalTypeAll = PrincipalType' "All"

pattern PrincipalTypeOrganizationUnit :: PrincipalType
pattern PrincipalTypeOrganizationUnit = PrincipalType' "OrganizationUnit"

pattern PrincipalTypeRole :: PrincipalType
pattern PrincipalTypeRole = PrincipalType' "Role"

pattern PrincipalTypeService' :: PrincipalType
pattern PrincipalTypeService' = PrincipalType' "Service"

pattern PrincipalTypeUser :: PrincipalType
pattern PrincipalTypeUser = PrincipalType' "User"

{-# COMPLETE
  PrincipalTypeAccount,
  PrincipalTypeAll,
  PrincipalTypeOrganizationUnit,
  PrincipalTypeRole,
  PrincipalTypeService',
  PrincipalTypeUser,
  PrincipalType'
  #-}

instance Prelude.FromText PrincipalType where
  parser = PrincipalType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PrincipalType where
  toText (PrincipalType' x) = x

instance Prelude.Hashable PrincipalType

instance Prelude.NFData PrincipalType

instance Prelude.ToByteString PrincipalType

instance Prelude.ToQuery PrincipalType

instance Prelude.ToHeader PrincipalType

instance Prelude.FromXML PrincipalType where
  parseXML = Prelude.parseXMLText "PrincipalType"
