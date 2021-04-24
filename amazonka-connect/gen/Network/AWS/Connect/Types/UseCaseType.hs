{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.UseCaseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.UseCaseType
  ( UseCaseType
      ( ..,
        RulesEvaluation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UseCaseType = UseCaseType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RulesEvaluation :: UseCaseType
pattern RulesEvaluation = UseCaseType' "RULES_EVALUATION"

{-# COMPLETE
  RulesEvaluation,
  UseCaseType'
  #-}

instance FromText UseCaseType where
  parser = (UseCaseType' . mk) <$> takeText

instance ToText UseCaseType where
  toText (UseCaseType' ci) = original ci

instance Hashable UseCaseType

instance NFData UseCaseType

instance ToByteString UseCaseType

instance ToQuery UseCaseType

instance ToHeader UseCaseType

instance ToJSON UseCaseType where
  toJSON = toJSONText

instance FromJSON UseCaseType where
  parseJSON = parseJSONText "UseCaseType"
