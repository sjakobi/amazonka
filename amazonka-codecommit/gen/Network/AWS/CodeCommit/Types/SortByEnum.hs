{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.SortByEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.SortByEnum
  ( SortByEnum
      ( ..,
        LastModifiedDate,
        RepositoryName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortByEnum = SortByEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern LastModifiedDate :: SortByEnum
pattern LastModifiedDate = SortByEnum' "lastModifiedDate"

pattern RepositoryName :: SortByEnum
pattern RepositoryName = SortByEnum' "repositoryName"

{-# COMPLETE
  LastModifiedDate,
  RepositoryName,
  SortByEnum'
  #-}

instance FromText SortByEnum where
  parser = (SortByEnum' . mk) <$> takeText

instance ToText SortByEnum where
  toText (SortByEnum' ci) = original ci

instance Hashable SortByEnum

instance NFData SortByEnum

instance ToByteString SortByEnum

instance ToQuery SortByEnum

instance ToHeader SortByEnum

instance ToJSON SortByEnum where
  toJSON = toJSONText
