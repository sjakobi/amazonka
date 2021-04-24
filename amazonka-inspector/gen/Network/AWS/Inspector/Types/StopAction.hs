{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.StopAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.StopAction
  ( StopAction
      ( ..,
        SkipEvaluation,
        StartEvaluation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StopAction = StopAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SkipEvaluation :: StopAction
pattern SkipEvaluation = StopAction' "SKIP_EVALUATION"

pattern StartEvaluation :: StopAction
pattern StartEvaluation = StopAction' "START_EVALUATION"

{-# COMPLETE
  SkipEvaluation,
  StartEvaluation,
  StopAction'
  #-}

instance FromText StopAction where
  parser = (StopAction' . mk) <$> takeText

instance ToText StopAction where
  toText (StopAction' ci) = original ci

instance Hashable StopAction

instance NFData StopAction

instance ToByteString StopAction

instance ToQuery StopAction

instance ToHeader StopAction

instance ToJSON StopAction where
  toJSON = toJSONText
