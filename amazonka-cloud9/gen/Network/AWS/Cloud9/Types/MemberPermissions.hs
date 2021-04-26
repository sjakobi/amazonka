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
-- Module      : Network.AWS.Cloud9.Types.MemberPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.MemberPermissions
  ( MemberPermissions
      ( ..,
        MemberPermissionsReadOnly,
        MemberPermissionsReadWrite
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MemberPermissions = MemberPermissions'
  { fromMemberPermissions ::
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

pattern MemberPermissionsReadOnly :: MemberPermissions
pattern MemberPermissionsReadOnly = MemberPermissions' "read-only"

pattern MemberPermissionsReadWrite :: MemberPermissions
pattern MemberPermissionsReadWrite = MemberPermissions' "read-write"

{-# COMPLETE
  MemberPermissionsReadOnly,
  MemberPermissionsReadWrite,
  MemberPermissions'
  #-}

instance Prelude.FromText MemberPermissions where
  parser = MemberPermissions' Prelude.<$> Prelude.takeText

instance Prelude.ToText MemberPermissions where
  toText (MemberPermissions' x) = x

instance Prelude.Hashable MemberPermissions

instance Prelude.NFData MemberPermissions

instance Prelude.ToByteString MemberPermissions

instance Prelude.ToQuery MemberPermissions

instance Prelude.ToHeader MemberPermissions

instance Prelude.ToJSON MemberPermissions where
  toJSON = Prelude.toJSONText
