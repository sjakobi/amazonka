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
-- Module      : Network.AWS.SageMaker.Types.TrainingJobSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrainingJobSortByOptions
  ( TrainingJobSortByOptions
      ( ..,
        TrainingJobSortByOptionsCreationTime,
        TrainingJobSortByOptionsFinalObjectiveMetricValue,
        TrainingJobSortByOptionsName,
        TrainingJobSortByOptionsStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TrainingJobSortByOptions = TrainingJobSortByOptions'
  { fromTrainingJobSortByOptions ::
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

pattern TrainingJobSortByOptionsCreationTime :: TrainingJobSortByOptions
pattern TrainingJobSortByOptionsCreationTime = TrainingJobSortByOptions' "CreationTime"

pattern TrainingJobSortByOptionsFinalObjectiveMetricValue :: TrainingJobSortByOptions
pattern TrainingJobSortByOptionsFinalObjectiveMetricValue = TrainingJobSortByOptions' "FinalObjectiveMetricValue"

pattern TrainingJobSortByOptionsName :: TrainingJobSortByOptions
pattern TrainingJobSortByOptionsName = TrainingJobSortByOptions' "Name"

pattern TrainingJobSortByOptionsStatus' :: TrainingJobSortByOptions
pattern TrainingJobSortByOptionsStatus' = TrainingJobSortByOptions' "Status"

{-# COMPLETE
  TrainingJobSortByOptionsCreationTime,
  TrainingJobSortByOptionsFinalObjectiveMetricValue,
  TrainingJobSortByOptionsName,
  TrainingJobSortByOptionsStatus',
  TrainingJobSortByOptions'
  #-}

instance Prelude.FromText TrainingJobSortByOptions where
  parser = TrainingJobSortByOptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrainingJobSortByOptions where
  toText (TrainingJobSortByOptions' x) = x

instance Prelude.Hashable TrainingJobSortByOptions

instance Prelude.NFData TrainingJobSortByOptions

instance Prelude.ToByteString TrainingJobSortByOptions

instance Prelude.ToQuery TrainingJobSortByOptions

instance Prelude.ToHeader TrainingJobSortByOptions

instance Prelude.ToJSON TrainingJobSortByOptions where
  toJSON = Prelude.toJSONText
