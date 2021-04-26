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
-- Module      : Network.AWS.WorkDocs.Types.RolePermissionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.RolePermissionType
  ( RolePermissionType
      ( ..,
        RolePermissionTypeDIRECT,
        RolePermissionTypeINHERITED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RolePermissionType = RolePermissionType'
  { fromRolePermissionType ::
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

pattern RolePermissionTypeDIRECT :: RolePermissionType
pattern RolePermissionTypeDIRECT = RolePermissionType' "DIRECT"

pattern RolePermissionTypeINHERITED :: RolePermissionType
pattern RolePermissionTypeINHERITED = RolePermissionType' "INHERITED"

{-# COMPLETE
  RolePermissionTypeDIRECT,
  RolePermissionTypeINHERITED,
  RolePermissionType'
  #-}

instance Prelude.FromText RolePermissionType where
  parser = RolePermissionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RolePermissionType where
  toText (RolePermissionType' x) = x

instance Prelude.Hashable RolePermissionType

instance Prelude.NFData RolePermissionType

instance Prelude.ToByteString RolePermissionType

instance Prelude.ToQuery RolePermissionType

instance Prelude.ToHeader RolePermissionType

instance Prelude.FromJSON RolePermissionType where
  parseJSON = Prelude.parseJSONText "RolePermissionType"
