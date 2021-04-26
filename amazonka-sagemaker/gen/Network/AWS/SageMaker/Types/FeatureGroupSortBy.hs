{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.FeatureGroupSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FeatureGroupSortBy
  ( FeatureGroupSortBy
      ( ..,
        FeatureGroupSortByCreationTime,
        FeatureGroupSortByFeatureGroupStatus,
        FeatureGroupSortByName,
        FeatureGroupSortByOfflineStoreStatus
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FeatureGroupSortBy = FeatureGroupSortBy'
  { fromFeatureGroupSortBy ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern FeatureGroupSortByCreationTime :: FeatureGroupSortBy
pattern FeatureGroupSortByCreationTime = FeatureGroupSortBy' "CreationTime"

pattern FeatureGroupSortByFeatureGroupStatus :: FeatureGroupSortBy
pattern FeatureGroupSortByFeatureGroupStatus = FeatureGroupSortBy' "FeatureGroupStatus"

pattern FeatureGroupSortByName :: FeatureGroupSortBy
pattern FeatureGroupSortByName = FeatureGroupSortBy' "Name"

pattern FeatureGroupSortByOfflineStoreStatus :: FeatureGroupSortBy
pattern FeatureGroupSortByOfflineStoreStatus = FeatureGroupSortBy' "OfflineStoreStatus"

{-# COMPLETE
  FeatureGroupSortByCreationTime,
  FeatureGroupSortByFeatureGroupStatus,
  FeatureGroupSortByName,
  FeatureGroupSortByOfflineStoreStatus,
  FeatureGroupSortBy'
  #-}

instance Prelude.FromText FeatureGroupSortBy where
  parser = FeatureGroupSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText FeatureGroupSortBy where
  toText (FeatureGroupSortBy' x) = x

instance Prelude.Hashable FeatureGroupSortBy

instance Prelude.NFData FeatureGroupSortBy

instance Prelude.ToByteString FeatureGroupSortBy

instance Prelude.ToQuery FeatureGroupSortBy

instance Prelude.ToHeader FeatureGroupSortBy

instance Prelude.ToJSON FeatureGroupSortBy where
  toJSON = Prelude.toJSONText
