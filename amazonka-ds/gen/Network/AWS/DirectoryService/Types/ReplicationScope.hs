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
-- Module      : Network.AWS.DirectoryService.Types.ReplicationScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ReplicationScope
  ( ReplicationScope
      ( ..,
        ReplicationScopeDomain
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationScope = ReplicationScope'
  { fromReplicationScope ::
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

pattern ReplicationScopeDomain :: ReplicationScope
pattern ReplicationScopeDomain = ReplicationScope' "Domain"

{-# COMPLETE
  ReplicationScopeDomain,
  ReplicationScope'
  #-}

instance Prelude.FromText ReplicationScope where
  parser = ReplicationScope' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationScope where
  toText (ReplicationScope' x) = x

instance Prelude.Hashable ReplicationScope

instance Prelude.NFData ReplicationScope

instance Prelude.ToByteString ReplicationScope

instance Prelude.ToQuery ReplicationScope

instance Prelude.ToHeader ReplicationScope

instance Prelude.FromJSON ReplicationScope where
  parseJSON = Prelude.parseJSONText "ReplicationScope"
