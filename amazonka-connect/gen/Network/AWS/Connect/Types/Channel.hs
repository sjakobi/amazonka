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
-- Module      : Network.AWS.Connect.Types.Channel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.Channel
  ( Channel
      ( ..,
        ChannelCHAT,
        ChannelTASK,
        ChannelVOICE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Channel = Channel'
  { fromChannel ::
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

pattern ChannelCHAT :: Channel
pattern ChannelCHAT = Channel' "CHAT"

pattern ChannelTASK :: Channel
pattern ChannelTASK = Channel' "TASK"

pattern ChannelVOICE :: Channel
pattern ChannelVOICE = Channel' "VOICE"

{-# COMPLETE
  ChannelCHAT,
  ChannelTASK,
  ChannelVOICE,
  Channel'
  #-}

instance Prelude.FromText Channel where
  parser = Channel' Prelude.<$> Prelude.takeText

instance Prelude.ToText Channel where
  toText (Channel' x) = x

instance Prelude.Hashable Channel

instance Prelude.NFData Channel

instance Prelude.ToByteString Channel

instance Prelude.ToQuery Channel

instance Prelude.ToHeader Channel

instance Prelude.ToJSON Channel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Channel where
  parseJSON = Prelude.parseJSONText "Channel"
