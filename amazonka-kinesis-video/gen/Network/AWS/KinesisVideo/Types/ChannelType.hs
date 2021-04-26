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
-- Module      : Network.AWS.KinesisVideo.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.ChannelType
  ( ChannelType
      ( ..,
        ChannelTypeSINGLEMASTER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelType = ChannelType'
  { fromChannelType ::
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

pattern ChannelTypeSINGLEMASTER :: ChannelType
pattern ChannelTypeSINGLEMASTER = ChannelType' "SINGLE_MASTER"

{-# COMPLETE
  ChannelTypeSINGLEMASTER,
  ChannelType'
  #-}

instance Prelude.FromText ChannelType where
  parser = ChannelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelType where
  toText (ChannelType' x) = x

instance Prelude.Hashable ChannelType

instance Prelude.NFData ChannelType

instance Prelude.ToByteString ChannelType

instance Prelude.ToQuery ChannelType

instance Prelude.ToHeader ChannelType

instance Prelude.ToJSON ChannelType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChannelType where
  parseJSON = Prelude.parseJSONText "ChannelType"
