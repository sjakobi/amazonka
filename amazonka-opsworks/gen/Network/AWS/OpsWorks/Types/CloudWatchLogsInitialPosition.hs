{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CloudWatchLogsInitialPositionEndOfFile,
        CloudWatchLogsInitialPositionStartOfFile
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies where to start to read data (start_of_file or end_of_file).
-- The default is start_of_file. It\'s only used if there is no state
-- persisted for that log stream.
newtype CloudWatchLogsInitialPosition = CloudWatchLogsInitialPosition'
  { fromCloudWatchLogsInitialPosition ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CloudWatchLogsInitialPositionEndOfFile :: CloudWatchLogsInitialPosition
pattern CloudWatchLogsInitialPositionEndOfFile = CloudWatchLogsInitialPosition' "end_of_file"

pattern CloudWatchLogsInitialPositionStartOfFile :: CloudWatchLogsInitialPosition
pattern CloudWatchLogsInitialPositionStartOfFile = CloudWatchLogsInitialPosition' "start_of_file"

{-# COMPLETE
  CloudWatchLogsInitialPositionEndOfFile,
  CloudWatchLogsInitialPositionStartOfFile,
  CloudWatchLogsInitialPosition'
  #-}

instance Prelude.FromText CloudWatchLogsInitialPosition where
  parser = CloudWatchLogsInitialPosition' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloudWatchLogsInitialPosition where
  toText (CloudWatchLogsInitialPosition' x) = x

instance Prelude.Hashable CloudWatchLogsInitialPosition

instance Prelude.NFData CloudWatchLogsInitialPosition

instance Prelude.ToByteString CloudWatchLogsInitialPosition

instance Prelude.ToQuery CloudWatchLogsInitialPosition

instance Prelude.ToHeader CloudWatchLogsInitialPosition

instance Prelude.ToJSON CloudWatchLogsInitialPosition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CloudWatchLogsInitialPosition where
  parseJSON = Prelude.parseJSONText "CloudWatchLogsInitialPosition"
