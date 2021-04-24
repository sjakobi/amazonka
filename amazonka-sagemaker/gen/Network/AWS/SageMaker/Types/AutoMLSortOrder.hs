{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AutoMLSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLSortOrder
  ( AutoMLSortOrder
      ( ..,
        AMLSOAscending,
        AMLSODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoMLSortOrder = AutoMLSortOrder' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AMLSOAscending :: AutoMLSortOrder
pattern AMLSOAscending = AutoMLSortOrder' "Ascending"

pattern AMLSODescending :: AutoMLSortOrder
pattern AMLSODescending = AutoMLSortOrder' "Descending"

{-# COMPLETE
  AMLSOAscending,
  AMLSODescending,
  AutoMLSortOrder'
  #-}

instance FromText AutoMLSortOrder where
  parser = (AutoMLSortOrder' . mk) <$> takeText

instance ToText AutoMLSortOrder where
  toText (AutoMLSortOrder' ci) = original ci

instance Hashable AutoMLSortOrder

instance NFData AutoMLSortOrder

instance ToByteString AutoMLSortOrder

instance ToQuery AutoMLSortOrder

instance ToHeader AutoMLSortOrder

instance ToJSON AutoMLSortOrder where
  toJSON = toJSONText
