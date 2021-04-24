{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.StageRetryMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageRetryMode
  ( StageRetryMode
      ( ..,
        FailedActions
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StageRetryMode = StageRetryMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FailedActions :: StageRetryMode
pattern FailedActions = StageRetryMode' "FAILED_ACTIONS"

{-# COMPLETE
  FailedActions,
  StageRetryMode'
  #-}

instance FromText StageRetryMode where
  parser = (StageRetryMode' . mk) <$> takeText

instance ToText StageRetryMode where
  toText (StageRetryMode' ci) = original ci

instance Hashable StageRetryMode

instance NFData StageRetryMode

instance ToByteString StageRetryMode

instance ToQuery StageRetryMode

instance ToHeader StageRetryMode

instance ToJSON StageRetryMode where
  toJSON = toJSONText
