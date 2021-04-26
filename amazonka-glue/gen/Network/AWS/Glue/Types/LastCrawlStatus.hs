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
-- Module      : Network.AWS.Glue.Types.LastCrawlStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.LastCrawlStatus
  ( LastCrawlStatus
      ( ..,
        LastCrawlStatusCANCELLED,
        LastCrawlStatusFAILED,
        LastCrawlStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LastCrawlStatus = LastCrawlStatus'
  { fromLastCrawlStatus ::
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

pattern LastCrawlStatusCANCELLED :: LastCrawlStatus
pattern LastCrawlStatusCANCELLED = LastCrawlStatus' "CANCELLED"

pattern LastCrawlStatusFAILED :: LastCrawlStatus
pattern LastCrawlStatusFAILED = LastCrawlStatus' "FAILED"

pattern LastCrawlStatusSUCCEEDED :: LastCrawlStatus
pattern LastCrawlStatusSUCCEEDED = LastCrawlStatus' "SUCCEEDED"

{-# COMPLETE
  LastCrawlStatusCANCELLED,
  LastCrawlStatusFAILED,
  LastCrawlStatusSUCCEEDED,
  LastCrawlStatus'
  #-}

instance Prelude.FromText LastCrawlStatus where
  parser = LastCrawlStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LastCrawlStatus where
  toText (LastCrawlStatus' x) = x

instance Prelude.Hashable LastCrawlStatus

instance Prelude.NFData LastCrawlStatus

instance Prelude.ToByteString LastCrawlStatus

instance Prelude.ToQuery LastCrawlStatus

instance Prelude.ToHeader LastCrawlStatus

instance Prelude.FromJSON LastCrawlStatus where
  parseJSON = Prelude.parseJSONText "LastCrawlStatus"
