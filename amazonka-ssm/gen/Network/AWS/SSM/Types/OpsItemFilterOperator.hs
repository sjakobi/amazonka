{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.OpsItemFilterOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.OpsItemFilterOperator
  ( OpsItemFilterOperator
      ( ..,
        OIFOContains,
        OIFOEqual,
        OIFOGreaterThan,
        OIFOLessThan
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OpsItemFilterOperator
  = OpsItemFilterOperator'
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

pattern OIFOContains :: OpsItemFilterOperator
pattern OIFOContains = OpsItemFilterOperator' "Contains"

pattern OIFOEqual :: OpsItemFilterOperator
pattern OIFOEqual = OpsItemFilterOperator' "Equal"

pattern OIFOGreaterThan :: OpsItemFilterOperator
pattern OIFOGreaterThan = OpsItemFilterOperator' "GreaterThan"

pattern OIFOLessThan :: OpsItemFilterOperator
pattern OIFOLessThan = OpsItemFilterOperator' "LessThan"

{-# COMPLETE
  OIFOContains,
  OIFOEqual,
  OIFOGreaterThan,
  OIFOLessThan,
  OpsItemFilterOperator'
  #-}

instance FromText OpsItemFilterOperator where
  parser = (OpsItemFilterOperator' . mk) <$> takeText

instance ToText OpsItemFilterOperator where
  toText (OpsItemFilterOperator' ci) = original ci

instance Hashable OpsItemFilterOperator

instance NFData OpsItemFilterOperator

instance ToByteString OpsItemFilterOperator

instance ToQuery OpsItemFilterOperator

instance ToHeader OpsItemFilterOperator

instance ToJSON OpsItemFilterOperator where
  toJSON = toJSONText
