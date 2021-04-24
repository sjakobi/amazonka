{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetType
  ( InstanceFleetType
      ( ..,
        Core,
        Master,
        Task
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceFleetType = InstanceFleetType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Core :: InstanceFleetType
pattern Core = InstanceFleetType' "CORE"

pattern Master :: InstanceFleetType
pattern Master = InstanceFleetType' "MASTER"

pattern Task :: InstanceFleetType
pattern Task = InstanceFleetType' "TASK"

{-# COMPLETE
  Core,
  Master,
  Task,
  InstanceFleetType'
  #-}

instance FromText InstanceFleetType where
  parser = (InstanceFleetType' . mk) <$> takeText

instance ToText InstanceFleetType where
  toText (InstanceFleetType' ci) = original ci

instance Hashable InstanceFleetType

instance NFData InstanceFleetType

instance ToByteString InstanceFleetType

instance ToQuery InstanceFleetType

instance ToHeader InstanceFleetType

instance ToJSON InstanceFleetType where
  toJSON = toJSONText

instance FromJSON InstanceFleetType where
  parseJSON = parseJSONText "InstanceFleetType"
