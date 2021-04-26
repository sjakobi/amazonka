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
-- Module      : Network.AWS.SageMaker.Types.ListLabelingJobsForWorkteamSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListLabelingJobsForWorkteamSortByOptions
  ( ListLabelingJobsForWorkteamSortByOptions
      ( ..,
        ListLabelingJobsForWorkteamSortByOptionsCreationTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListLabelingJobsForWorkteamSortByOptions = ListLabelingJobsForWorkteamSortByOptions'
  { fromListLabelingJobsForWorkteamSortByOptions ::
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

pattern ListLabelingJobsForWorkteamSortByOptionsCreationTime :: ListLabelingJobsForWorkteamSortByOptions
pattern ListLabelingJobsForWorkteamSortByOptionsCreationTime = ListLabelingJobsForWorkteamSortByOptions' "CreationTime"

{-# COMPLETE
  ListLabelingJobsForWorkteamSortByOptionsCreationTime,
  ListLabelingJobsForWorkteamSortByOptions'
  #-}

instance Prelude.FromText ListLabelingJobsForWorkteamSortByOptions where
  parser = ListLabelingJobsForWorkteamSortByOptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListLabelingJobsForWorkteamSortByOptions where
  toText (ListLabelingJobsForWorkteamSortByOptions' x) = x

instance Prelude.Hashable ListLabelingJobsForWorkteamSortByOptions

instance Prelude.NFData ListLabelingJobsForWorkteamSortByOptions

instance Prelude.ToByteString ListLabelingJobsForWorkteamSortByOptions

instance Prelude.ToQuery ListLabelingJobsForWorkteamSortByOptions

instance Prelude.ToHeader ListLabelingJobsForWorkteamSortByOptions

instance Prelude.ToJSON ListLabelingJobsForWorkteamSortByOptions where
  toJSON = Prelude.toJSONText
