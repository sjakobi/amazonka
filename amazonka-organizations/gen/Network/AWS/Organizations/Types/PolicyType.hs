{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.PolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.PolicyType
  ( PolicyType
      ( ..,
        AiservicesOptOutPolicy,
        BackupPolicy,
        ServiceControlPolicy,
        TagPolicy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicyType = PolicyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AiservicesOptOutPolicy :: PolicyType
pattern AiservicesOptOutPolicy = PolicyType' "AISERVICES_OPT_OUT_POLICY"

pattern BackupPolicy :: PolicyType
pattern BackupPolicy = PolicyType' "BACKUP_POLICY"

pattern ServiceControlPolicy :: PolicyType
pattern ServiceControlPolicy = PolicyType' "SERVICE_CONTROL_POLICY"

pattern TagPolicy :: PolicyType
pattern TagPolicy = PolicyType' "TAG_POLICY"

{-# COMPLETE
  AiservicesOptOutPolicy,
  BackupPolicy,
  ServiceControlPolicy,
  TagPolicy,
  PolicyType'
  #-}

instance FromText PolicyType where
  parser = (PolicyType' . mk) <$> takeText

instance ToText PolicyType where
  toText (PolicyType' ci) = original ci

instance Hashable PolicyType

instance NFData PolicyType

instance ToByteString PolicyType

instance ToQuery PolicyType

instance ToHeader PolicyType

instance ToJSON PolicyType where
  toJSON = toJSONText

instance FromJSON PolicyType where
  parseJSON = parseJSONText "PolicyType"
