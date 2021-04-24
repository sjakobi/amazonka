{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceGroupType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupType
  ( InstanceGroupType
      ( ..,
        IGTCore,
        IGTMaster,
        IGTTask
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceGroupType = InstanceGroupType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IGTCore :: InstanceGroupType
pattern IGTCore = InstanceGroupType' "CORE"

pattern IGTMaster :: InstanceGroupType
pattern IGTMaster = InstanceGroupType' "MASTER"

pattern IGTTask :: InstanceGroupType
pattern IGTTask = InstanceGroupType' "TASK"

{-# COMPLETE
  IGTCore,
  IGTMaster,
  IGTTask,
  InstanceGroupType'
  #-}

instance FromText InstanceGroupType where
  parser = (InstanceGroupType' . mk) <$> takeText

instance ToText InstanceGroupType where
  toText (InstanceGroupType' ci) = original ci

instance Hashable InstanceGroupType

instance NFData InstanceGroupType

instance ToByteString InstanceGroupType

instance ToQuery InstanceGroupType

instance ToHeader InstanceGroupType

instance ToJSON InstanceGroupType where
  toJSON = toJSONText

instance FromJSON InstanceGroupType where
  parseJSON = parseJSONText "InstanceGroupType"
