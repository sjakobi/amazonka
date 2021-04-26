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
-- Module      : Network.AWS.KinesisVideo.Types.ChannelProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelProtocol
  ( ChannelProtocol
      ( ..,
        ChannelProtocolHTTPS,
        ChannelProtocolWSS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelProtocol = ChannelProtocol'
  { fromChannelProtocol ::
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

pattern ChannelProtocolHTTPS :: ChannelProtocol
pattern ChannelProtocolHTTPS = ChannelProtocol' "HTTPS"

pattern ChannelProtocolWSS :: ChannelProtocol
pattern ChannelProtocolWSS = ChannelProtocol' "WSS"

{-# COMPLETE
  ChannelProtocolHTTPS,
  ChannelProtocolWSS,
  ChannelProtocol'
  #-}

instance Prelude.FromText ChannelProtocol where
  parser = ChannelProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelProtocol where
  toText (ChannelProtocol' x) = x

instance Prelude.Hashable ChannelProtocol

instance Prelude.NFData ChannelProtocol

instance Prelude.ToByteString ChannelProtocol

instance Prelude.ToQuery ChannelProtocol

instance Prelude.ToHeader ChannelProtocol

instance Prelude.ToJSON ChannelProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChannelProtocol where
  parseJSON = Prelude.parseJSONText "ChannelProtocol"
