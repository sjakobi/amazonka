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
-- Module      : Network.AWS.Rekognition.Types.StreamProcessorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.StreamProcessorStatus
  ( StreamProcessorStatus
      ( ..,
        StreamProcessorStatusFAILED,
        StreamProcessorStatusRUNNING,
        StreamProcessorStatusSTARTING,
        StreamProcessorStatusSTOPPED,
        StreamProcessorStatusSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamProcessorStatus = StreamProcessorStatus'
  { fromStreamProcessorStatus ::
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

pattern StreamProcessorStatusFAILED :: StreamProcessorStatus
pattern StreamProcessorStatusFAILED = StreamProcessorStatus' "FAILED"

pattern StreamProcessorStatusRUNNING :: StreamProcessorStatus
pattern StreamProcessorStatusRUNNING = StreamProcessorStatus' "RUNNING"

pattern StreamProcessorStatusSTARTING :: StreamProcessorStatus
pattern StreamProcessorStatusSTARTING = StreamProcessorStatus' "STARTING"

pattern StreamProcessorStatusSTOPPED :: StreamProcessorStatus
pattern StreamProcessorStatusSTOPPED = StreamProcessorStatus' "STOPPED"

pattern StreamProcessorStatusSTOPPING :: StreamProcessorStatus
pattern StreamProcessorStatusSTOPPING = StreamProcessorStatus' "STOPPING"

{-# COMPLETE
  StreamProcessorStatusFAILED,
  StreamProcessorStatusRUNNING,
  StreamProcessorStatusSTARTING,
  StreamProcessorStatusSTOPPED,
  StreamProcessorStatusSTOPPING,
  StreamProcessorStatus'
  #-}

instance Prelude.FromText StreamProcessorStatus where
  parser = StreamProcessorStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamProcessorStatus where
  toText (StreamProcessorStatus' x) = x

instance Prelude.Hashable StreamProcessorStatus

instance Prelude.NFData StreamProcessorStatus

instance Prelude.ToByteString StreamProcessorStatus

instance Prelude.ToQuery StreamProcessorStatus

instance Prelude.ToHeader StreamProcessorStatus

instance Prelude.FromJSON StreamProcessorStatus where
  parseJSON = Prelude.parseJSONText "StreamProcessorStatus"
