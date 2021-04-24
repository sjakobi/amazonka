{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.UpgradeStep
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.UpgradeStep
  ( UpgradeStep
      ( ..,
        PreUpgradeCheck,
        Snapshot,
        Upgrade
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpgradeStep = UpgradeStep' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PreUpgradeCheck :: UpgradeStep
pattern PreUpgradeCheck = UpgradeStep' "PRE_UPGRADE_CHECK"

pattern Snapshot :: UpgradeStep
pattern Snapshot = UpgradeStep' "SNAPSHOT"

pattern Upgrade :: UpgradeStep
pattern Upgrade = UpgradeStep' "UPGRADE"

{-# COMPLETE
  PreUpgradeCheck,
  Snapshot,
  Upgrade,
  UpgradeStep'
  #-}

instance FromText UpgradeStep where
  parser = (UpgradeStep' . mk) <$> takeText

instance ToText UpgradeStep where
  toText (UpgradeStep' ci) = original ci

instance Hashable UpgradeStep

instance NFData UpgradeStep

instance ToByteString UpgradeStep

instance ToQuery UpgradeStep

instance ToHeader UpgradeStep

instance FromJSON UpgradeStep where
  parseJSON = parseJSONText "UpgradeStep"
