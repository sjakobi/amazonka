{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3UploadMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3UploadMode
  ( ProcessingS3UploadMode
      ( ..,
        Continuous,
        EndOfJob
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProcessingS3UploadMode
  = ProcessingS3UploadMode'
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

pattern Continuous :: ProcessingS3UploadMode
pattern Continuous = ProcessingS3UploadMode' "Continuous"

pattern EndOfJob :: ProcessingS3UploadMode
pattern EndOfJob = ProcessingS3UploadMode' "EndOfJob"

{-# COMPLETE
  Continuous,
  EndOfJob,
  ProcessingS3UploadMode'
  #-}

instance FromText ProcessingS3UploadMode where
  parser = (ProcessingS3UploadMode' . mk) <$> takeText

instance ToText ProcessingS3UploadMode where
  toText (ProcessingS3UploadMode' ci) = original ci

instance Hashable ProcessingS3UploadMode

instance NFData ProcessingS3UploadMode

instance ToByteString ProcessingS3UploadMode

instance ToQuery ProcessingS3UploadMode

instance ToHeader ProcessingS3UploadMode

instance ToJSON ProcessingS3UploadMode where
  toJSON = toJSONText

instance FromJSON ProcessingS3UploadMode where
  parseJSON = parseJSONText "ProcessingS3UploadMode"
