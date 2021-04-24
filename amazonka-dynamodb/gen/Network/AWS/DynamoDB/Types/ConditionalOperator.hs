{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ConditionalOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ConditionalOperator
  ( ConditionalOperator
      ( ..,
        And,
        OR
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConditionalOperator
  = ConditionalOperator'
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

pattern And :: ConditionalOperator
pattern And = ConditionalOperator' "AND"

pattern OR :: ConditionalOperator
pattern OR = ConditionalOperator' "OR"

{-# COMPLETE
  And,
  OR,
  ConditionalOperator'
  #-}

instance FromText ConditionalOperator where
  parser = (ConditionalOperator' . mk) <$> takeText

instance ToText ConditionalOperator where
  toText (ConditionalOperator' ci) = original ci

instance Hashable ConditionalOperator

instance NFData ConditionalOperator

instance ToByteString ConditionalOperator

instance ToQuery ConditionalOperator

instance ToHeader ConditionalOperator

instance ToJSON ConditionalOperator where
  toJSON = toJSONText
