{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.EffectivePolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.EffectivePolicyType
  ( EffectivePolicyType
      ( ..,
        EPTAiservicesOptOutPolicy,
        EPTBackupPolicy,
        EPTTagPolicy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EffectivePolicyType
  = EffectivePolicyType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EPTAiservicesOptOutPolicy :: EffectivePolicyType
pattern EPTAiservicesOptOutPolicy = EffectivePolicyType' "AISERVICES_OPT_OUT_POLICY"

pattern EPTBackupPolicy :: EffectivePolicyType
pattern EPTBackupPolicy = EffectivePolicyType' "BACKUP_POLICY"

pattern EPTTagPolicy :: EffectivePolicyType
pattern EPTTagPolicy = EffectivePolicyType' "TAG_POLICY"

{-# COMPLETE
  EPTAiservicesOptOutPolicy,
  EPTBackupPolicy,
  EPTTagPolicy,
  EffectivePolicyType'
  #-}

instance FromText EffectivePolicyType where
  parser = (EffectivePolicyType' . mk) <$> takeText

instance ToText EffectivePolicyType where
  toText (EffectivePolicyType' ci) = original ci

instance Hashable EffectivePolicyType

instance NFData EffectivePolicyType

instance ToByteString EffectivePolicyType

instance ToQuery EffectivePolicyType

instance ToHeader EffectivePolicyType

instance ToJSON EffectivePolicyType where
  toJSON = toJSONText

instance FromJSON EffectivePolicyType where
  parseJSON = parseJSONText "EffectivePolicyType"
