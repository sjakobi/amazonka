{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NotebookInstanceSortOrder
  ( NotebookInstanceSortOrder
      ( ..,
        NISOAscending,
        NISODescending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotebookInstanceSortOrder
  = NotebookInstanceSortOrder'
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

pattern NISOAscending :: NotebookInstanceSortOrder
pattern NISOAscending = NotebookInstanceSortOrder' "Ascending"

pattern NISODescending :: NotebookInstanceSortOrder
pattern NISODescending = NotebookInstanceSortOrder' "Descending"

{-# COMPLETE
  NISOAscending,
  NISODescending,
  NotebookInstanceSortOrder'
  #-}

instance FromText NotebookInstanceSortOrder where
  parser = (NotebookInstanceSortOrder' . mk) <$> takeText

instance ToText NotebookInstanceSortOrder where
  toText (NotebookInstanceSortOrder' ci) = original ci

instance Hashable NotebookInstanceSortOrder

instance NFData NotebookInstanceSortOrder

instance ToByteString NotebookInstanceSortOrder

instance ToQuery NotebookInstanceSortOrder

instance ToHeader NotebookInstanceSortOrder

instance ToJSON NotebookInstanceSortOrder where
  toJSON = toJSONText
