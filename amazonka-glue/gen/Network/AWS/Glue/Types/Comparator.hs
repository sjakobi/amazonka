{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Comparator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Comparator
  ( Comparator
      ( ..,
        CEquals,
        CGreaterThan,
        CGreaterThanEquals,
        CLessThan,
        CLessThanEquals
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Comparator = Comparator' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CEquals :: Comparator
pattern CEquals = Comparator' "EQUALS"

pattern CGreaterThan :: Comparator
pattern CGreaterThan = Comparator' "GREATER_THAN"

pattern CGreaterThanEquals :: Comparator
pattern CGreaterThanEquals = Comparator' "GREATER_THAN_EQUALS"

pattern CLessThan :: Comparator
pattern CLessThan = Comparator' "LESS_THAN"

pattern CLessThanEquals :: Comparator
pattern CLessThanEquals = Comparator' "LESS_THAN_EQUALS"

{-# COMPLETE
  CEquals,
  CGreaterThan,
  CGreaterThanEquals,
  CLessThan,
  CLessThanEquals,
  Comparator'
  #-}

instance FromText Comparator where
  parser = (Comparator' . mk) <$> takeText

instance ToText Comparator where
  toText (Comparator' ci) = original ci

instance Hashable Comparator

instance NFData Comparator

instance ToByteString Comparator

instance ToQuery Comparator

instance ToHeader Comparator

instance ToJSON Comparator where
  toJSON = toJSONText
