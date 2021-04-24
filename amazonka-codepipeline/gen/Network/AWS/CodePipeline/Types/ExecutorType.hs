{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ExecutorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ExecutorType
  ( ExecutorType
      ( ..,
        JobWorker,
        Lambda
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutorType = ExecutorType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JobWorker :: ExecutorType
pattern JobWorker = ExecutorType' "JobWorker"

pattern Lambda :: ExecutorType
pattern Lambda = ExecutorType' "Lambda"

{-# COMPLETE
  JobWorker,
  Lambda,
  ExecutorType'
  #-}

instance FromText ExecutorType where
  parser = (ExecutorType' . mk) <$> takeText

instance ToText ExecutorType where
  toText (ExecutorType' ci) = original ci

instance Hashable ExecutorType

instance NFData ExecutorType

instance ToByteString ExecutorType

instance ToQuery ExecutorType

instance ToHeader ExecutorType

instance ToJSON ExecutorType where
  toJSON = toJSONText

instance FromJSON ExecutorType where
  parseJSON = parseJSONText "ExecutorType"
