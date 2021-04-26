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
-- Module      : Network.AWS.Glue.Types.RecrawlBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.RecrawlBehavior
  ( RecrawlBehavior
      ( ..,
        RecrawlBehaviorCRAWLEVERYTHING,
        RecrawlBehaviorCRAWLNEWFOLDERSONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecrawlBehavior = RecrawlBehavior'
  { fromRecrawlBehavior ::
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

pattern RecrawlBehaviorCRAWLEVERYTHING :: RecrawlBehavior
pattern RecrawlBehaviorCRAWLEVERYTHING = RecrawlBehavior' "CRAWL_EVERYTHING"

pattern RecrawlBehaviorCRAWLNEWFOLDERSONLY :: RecrawlBehavior
pattern RecrawlBehaviorCRAWLNEWFOLDERSONLY = RecrawlBehavior' "CRAWL_NEW_FOLDERS_ONLY"

{-# COMPLETE
  RecrawlBehaviorCRAWLEVERYTHING,
  RecrawlBehaviorCRAWLNEWFOLDERSONLY,
  RecrawlBehavior'
  #-}

instance Prelude.FromText RecrawlBehavior where
  parser = RecrawlBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecrawlBehavior where
  toText (RecrawlBehavior' x) = x

instance Prelude.Hashable RecrawlBehavior

instance Prelude.NFData RecrawlBehavior

instance Prelude.ToByteString RecrawlBehavior

instance Prelude.ToQuery RecrawlBehavior

instance Prelude.ToHeader RecrawlBehavior

instance Prelude.ToJSON RecrawlBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecrawlBehavior where
  parseJSON = Prelude.parseJSONText "RecrawlBehavior"
