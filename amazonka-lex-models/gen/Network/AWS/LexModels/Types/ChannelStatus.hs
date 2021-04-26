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
-- Module      : Network.AWS.LexModels.Types.ChannelStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ChannelStatus
  ( ChannelStatus
      ( ..,
        ChannelStatusCREATED,
        ChannelStatusFAILED,
        ChannelStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelStatus = ChannelStatus'
  { fromChannelStatus ::
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

pattern ChannelStatusCREATED :: ChannelStatus
pattern ChannelStatusCREATED = ChannelStatus' "CREATED"

pattern ChannelStatusFAILED :: ChannelStatus
pattern ChannelStatusFAILED = ChannelStatus' "FAILED"

pattern ChannelStatusINPROGRESS :: ChannelStatus
pattern ChannelStatusINPROGRESS = ChannelStatus' "IN_PROGRESS"

{-# COMPLETE
  ChannelStatusCREATED,
  ChannelStatusFAILED,
  ChannelStatusINPROGRESS,
  ChannelStatus'
  #-}

instance Prelude.FromText ChannelStatus where
  parser = ChannelStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelStatus where
  toText (ChannelStatus' x) = x

instance Prelude.Hashable ChannelStatus

instance Prelude.NFData ChannelStatus

instance Prelude.ToByteString ChannelStatus

instance Prelude.ToQuery ChannelStatus

instance Prelude.ToHeader ChannelStatus

instance Prelude.FromJSON ChannelStatus where
  parseJSON = Prelude.parseJSONText "ChannelStatus"
