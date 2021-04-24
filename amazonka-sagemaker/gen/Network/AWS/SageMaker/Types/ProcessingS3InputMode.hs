{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3InputMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3InputMode
  ( ProcessingS3InputMode
      ( ..,
        PSIMFile,
        PSIMPipe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessingS3InputMode
  = ProcessingS3InputMode'
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

pattern PSIMFile :: ProcessingS3InputMode
pattern PSIMFile = ProcessingS3InputMode' "File"

pattern PSIMPipe :: ProcessingS3InputMode
pattern PSIMPipe = ProcessingS3InputMode' "Pipe"

{-# COMPLETE
  PSIMFile,
  PSIMPipe,
  ProcessingS3InputMode'
  #-}

instance FromText ProcessingS3InputMode where
  parser = (ProcessingS3InputMode' . mk) <$> takeText

instance ToText ProcessingS3InputMode where
  toText (ProcessingS3InputMode' ci) = original ci

instance Hashable ProcessingS3InputMode

instance NFData ProcessingS3InputMode

instance ToByteString ProcessingS3InputMode

instance ToQuery ProcessingS3InputMode

instance ToHeader ProcessingS3InputMode

instance ToJSON ProcessingS3InputMode where
  toJSON = toJSONText

instance FromJSON ProcessingS3InputMode where
  parseJSON = parseJSONText "ProcessingS3InputMode"
