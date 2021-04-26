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
-- Module      : Network.AWS.CognitoSync.Types.StreamingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.StreamingStatus
  ( StreamingStatus
      ( ..,
        StreamingStatusDISABLED,
        StreamingStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamingStatus = StreamingStatus'
  { fromStreamingStatus ::
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

pattern StreamingStatusDISABLED :: StreamingStatus
pattern StreamingStatusDISABLED = StreamingStatus' "DISABLED"

pattern StreamingStatusENABLED :: StreamingStatus
pattern StreamingStatusENABLED = StreamingStatus' "ENABLED"

{-# COMPLETE
  StreamingStatusDISABLED,
  StreamingStatusENABLED,
  StreamingStatus'
  #-}

instance Prelude.FromText StreamingStatus where
  parser = StreamingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamingStatus where
  toText (StreamingStatus' x) = x

instance Prelude.Hashable StreamingStatus

instance Prelude.NFData StreamingStatus

instance Prelude.ToByteString StreamingStatus

instance Prelude.ToQuery StreamingStatus

instance Prelude.ToHeader StreamingStatus

instance Prelude.ToJSON StreamingStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StreamingStatus where
  parseJSON = Prelude.parseJSONText "StreamingStatus"
