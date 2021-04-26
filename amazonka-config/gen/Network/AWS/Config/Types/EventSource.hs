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
-- Module      : Network.AWS.Config.Types.EventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.EventSource
  ( EventSource
      ( ..,
        EventSourceAws_Config
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventSource = EventSource'
  { fromEventSource ::
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

pattern EventSourceAws_Config :: EventSource
pattern EventSourceAws_Config = EventSource' "aws.config"

{-# COMPLETE
  EventSourceAws_Config,
  EventSource'
  #-}

instance Prelude.FromText EventSource where
  parser = EventSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventSource where
  toText (EventSource' x) = x

instance Prelude.Hashable EventSource

instance Prelude.NFData EventSource

instance Prelude.ToByteString EventSource

instance Prelude.ToQuery EventSource

instance Prelude.ToHeader EventSource

instance Prelude.ToJSON EventSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventSource where
  parseJSON = Prelude.parseJSONText "EventSource"
