{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TriggerType
  ( TriggerType
      ( ..,
        Conditional,
        OnDemand,
        Scheduled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TriggerType = TriggerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Conditional :: TriggerType
pattern Conditional = TriggerType' "CONDITIONAL"

pattern OnDemand :: TriggerType
pattern OnDemand = TriggerType' "ON_DEMAND"

pattern Scheduled :: TriggerType
pattern Scheduled = TriggerType' "SCHEDULED"

{-# COMPLETE
  Conditional,
  OnDemand,
  Scheduled,
  TriggerType'
  #-}

instance FromText TriggerType where
  parser = (TriggerType' . mk) <$> takeText

instance ToText TriggerType where
  toText (TriggerType' ci) = original ci

instance Hashable TriggerType

instance NFData TriggerType

instance ToByteString TriggerType

instance ToQuery TriggerType

instance ToHeader TriggerType

instance ToJSON TriggerType where
  toJSON = toJSONText

instance FromJSON TriggerType where
  parseJSON = parseJSONText "TriggerType"
