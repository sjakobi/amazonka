{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.SchedulingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.SchedulingStrategy
  ( SchedulingStrategy
      ( ..,
        Daemon,
        Replica
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SchedulingStrategy
  = SchedulingStrategy'
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

pattern Daemon :: SchedulingStrategy
pattern Daemon = SchedulingStrategy' "DAEMON"

pattern Replica :: SchedulingStrategy
pattern Replica = SchedulingStrategy' "REPLICA"

{-# COMPLETE
  Daemon,
  Replica,
  SchedulingStrategy'
  #-}

instance FromText SchedulingStrategy where
  parser = (SchedulingStrategy' . mk) <$> takeText

instance ToText SchedulingStrategy where
  toText (SchedulingStrategy' ci) = original ci

instance Hashable SchedulingStrategy

instance NFData SchedulingStrategy

instance ToByteString SchedulingStrategy

instance ToQuery SchedulingStrategy

instance ToHeader SchedulingStrategy

instance ToJSON SchedulingStrategy where
  toJSON = toJSONText

instance FromJSON SchedulingStrategy where
  parseJSON = parseJSONText "SchedulingStrategy"
