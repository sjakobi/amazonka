{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceRoleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceRoleType
  ( InstanceRoleType
      ( ..,
        IRTCore,
        IRTMaster,
        IRTTask
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceRoleType = InstanceRoleType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IRTCore :: InstanceRoleType
pattern IRTCore = InstanceRoleType' "CORE"

pattern IRTMaster :: InstanceRoleType
pattern IRTMaster = InstanceRoleType' "MASTER"

pattern IRTTask :: InstanceRoleType
pattern IRTTask = InstanceRoleType' "TASK"

{-# COMPLETE
  IRTCore,
  IRTMaster,
  IRTTask,
  InstanceRoleType'
  #-}

instance FromText InstanceRoleType where
  parser = (InstanceRoleType' . mk) <$> takeText

instance ToText InstanceRoleType where
  toText (InstanceRoleType' ci) = original ci

instance Hashable InstanceRoleType

instance NFData InstanceRoleType

instance ToByteString InstanceRoleType

instance ToQuery InstanceRoleType

instance ToHeader InstanceRoleType

instance ToJSON InstanceRoleType where
  toJSON = toJSONText

instance FromJSON InstanceRoleType where
  parseJSON = parseJSONText "InstanceRoleType"
