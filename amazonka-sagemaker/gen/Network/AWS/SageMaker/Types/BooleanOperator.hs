{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.BooleanOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.BooleanOperator
  ( BooleanOperator
      ( ..,
        And,
        OR
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BooleanOperator = BooleanOperator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern And :: BooleanOperator
pattern And = BooleanOperator' "And"

pattern OR :: BooleanOperator
pattern OR = BooleanOperator' "Or"

{-# COMPLETE
  And,
  OR,
  BooleanOperator'
  #-}

instance FromText BooleanOperator where
  parser = (BooleanOperator' . mk) <$> takeText

instance ToText BooleanOperator where
  toText (BooleanOperator' ci) = original ci

instance Hashable BooleanOperator

instance NFData BooleanOperator

instance ToByteString BooleanOperator

instance ToQuery BooleanOperator

instance ToHeader BooleanOperator

instance ToJSON BooleanOperator where
  toJSON = toJSONText
