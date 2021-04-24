{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QueueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueType
  ( QueueType
      ( ..,
        Agent,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueueType = QueueType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Agent :: QueueType
pattern Agent = QueueType' "AGENT"

pattern Standard :: QueueType
pattern Standard = QueueType' "STANDARD"

{-# COMPLETE
  Agent,
  Standard,
  QueueType'
  #-}

instance FromText QueueType where
  parser = (QueueType' . mk) <$> takeText

instance ToText QueueType where
  toText (QueueType' ci) = original ci

instance Hashable QueueType

instance NFData QueueType

instance ToByteString QueueType

instance ToQuery QueueType

instance ToHeader QueueType

instance ToJSON QueueType where
  toJSON = toJSONText

instance FromJSON QueueType where
  parseJSON = parseJSONText "QueueType"
