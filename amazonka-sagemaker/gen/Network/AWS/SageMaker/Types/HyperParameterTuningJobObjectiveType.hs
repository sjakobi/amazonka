{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobObjectiveType
  ( HyperParameterTuningJobObjectiveType
      ( ..,
        Maximize,
        Minimize
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HyperParameterTuningJobObjectiveType
  = HyperParameterTuningJobObjectiveType'
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

pattern Maximize :: HyperParameterTuningJobObjectiveType
pattern Maximize = HyperParameterTuningJobObjectiveType' "Maximize"

pattern Minimize :: HyperParameterTuningJobObjectiveType
pattern Minimize = HyperParameterTuningJobObjectiveType' "Minimize"

{-# COMPLETE
  Maximize,
  Minimize,
  HyperParameterTuningJobObjectiveType'
  #-}

instance FromText HyperParameterTuningJobObjectiveType where
  parser = (HyperParameterTuningJobObjectiveType' . mk) <$> takeText

instance ToText HyperParameterTuningJobObjectiveType where
  toText (HyperParameterTuningJobObjectiveType' ci) = original ci

instance Hashable HyperParameterTuningJobObjectiveType

instance NFData HyperParameterTuningJobObjectiveType

instance ToByteString HyperParameterTuningJobObjectiveType

instance ToQuery HyperParameterTuningJobObjectiveType

instance ToHeader HyperParameterTuningJobObjectiveType

instance ToJSON HyperParameterTuningJobObjectiveType where
  toJSON = toJSONText

instance FromJSON HyperParameterTuningJobObjectiveType where
  parseJSON = parseJSONText "HyperParameterTuningJobObjectiveType"
