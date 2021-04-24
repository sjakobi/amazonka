{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.QueryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.QueryType
  ( QueryType
      ( ..,
        CloudformationStack10,
        TagFilters10
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueryType = QueryType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CloudformationStack10 :: QueryType
pattern CloudformationStack10 = QueryType' "CLOUDFORMATION_STACK_1_0"

pattern TagFilters10 :: QueryType
pattern TagFilters10 = QueryType' "TAG_FILTERS_1_0"

{-# COMPLETE
  CloudformationStack10,
  TagFilters10,
  QueryType'
  #-}

instance FromText QueryType where
  parser = (QueryType' . mk) <$> takeText

instance ToText QueryType where
  toText (QueryType' ci) = original ci

instance Hashable QueryType

instance NFData QueryType

instance ToByteString QueryType

instance ToQuery QueryType

instance ToHeader QueryType

instance ToJSON QueryType where
  toJSON = toJSONText

instance FromJSON QueryType where
  parseJSON = parseJSONText "QueryType"
