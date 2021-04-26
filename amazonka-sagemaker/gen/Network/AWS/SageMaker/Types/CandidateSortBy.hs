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
-- Module      : Network.AWS.SageMaker.Types.CandidateSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CandidateSortBy
  ( CandidateSortBy
      ( ..,
        CandidateSortByCreationTime,
        CandidateSortByFinalObjectiveMetricValue,
        CandidateSortByStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CandidateSortBy = CandidateSortBy'
  { fromCandidateSortBy ::
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

pattern CandidateSortByCreationTime :: CandidateSortBy
pattern CandidateSortByCreationTime = CandidateSortBy' "CreationTime"

pattern CandidateSortByFinalObjectiveMetricValue :: CandidateSortBy
pattern CandidateSortByFinalObjectiveMetricValue = CandidateSortBy' "FinalObjectiveMetricValue"

pattern CandidateSortByStatus' :: CandidateSortBy
pattern CandidateSortByStatus' = CandidateSortBy' "Status"

{-# COMPLETE
  CandidateSortByCreationTime,
  CandidateSortByFinalObjectiveMetricValue,
  CandidateSortByStatus',
  CandidateSortBy'
  #-}

instance Prelude.FromText CandidateSortBy where
  parser = CandidateSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CandidateSortBy where
  toText (CandidateSortBy' x) = x

instance Prelude.Hashable CandidateSortBy

instance Prelude.NFData CandidateSortBy

instance Prelude.ToByteString CandidateSortBy

instance Prelude.ToQuery CandidateSortBy

instance Prelude.ToHeader CandidateSortBy

instance Prelude.ToJSON CandidateSortBy where
  toJSON = Prelude.toJSONText
