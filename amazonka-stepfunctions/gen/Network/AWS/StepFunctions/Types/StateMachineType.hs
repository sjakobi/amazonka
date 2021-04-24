{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.StateMachineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.StateMachineType
  ( StateMachineType
      ( ..,
        Express,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StateMachineType = StateMachineType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Express :: StateMachineType
pattern Express = StateMachineType' "EXPRESS"

pattern Standard :: StateMachineType
pattern Standard = StateMachineType' "STANDARD"

{-# COMPLETE
  Express,
  Standard,
  StateMachineType'
  #-}

instance FromText StateMachineType where
  parser = (StateMachineType' . mk) <$> takeText

instance ToText StateMachineType where
  toText (StateMachineType' ci) = original ci

instance Hashable StateMachineType

instance NFData StateMachineType

instance ToByteString StateMachineType

instance ToQuery StateMachineType

instance ToHeader StateMachineType

instance ToJSON StateMachineType where
  toJSON = toJSONText

instance FromJSON StateMachineType where
  parseJSON = parseJSONText "StateMachineType"
