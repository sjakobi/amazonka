{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionSubType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionSubType
  ( ActionSubType
      ( ..,
        StopEC2Instances,
        StopRDSInstances
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionSubType = ActionSubType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern StopEC2Instances :: ActionSubType
pattern StopEC2Instances = ActionSubType' "STOP_EC2_INSTANCES"

pattern StopRDSInstances :: ActionSubType
pattern StopRDSInstances = ActionSubType' "STOP_RDS_INSTANCES"

{-# COMPLETE
  StopEC2Instances,
  StopRDSInstances,
  ActionSubType'
  #-}

instance FromText ActionSubType where
  parser = (ActionSubType' . mk) <$> takeText

instance ToText ActionSubType where
  toText (ActionSubType' ci) = original ci

instance Hashable ActionSubType

instance NFData ActionSubType

instance ToByteString ActionSubType

instance ToQuery ActionSubType

instance ToHeader ActionSubType

instance ToJSON ActionSubType where
  toJSON = toJSONText

instance FromJSON ActionSubType where
  parseJSON = parseJSONText "ActionSubType"
