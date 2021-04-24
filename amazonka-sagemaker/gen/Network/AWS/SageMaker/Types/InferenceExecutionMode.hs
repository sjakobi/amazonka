{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.InferenceExecutionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.InferenceExecutionMode
  ( InferenceExecutionMode
      ( ..,
        Direct,
        Serial
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InferenceExecutionMode
  = InferenceExecutionMode'
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

pattern Direct :: InferenceExecutionMode
pattern Direct = InferenceExecutionMode' "Direct"

pattern Serial :: InferenceExecutionMode
pattern Serial = InferenceExecutionMode' "Serial"

{-# COMPLETE
  Direct,
  Serial,
  InferenceExecutionMode'
  #-}

instance FromText InferenceExecutionMode where
  parser = (InferenceExecutionMode' . mk) <$> takeText

instance ToText InferenceExecutionMode where
  toText (InferenceExecutionMode' ci) = original ci

instance Hashable InferenceExecutionMode

instance NFData InferenceExecutionMode

instance ToByteString InferenceExecutionMode

instance ToQuery InferenceExecutionMode

instance ToHeader InferenceExecutionMode

instance ToJSON InferenceExecutionMode where
  toJSON = toJSONText

instance FromJSON InferenceExecutionMode where
  parseJSON = parseJSONText "InferenceExecutionMode"
