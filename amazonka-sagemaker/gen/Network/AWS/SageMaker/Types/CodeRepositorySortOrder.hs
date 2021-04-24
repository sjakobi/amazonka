{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CodeRepositorySortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CodeRepositorySortOrder
  ( CodeRepositorySortOrder
      ( ..,
        CRSOAscending,
        CRSODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CodeRepositorySortOrder
  = CodeRepositorySortOrder'
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

pattern CRSOAscending :: CodeRepositorySortOrder
pattern CRSOAscending = CodeRepositorySortOrder' "Ascending"

pattern CRSODescending :: CodeRepositorySortOrder
pattern CRSODescending = CodeRepositorySortOrder' "Descending"

{-# COMPLETE
  CRSOAscending,
  CRSODescending,
  CodeRepositorySortOrder'
  #-}

instance FromText CodeRepositorySortOrder where
  parser = (CodeRepositorySortOrder' . mk) <$> takeText

instance ToText CodeRepositorySortOrder where
  toText (CodeRepositorySortOrder' ci) = original ci

instance Hashable CodeRepositorySortOrder

instance NFData CodeRepositorySortOrder

instance ToByteString CodeRepositorySortOrder

instance ToQuery CodeRepositorySortOrder

instance ToHeader CodeRepositorySortOrder

instance ToJSON CodeRepositorySortOrder where
  toJSON = toJSONText
