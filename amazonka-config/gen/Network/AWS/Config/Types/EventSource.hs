{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.EventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.EventSource
  ( EventSource
      ( ..,
        AWS_Config
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventSource = EventSource' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWS_Config :: EventSource
pattern AWS_Config = EventSource' "aws.config"

{-# COMPLETE
  AWS_Config,
  EventSource'
  #-}

instance FromText EventSource where
  parser = (EventSource' . mk) <$> takeText

instance ToText EventSource where
  toText (EventSource' ci) = original ci

instance Hashable EventSource

instance NFData EventSource

instance ToByteString EventSource

instance ToQuery EventSource

instance ToHeader EventSource

instance ToJSON EventSource where
  toJSON = toJSONText

instance FromJSON EventSource where
  parseJSON = parseJSONText "EventSource"
