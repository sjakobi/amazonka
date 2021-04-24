{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ExclusiveAutomaticTruncation,
        RelyOnSqlServerReplicationAgent,
        SharedAutomaticTruncation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SafeguardPolicy = SafeguardPolicy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ExclusiveAutomaticTruncation :: SafeguardPolicy
pattern ExclusiveAutomaticTruncation = SafeguardPolicy' "exclusive-automatic-truncation"

pattern RelyOnSqlServerReplicationAgent :: SafeguardPolicy
pattern RelyOnSqlServerReplicationAgent = SafeguardPolicy' "rely-on-sql-server-replication-agent"

pattern SharedAutomaticTruncation :: SafeguardPolicy
pattern SharedAutomaticTruncation = SafeguardPolicy' "shared-automatic-truncation"

{-# COMPLETE
  ExclusiveAutomaticTruncation,
  RelyOnSqlServerReplicationAgent,
  SharedAutomaticTruncation,
  SafeguardPolicy'
  #-}

instance FromText SafeguardPolicy where
  parser = (SafeguardPolicy' . mk) <$> takeText

instance ToText SafeguardPolicy where
  toText (SafeguardPolicy' ci) = original ci

instance Hashable SafeguardPolicy

instance NFData SafeguardPolicy

instance ToByteString SafeguardPolicy

instance ToQuery SafeguardPolicy

instance ToHeader SafeguardPolicy

instance ToJSON SafeguardPolicy where
  toJSON = toJSONText

instance FromJSON SafeguardPolicy where
  parseJSON = parseJSONText "SafeguardPolicy"
