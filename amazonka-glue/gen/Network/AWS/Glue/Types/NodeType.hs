{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.NodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.NodeType
  ( NodeType
      ( ..,
        Crawler,
        Job,
        Trigger
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NodeType = NodeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Crawler :: NodeType
pattern Crawler = NodeType' "CRAWLER"

pattern Job :: NodeType
pattern Job = NodeType' "JOB"

pattern Trigger :: NodeType
pattern Trigger = NodeType' "TRIGGER"

{-# COMPLETE
  Crawler,
  Job,
  Trigger,
  NodeType'
  #-}

instance FromText NodeType where
  parser = (NodeType' . mk) <$> takeText

instance ToText NodeType where
  toText (NodeType' ci) = original ci

instance Hashable NodeType

instance NFData NodeType

instance ToByteString NodeType

instance ToQuery NodeType

instance ToHeader NodeType

instance FromJSON NodeType where
  parseJSON = parseJSONText "NodeType"
