{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CSBCreationTime,
        CSBFinalObjectiveMetricValue,
        CSBStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CandidateSortBy = CandidateSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSBCreationTime :: CandidateSortBy
pattern CSBCreationTime = CandidateSortBy' "CreationTime"

pattern CSBFinalObjectiveMetricValue :: CandidateSortBy
pattern CSBFinalObjectiveMetricValue = CandidateSortBy' "FinalObjectiveMetricValue"

pattern CSBStatus :: CandidateSortBy
pattern CSBStatus = CandidateSortBy' "Status"

{-# COMPLETE
  CSBCreationTime,
  CSBFinalObjectiveMetricValue,
  CSBStatus,
  CandidateSortBy'
  #-}

instance FromText CandidateSortBy where
  parser = (CandidateSortBy' . mk) <$> takeText

instance ToText CandidateSortBy where
  toText (CandidateSortBy' ci) = original ci

instance Hashable CandidateSortBy

instance NFData CandidateSortBy

instance ToByteString CandidateSortBy

instance ToQuery CandidateSortBy

instance ToHeader CandidateSortBy

instance ToJSON CandidateSortBy where
  toJSON = toJSONText
