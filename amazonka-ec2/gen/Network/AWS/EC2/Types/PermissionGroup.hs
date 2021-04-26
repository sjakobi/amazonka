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
-- Module      : Network.AWS.EC2.Types.PermissionGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PermissionGroup
  ( PermissionGroup
      ( ..,
        PermissionGroupAll
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype PermissionGroup = PermissionGroup'
  { fromPermissionGroup ::
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

pattern PermissionGroupAll :: PermissionGroup
pattern PermissionGroupAll = PermissionGroup' "all"

{-# COMPLETE
  PermissionGroupAll,
  PermissionGroup'
  #-}

instance Prelude.FromText PermissionGroup where
  parser = PermissionGroup' Prelude.<$> Prelude.takeText

instance Prelude.ToText PermissionGroup where
  toText (PermissionGroup' x) = x

instance Prelude.Hashable PermissionGroup

instance Prelude.NFData PermissionGroup

instance Prelude.ToByteString PermissionGroup

instance Prelude.ToQuery PermissionGroup

instance Prelude.ToHeader PermissionGroup

instance Prelude.FromXML PermissionGroup where
  parseXML = Prelude.parseXMLText "PermissionGroup"
