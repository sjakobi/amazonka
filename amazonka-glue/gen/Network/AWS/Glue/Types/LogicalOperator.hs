{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.LogicalOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.LogicalOperator
  ( LogicalOperator
      ( ..,
        Equals
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LogicalOperator = LogicalOperator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Equals :: LogicalOperator
pattern Equals = LogicalOperator' "EQUALS"

{-# COMPLETE
  Equals,
  LogicalOperator'
  #-}

instance FromText LogicalOperator where
  parser = (LogicalOperator' . mk) <$> takeText

instance ToText LogicalOperator where
  toText (LogicalOperator' ci) = original ci

instance Hashable LogicalOperator

instance NFData LogicalOperator

instance ToByteString LogicalOperator

instance ToQuery LogicalOperator

instance ToHeader LogicalOperator

instance ToJSON LogicalOperator where
  toJSON = toJSONText

instance FromJSON LogicalOperator where
  parseJSON = parseJSONText "LogicalOperator"
