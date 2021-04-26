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
-- Module      : Network.AWS.DynamoDBStreams.Types.StreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDBStreams.Types.StreamStatus
  ( StreamStatus
      ( ..,
        StreamStatusDISABLED,
        StreamStatusDISABLING,
        StreamStatusENABLED,
        StreamStatusENABLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamStatus = StreamStatus'
  { fromStreamStatus ::
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

pattern StreamStatusDISABLED :: StreamStatus
pattern StreamStatusDISABLED = StreamStatus' "DISABLED"

pattern StreamStatusDISABLING :: StreamStatus
pattern StreamStatusDISABLING = StreamStatus' "DISABLING"

pattern StreamStatusENABLED :: StreamStatus
pattern StreamStatusENABLED = StreamStatus' "ENABLED"

pattern StreamStatusENABLING :: StreamStatus
pattern StreamStatusENABLING = StreamStatus' "ENABLING"

{-# COMPLETE
  StreamStatusDISABLED,
  StreamStatusDISABLING,
  StreamStatusENABLED,
  StreamStatusENABLING,
  StreamStatus'
  #-}

instance Prelude.FromText StreamStatus where
  parser = StreamStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamStatus where
  toText (StreamStatus' x) = x

instance Prelude.Hashable StreamStatus

instance Prelude.NFData StreamStatus

instance Prelude.ToByteString StreamStatus

instance Prelude.ToQuery StreamStatus

instance Prelude.ToHeader StreamStatus

instance Prelude.FromJSON StreamStatus where
  parseJSON = Prelude.parseJSONText "StreamStatus"
