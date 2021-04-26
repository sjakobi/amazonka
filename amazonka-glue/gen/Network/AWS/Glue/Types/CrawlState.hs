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
-- Module      : Network.AWS.Glue.Types.CrawlState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlState
  ( CrawlState
      ( ..,
        CrawlStateCANCELLED,
        CrawlStateCANCELLING,
        CrawlStateFAILED,
        CrawlStateRUNNING,
        CrawlStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CrawlState = CrawlState'
  { fromCrawlState ::
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

pattern CrawlStateCANCELLED :: CrawlState
pattern CrawlStateCANCELLED = CrawlState' "CANCELLED"

pattern CrawlStateCANCELLING :: CrawlState
pattern CrawlStateCANCELLING = CrawlState' "CANCELLING"

pattern CrawlStateFAILED :: CrawlState
pattern CrawlStateFAILED = CrawlState' "FAILED"

pattern CrawlStateRUNNING :: CrawlState
pattern CrawlStateRUNNING = CrawlState' "RUNNING"

pattern CrawlStateSUCCEEDED :: CrawlState
pattern CrawlStateSUCCEEDED = CrawlState' "SUCCEEDED"

{-# COMPLETE
  CrawlStateCANCELLED,
  CrawlStateCANCELLING,
  CrawlStateFAILED,
  CrawlStateRUNNING,
  CrawlStateSUCCEEDED,
  CrawlState'
  #-}

instance Prelude.FromText CrawlState where
  parser = CrawlState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CrawlState where
  toText (CrawlState' x) = x

instance Prelude.Hashable CrawlState

instance Prelude.NFData CrawlState

instance Prelude.ToByteString CrawlState

instance Prelude.ToQuery CrawlState

instance Prelude.ToHeader CrawlState

instance Prelude.ToJSON CrawlState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CrawlState where
  parseJSON = Prelude.parseJSONText "CrawlState"
