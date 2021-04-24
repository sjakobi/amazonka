{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.MLModelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.MLModelType
  ( MLModelType
      ( ..,
        Binary,
        Multiclass,
        Regression
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MLModelType = MLModelType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Binary :: MLModelType
pattern Binary = MLModelType' "BINARY"

pattern Multiclass :: MLModelType
pattern Multiclass = MLModelType' "MULTICLASS"

pattern Regression :: MLModelType
pattern Regression = MLModelType' "REGRESSION"

{-# COMPLETE
  Binary,
  Multiclass,
  Regression,
  MLModelType'
  #-}

instance FromText MLModelType where
  parser = (MLModelType' . mk) <$> takeText

instance ToText MLModelType where
  toText (MLModelType' ci) = original ci

instance Hashable MLModelType

instance NFData MLModelType

instance ToByteString MLModelType

instance ToQuery MLModelType

instance ToHeader MLModelType

instance ToJSON MLModelType where
  toJSON = toJSONText

instance FromJSON MLModelType where
  parseJSON = parseJSONText "MLModelType"
