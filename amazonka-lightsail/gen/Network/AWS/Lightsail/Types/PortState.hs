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
-- Module      : Network.AWS.Lightsail.Types.PortState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortState
  ( PortState
      ( ..,
        PortStateClosed,
        PortStateOpen
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PortState = PortState'
  { fromPortState ::
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

pattern PortStateClosed :: PortState
pattern PortStateClosed = PortState' "closed"

pattern PortStateOpen :: PortState
pattern PortStateOpen = PortState' "open"

{-# COMPLETE
  PortStateClosed,
  PortStateOpen,
  PortState'
  #-}

instance Prelude.FromText PortState where
  parser = PortState' Prelude.<$> Prelude.takeText

instance Prelude.ToText PortState where
  toText (PortState' x) = x

instance Prelude.Hashable PortState

instance Prelude.NFData PortState

instance Prelude.ToByteString PortState

instance Prelude.ToQuery PortState

instance Prelude.ToHeader PortState

instance Prelude.FromJSON PortState where
  parseJSON = Prelude.parseJSONText "PortState"
