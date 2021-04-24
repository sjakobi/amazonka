{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DimensionValueOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DimensionValueOperator
  ( DimensionValueOperator
      ( ..,
        IN,
        NotIn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DimensionValueOperator
  = DimensionValueOperator'
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

pattern IN :: DimensionValueOperator
pattern IN = DimensionValueOperator' "IN"

pattern NotIn :: DimensionValueOperator
pattern NotIn = DimensionValueOperator' "NOT_IN"

{-# COMPLETE
  IN,
  NotIn,
  DimensionValueOperator'
  #-}

instance FromText DimensionValueOperator where
  parser = (DimensionValueOperator' . mk) <$> takeText

instance ToText DimensionValueOperator where
  toText (DimensionValueOperator' ci) = original ci

instance Hashable DimensionValueOperator

instance NFData DimensionValueOperator

instance ToByteString DimensionValueOperator

instance ToQuery DimensionValueOperator

instance ToHeader DimensionValueOperator

instance ToJSON DimensionValueOperator where
  toJSON = toJSONText

instance FromJSON DimensionValueOperator where
  parseJSON = parseJSONText "DimensionValueOperator"
