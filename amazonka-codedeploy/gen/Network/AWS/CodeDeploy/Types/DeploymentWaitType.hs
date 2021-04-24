{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentWaitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentWaitType
  ( DeploymentWaitType
      ( ..,
        ReadyWait,
        TerminationWait
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeploymentWaitType
  = DeploymentWaitType'
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

pattern ReadyWait :: DeploymentWaitType
pattern ReadyWait = DeploymentWaitType' "READY_WAIT"

pattern TerminationWait :: DeploymentWaitType
pattern TerminationWait = DeploymentWaitType' "TERMINATION_WAIT"

{-# COMPLETE
  ReadyWait,
  TerminationWait,
  DeploymentWaitType'
  #-}

instance FromText DeploymentWaitType where
  parser = (DeploymentWaitType' . mk) <$> takeText

instance ToText DeploymentWaitType where
  toText (DeploymentWaitType' ci) = original ci

instance Hashable DeploymentWaitType

instance NFData DeploymentWaitType

instance ToByteString DeploymentWaitType

instance ToQuery DeploymentWaitType

instance ToHeader DeploymentWaitType

instance ToJSON DeploymentWaitType where
  toJSON = toJSONText
