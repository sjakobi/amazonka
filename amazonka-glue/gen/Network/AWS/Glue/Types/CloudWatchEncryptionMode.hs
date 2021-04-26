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
-- Module      : Network.AWS.Glue.Types.CloudWatchEncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CloudWatchEncryptionMode
  ( CloudWatchEncryptionMode
      ( ..,
        CloudWatchEncryptionModeDISABLED,
        CloudWatchEncryptionModeSSEKMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CloudWatchEncryptionMode = CloudWatchEncryptionMode'
  { fromCloudWatchEncryptionMode ::
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

pattern CloudWatchEncryptionModeDISABLED :: CloudWatchEncryptionMode
pattern CloudWatchEncryptionModeDISABLED = CloudWatchEncryptionMode' "DISABLED"

pattern CloudWatchEncryptionModeSSEKMS :: CloudWatchEncryptionMode
pattern CloudWatchEncryptionModeSSEKMS = CloudWatchEncryptionMode' "SSE-KMS"

{-# COMPLETE
  CloudWatchEncryptionModeDISABLED,
  CloudWatchEncryptionModeSSEKMS,
  CloudWatchEncryptionMode'
  #-}

instance Prelude.FromText CloudWatchEncryptionMode where
  parser = CloudWatchEncryptionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloudWatchEncryptionMode where
  toText (CloudWatchEncryptionMode' x) = x

instance Prelude.Hashable CloudWatchEncryptionMode

instance Prelude.NFData CloudWatchEncryptionMode

instance Prelude.ToByteString CloudWatchEncryptionMode

instance Prelude.ToQuery CloudWatchEncryptionMode

instance Prelude.ToHeader CloudWatchEncryptionMode

instance Prelude.ToJSON CloudWatchEncryptionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CloudWatchEncryptionMode where
  parseJSON = Prelude.parseJSONText "CloudWatchEncryptionMode"
