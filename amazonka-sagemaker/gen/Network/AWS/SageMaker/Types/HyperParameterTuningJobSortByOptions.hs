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
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobSortByOptions
  ( HyperParameterTuningJobSortByOptions
      ( ..,
        HyperParameterTuningJobSortByOptionsCreationTime,
        HyperParameterTuningJobSortByOptionsName,
        HyperParameterTuningJobSortByOptionsStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HyperParameterTuningJobSortByOptions = HyperParameterTuningJobSortByOptions'
  { fromHyperParameterTuningJobSortByOptions ::
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

pattern HyperParameterTuningJobSortByOptionsCreationTime :: HyperParameterTuningJobSortByOptions
pattern HyperParameterTuningJobSortByOptionsCreationTime = HyperParameterTuningJobSortByOptions' "CreationTime"

pattern HyperParameterTuningJobSortByOptionsName :: HyperParameterTuningJobSortByOptions
pattern HyperParameterTuningJobSortByOptionsName = HyperParameterTuningJobSortByOptions' "Name"

pattern HyperParameterTuningJobSortByOptionsStatus' :: HyperParameterTuningJobSortByOptions
pattern HyperParameterTuningJobSortByOptionsStatus' = HyperParameterTuningJobSortByOptions' "Status"

{-# COMPLETE
  HyperParameterTuningJobSortByOptionsCreationTime,
  HyperParameterTuningJobSortByOptionsName,
  HyperParameterTuningJobSortByOptionsStatus',
  HyperParameterTuningJobSortByOptions'
  #-}

instance Prelude.FromText HyperParameterTuningJobSortByOptions where
  parser = HyperParameterTuningJobSortByOptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText HyperParameterTuningJobSortByOptions where
  toText (HyperParameterTuningJobSortByOptions' x) = x

instance Prelude.Hashable HyperParameterTuningJobSortByOptions

instance Prelude.NFData HyperParameterTuningJobSortByOptions

instance Prelude.ToByteString HyperParameterTuningJobSortByOptions

instance Prelude.ToQuery HyperParameterTuningJobSortByOptions

instance Prelude.ToHeader HyperParameterTuningJobSortByOptions

instance Prelude.ToJSON HyperParameterTuningJobSortByOptions where
  toJSON = Prelude.toJSONText
