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
-- Module      : Network.AWS.IAM.Types.EntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.EntityType
  ( EntityType
      ( ..,
        EntityTypeAWSManagedPolicy,
        EntityTypeGroup,
        EntityTypeLocalManagedPolicy,
        EntityTypeRole,
        EntityTypeUser
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityType = EntityType'
  { fromEntityType ::
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

pattern EntityTypeAWSManagedPolicy :: EntityType
pattern EntityTypeAWSManagedPolicy = EntityType' "AWSManagedPolicy"

pattern EntityTypeGroup :: EntityType
pattern EntityTypeGroup = EntityType' "Group"

pattern EntityTypeLocalManagedPolicy :: EntityType
pattern EntityTypeLocalManagedPolicy = EntityType' "LocalManagedPolicy"

pattern EntityTypeRole :: EntityType
pattern EntityTypeRole = EntityType' "Role"

pattern EntityTypeUser :: EntityType
pattern EntityTypeUser = EntityType' "User"

{-# COMPLETE
  EntityTypeAWSManagedPolicy,
  EntityTypeGroup,
  EntityTypeLocalManagedPolicy,
  EntityTypeRole,
  EntityTypeUser,
  EntityType'
  #-}

instance Prelude.FromText EntityType where
  parser = EntityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityType where
  toText (EntityType' x) = x

instance Prelude.Hashable EntityType

instance Prelude.NFData EntityType

instance Prelude.ToByteString EntityType

instance Prelude.ToQuery EntityType

instance Prelude.ToHeader EntityType
