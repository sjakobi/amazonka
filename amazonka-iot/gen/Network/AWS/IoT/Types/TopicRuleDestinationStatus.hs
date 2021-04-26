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
-- Module      : Network.AWS.IoT.Types.TopicRuleDestinationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.TopicRuleDestinationStatus
  ( TopicRuleDestinationStatus
      ( ..,
        TopicRuleDestinationStatusDELETING,
        TopicRuleDestinationStatusDISABLED,
        TopicRuleDestinationStatusENABLED,
        TopicRuleDestinationStatusERROR,
        TopicRuleDestinationStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TopicRuleDestinationStatus = TopicRuleDestinationStatus'
  { fromTopicRuleDestinationStatus ::
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

pattern TopicRuleDestinationStatusDELETING :: TopicRuleDestinationStatus
pattern TopicRuleDestinationStatusDELETING = TopicRuleDestinationStatus' "DELETING"

pattern TopicRuleDestinationStatusDISABLED :: TopicRuleDestinationStatus
pattern TopicRuleDestinationStatusDISABLED = TopicRuleDestinationStatus' "DISABLED"

pattern TopicRuleDestinationStatusENABLED :: TopicRuleDestinationStatus
pattern TopicRuleDestinationStatusENABLED = TopicRuleDestinationStatus' "ENABLED"

pattern TopicRuleDestinationStatusERROR :: TopicRuleDestinationStatus
pattern TopicRuleDestinationStatusERROR = TopicRuleDestinationStatus' "ERROR"

pattern TopicRuleDestinationStatusINPROGRESS :: TopicRuleDestinationStatus
pattern TopicRuleDestinationStatusINPROGRESS = TopicRuleDestinationStatus' "IN_PROGRESS"

{-# COMPLETE
  TopicRuleDestinationStatusDELETING,
  TopicRuleDestinationStatusDISABLED,
  TopicRuleDestinationStatusENABLED,
  TopicRuleDestinationStatusERROR,
  TopicRuleDestinationStatusINPROGRESS,
  TopicRuleDestinationStatus'
  #-}

instance Prelude.FromText TopicRuleDestinationStatus where
  parser = TopicRuleDestinationStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TopicRuleDestinationStatus where
  toText (TopicRuleDestinationStatus' x) = x

instance Prelude.Hashable TopicRuleDestinationStatus

instance Prelude.NFData TopicRuleDestinationStatus

instance Prelude.ToByteString TopicRuleDestinationStatus

instance Prelude.ToQuery TopicRuleDestinationStatus

instance Prelude.ToHeader TopicRuleDestinationStatus

instance Prelude.ToJSON TopicRuleDestinationStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TopicRuleDestinationStatus where
  parseJSON = Prelude.parseJSONText "TopicRuleDestinationStatus"
