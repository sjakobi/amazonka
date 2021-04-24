{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.SnapshotAttributeToSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.SnapshotAttributeToSortBy
  ( SnapshotAttributeToSortBy
      ( ..,
        CreateTime,
        SourceType,
        TotalSize
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data SnapshotAttributeToSortBy
  = SnapshotAttributeToSortBy'
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

pattern CreateTime :: SnapshotAttributeToSortBy
pattern CreateTime = SnapshotAttributeToSortBy' "CREATE_TIME"

pattern SourceType :: SnapshotAttributeToSortBy
pattern SourceType = SnapshotAttributeToSortBy' "SOURCE_TYPE"

pattern TotalSize :: SnapshotAttributeToSortBy
pattern TotalSize = SnapshotAttributeToSortBy' "TOTAL_SIZE"

{-# COMPLETE
  CreateTime,
  SourceType,
  TotalSize,
  SnapshotAttributeToSortBy'
  #-}

instance FromText SnapshotAttributeToSortBy where
  parser = (SnapshotAttributeToSortBy' . mk) <$> takeText

instance ToText SnapshotAttributeToSortBy where
  toText (SnapshotAttributeToSortBy' ci) = original ci

instance Hashable SnapshotAttributeToSortBy

instance NFData SnapshotAttributeToSortBy

instance ToByteString SnapshotAttributeToSortBy

instance ToQuery SnapshotAttributeToSortBy

instance ToHeader SnapshotAttributeToSortBy
