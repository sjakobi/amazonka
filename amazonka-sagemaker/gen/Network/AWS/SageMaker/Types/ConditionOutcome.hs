{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ConditionOutcome
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ConditionOutcome
  ( ConditionOutcome
      ( ..,
        False',
        True'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConditionOutcome = ConditionOutcome' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern False' :: ConditionOutcome
pattern False' = ConditionOutcome' "False"

pattern True' :: ConditionOutcome
pattern True' = ConditionOutcome' "True"

{-# COMPLETE
  False',
  True',
  ConditionOutcome'
  #-}

instance FromText ConditionOutcome where
  parser = (ConditionOutcome' . mk) <$> takeText

instance ToText ConditionOutcome where
  toText (ConditionOutcome' ci) = original ci

instance Hashable ConditionOutcome

instance NFData ConditionOutcome

instance ToByteString ConditionOutcome

instance ToQuery ConditionOutcome

instance ToHeader ConditionOutcome

instance FromJSON ConditionOutcome where
  parseJSON = parseJSONText "ConditionOutcome"
