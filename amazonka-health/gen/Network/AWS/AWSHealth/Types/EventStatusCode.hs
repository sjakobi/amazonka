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
-- Module      : Network.AWS.AWSHealth.Types.EventStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EventStatusCode
  ( EventStatusCode
      ( ..,
        EventStatusCodeClosed,
        EventStatusCodeOpen,
        EventStatusCodeUpcoming
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventStatusCode = EventStatusCode'
  { fromEventStatusCode ::
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

pattern EventStatusCodeClosed :: EventStatusCode
pattern EventStatusCodeClosed = EventStatusCode' "closed"

pattern EventStatusCodeOpen :: EventStatusCode
pattern EventStatusCodeOpen = EventStatusCode' "open"

pattern EventStatusCodeUpcoming :: EventStatusCode
pattern EventStatusCodeUpcoming = EventStatusCode' "upcoming"

{-# COMPLETE
  EventStatusCodeClosed,
  EventStatusCodeOpen,
  EventStatusCodeUpcoming,
  EventStatusCode'
  #-}

instance Prelude.FromText EventStatusCode where
  parser = EventStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventStatusCode where
  toText (EventStatusCode' x) = x

instance Prelude.Hashable EventStatusCode

instance Prelude.NFData EventStatusCode

instance Prelude.ToByteString EventStatusCode

instance Prelude.ToQuery EventStatusCode

instance Prelude.ToHeader EventStatusCode

instance Prelude.ToJSON EventStatusCode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventStatusCode where
  parseJSON = Prelude.parseJSONText "EventStatusCode"
