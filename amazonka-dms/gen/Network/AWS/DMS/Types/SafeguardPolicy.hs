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
-- Module      : Network.AWS.DMS.Types.SafeguardPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.SafeguardPolicy
  ( SafeguardPolicy
      ( ..,
        SafeguardPolicyExclusiveAutomaticTruncation,
        SafeguardPolicyRelyOnSqlServerReplicationAgent,
        SafeguardPolicySharedAutomaticTruncation
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SafeguardPolicy = SafeguardPolicy'
  { fromSafeguardPolicy ::
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

pattern SafeguardPolicyExclusiveAutomaticTruncation :: SafeguardPolicy
pattern SafeguardPolicyExclusiveAutomaticTruncation = SafeguardPolicy' "exclusive-automatic-truncation"

pattern SafeguardPolicyRelyOnSqlServerReplicationAgent :: SafeguardPolicy
pattern SafeguardPolicyRelyOnSqlServerReplicationAgent = SafeguardPolicy' "rely-on-sql-server-replication-agent"

pattern SafeguardPolicySharedAutomaticTruncation :: SafeguardPolicy
pattern SafeguardPolicySharedAutomaticTruncation = SafeguardPolicy' "shared-automatic-truncation"

{-# COMPLETE
  SafeguardPolicyExclusiveAutomaticTruncation,
  SafeguardPolicyRelyOnSqlServerReplicationAgent,
  SafeguardPolicySharedAutomaticTruncation,
  SafeguardPolicy'
  #-}

instance Prelude.FromText SafeguardPolicy where
  parser = SafeguardPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SafeguardPolicy where
  toText (SafeguardPolicy' x) = x

instance Prelude.Hashable SafeguardPolicy

instance Prelude.NFData SafeguardPolicy

instance Prelude.ToByteString SafeguardPolicy

instance Prelude.ToQuery SafeguardPolicy

instance Prelude.ToHeader SafeguardPolicy

instance Prelude.ToJSON SafeguardPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SafeguardPolicy where
  parseJSON = Prelude.parseJSONText "SafeguardPolicy"
