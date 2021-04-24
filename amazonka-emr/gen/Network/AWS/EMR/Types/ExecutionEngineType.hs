{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.ExecutionEngineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ExecutionEngineType
  ( ExecutionEngineType
      ( ..,
        Emr
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionEngineType
  = ExecutionEngineType'
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

pattern Emr :: ExecutionEngineType
pattern Emr = ExecutionEngineType' "EMR"

{-# COMPLETE
  Emr,
  ExecutionEngineType'
  #-}

instance FromText ExecutionEngineType where
  parser = (ExecutionEngineType' . mk) <$> takeText

instance ToText ExecutionEngineType where
  toText (ExecutionEngineType' ci) = original ci

instance Hashable ExecutionEngineType

instance NFData ExecutionEngineType

instance ToByteString ExecutionEngineType

instance ToQuery ExecutionEngineType

instance ToHeader ExecutionEngineType

instance ToJSON ExecutionEngineType where
  toJSON = toJSONText

instance FromJSON ExecutionEngineType where
  parseJSON = parseJSONText "ExecutionEngineType"
