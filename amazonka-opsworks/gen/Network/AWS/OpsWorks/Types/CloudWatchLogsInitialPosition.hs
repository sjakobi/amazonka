{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.CloudWatchLogsInitialPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.CloudWatchLogsInitialPosition
  ( CloudWatchLogsInitialPosition
      ( ..,
        EndOfFile,
        StartOfFile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.
data CloudWatchLogsInitialPosition
  = CloudWatchLogsInitialPosition'
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

pattern EndOfFile :: CloudWatchLogsInitialPosition
pattern EndOfFile = CloudWatchLogsInitialPosition' "end_of_file"

pattern StartOfFile :: CloudWatchLogsInitialPosition
pattern StartOfFile = CloudWatchLogsInitialPosition' "start_of_file"

{-# COMPLETE
  EndOfFile,
  StartOfFile,
  CloudWatchLogsInitialPosition'
  #-}

instance FromText CloudWatchLogsInitialPosition where
  parser = (CloudWatchLogsInitialPosition' . mk) <$> takeText

instance ToText CloudWatchLogsInitialPosition where
  toText (CloudWatchLogsInitialPosition' ci) = original ci

instance Hashable CloudWatchLogsInitialPosition

instance NFData CloudWatchLogsInitialPosition

instance ToByteString CloudWatchLogsInitialPosition

instance ToQuery CloudWatchLogsInitialPosition

instance ToHeader CloudWatchLogsInitialPosition

instance ToJSON CloudWatchLogsInitialPosition where
  toJSON = toJSONText

instance FromJSON CloudWatchLogsInitialPosition where
  parseJSON = parseJSONText "CloudWatchLogsInitialPosition"
