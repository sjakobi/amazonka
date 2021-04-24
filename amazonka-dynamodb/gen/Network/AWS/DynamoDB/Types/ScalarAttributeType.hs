{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ScalarAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ScalarAttributeType
  ( ScalarAttributeType
      ( ..,
        B,
        N,
        S
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ScalarAttributeType
  = ScalarAttributeType'
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

pattern B :: ScalarAttributeType
pattern B = ScalarAttributeType' "B"

pattern N :: ScalarAttributeType
pattern N = ScalarAttributeType' "N"

pattern S :: ScalarAttributeType
pattern S = ScalarAttributeType' "S"

{-# COMPLETE
  B,
  N,
  S,
  ScalarAttributeType'
  #-}

instance FromText ScalarAttributeType where
  parser = (ScalarAttributeType' . mk) <$> takeText

instance ToText ScalarAttributeType where
  toText (ScalarAttributeType' ci) = original ci

instance Hashable ScalarAttributeType

instance NFData ScalarAttributeType

instance ToByteString ScalarAttributeType

instance ToQuery ScalarAttributeType

instance ToHeader ScalarAttributeType

instance ToJSON ScalarAttributeType where
  toJSON = toJSONText

instance FromJSON ScalarAttributeType where
  parseJSON = parseJSONText "ScalarAttributeType"
