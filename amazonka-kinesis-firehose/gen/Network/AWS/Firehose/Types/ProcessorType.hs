{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ProcessorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ProcessorType
  ( ProcessorType
      ( ..,
        Lambda
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessorType = ProcessorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Lambda :: ProcessorType
pattern Lambda = ProcessorType' "Lambda"

{-# COMPLETE
  Lambda,
  ProcessorType'
  #-}

instance FromText ProcessorType where
  parser = (ProcessorType' . mk) <$> takeText

instance ToText ProcessorType where
  toText (ProcessorType' ci) = original ci

instance Hashable ProcessorType

instance NFData ProcessorType

instance ToByteString ProcessorType

instance ToQuery ProcessorType

instance ToHeader ProcessorType

instance ToJSON ProcessorType where
  toJSON = toJSONText

instance FromJSON ProcessorType where
  parseJSON = parseJSONText "ProcessorType"
