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
-- Module      : Network.AWS.Glue.Types.CrawlerState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.CrawlerState
  ( CrawlerState
      ( ..,
        CrawlerStateREADY,
        CrawlerStateRUNNING,
        CrawlerStateSTOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CrawlerState = CrawlerState'
  { fromCrawlerState ::
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

pattern CrawlerStateREADY :: CrawlerState
pattern CrawlerStateREADY = CrawlerState' "READY"

pattern CrawlerStateRUNNING :: CrawlerState
pattern CrawlerStateRUNNING = CrawlerState' "RUNNING"

pattern CrawlerStateSTOPPING :: CrawlerState
pattern CrawlerStateSTOPPING = CrawlerState' "STOPPING"

{-# COMPLETE
  CrawlerStateREADY,
  CrawlerStateRUNNING,
  CrawlerStateSTOPPING,
  CrawlerState'
  #-}

instance Prelude.FromText CrawlerState where
  parser = CrawlerState' Prelude.<$> Prelude.takeText

instance Prelude.ToText CrawlerState where
  toText (CrawlerState' x) = x

instance Prelude.Hashable CrawlerState

instance Prelude.NFData CrawlerState

instance Prelude.ToByteString CrawlerState

instance Prelude.ToQuery CrawlerState

instance Prelude.ToHeader CrawlerState

instance Prelude.FromJSON CrawlerState where
  parseJSON = Prelude.parseJSONText "CrawlerState"
