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
-- Module      : Network.AWS.Connect.Types.QueueStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueStatus
  ( QueueStatus
      ( ..,
        QueueStatusDISABLED,
        QueueStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueueStatus = QueueStatus'
  { fromQueueStatus ::
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

pattern QueueStatusDISABLED :: QueueStatus
pattern QueueStatusDISABLED = QueueStatus' "DISABLED"

pattern QueueStatusENABLED :: QueueStatus
pattern QueueStatusENABLED = QueueStatus' "ENABLED"

{-# COMPLETE
  QueueStatusDISABLED,
  QueueStatusENABLED,
  QueueStatus'
  #-}

instance Prelude.FromText QueueStatus where
  parser = QueueStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueueStatus where
  toText (QueueStatus' x) = x

instance Prelude.Hashable QueueStatus

instance Prelude.NFData QueueStatus

instance Prelude.ToByteString QueueStatus

instance Prelude.ToQuery QueueStatus

instance Prelude.ToHeader QueueStatus

instance Prelude.ToJSON QueueStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QueueStatus where
  parseJSON = Prelude.parseJSONText "QueueStatus"
