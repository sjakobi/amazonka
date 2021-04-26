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
-- Module      : Network.AWS.Cloud9.Types.Permissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.Permissions
  ( Permissions
      ( ..,
        PermissionsOwner,
        PermissionsReadOnly,
        PermissionsReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Permissions = Permissions'
  { fromPermissions ::
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

pattern PermissionsOwner :: Permissions
pattern PermissionsOwner = Permissions' "owner"

pattern PermissionsReadOnly :: Permissions
pattern PermissionsReadOnly = Permissions' "read-only"

pattern PermissionsReadWrite :: Permissions
pattern PermissionsReadWrite = Permissions' "read-write"

{-# COMPLETE
  PermissionsOwner,
  PermissionsReadOnly,
  PermissionsReadWrite,
  Permissions'
  #-}

instance Prelude.FromText Permissions where
  parser = Permissions' Prelude.<$> Prelude.takeText

instance Prelude.ToText Permissions where
  toText (Permissions' x) = x

instance Prelude.Hashable Permissions

instance Prelude.NFData Permissions

instance Prelude.ToByteString Permissions

instance Prelude.ToQuery Permissions

instance Prelude.ToHeader Permissions

instance Prelude.ToJSON Permissions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Permissions where
  parseJSON = Prelude.parseJSONText "Permissions"
