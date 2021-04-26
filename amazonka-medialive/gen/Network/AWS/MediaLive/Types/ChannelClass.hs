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
-- Module      : Network.AWS.MediaLive.Types.ChannelClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelClass
  ( ChannelClass
      ( ..,
        ChannelClassSINGLEPIPELINE,
        ChannelClassSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | A standard channel has two encoding pipelines and a single pipeline
-- channel only has one.
newtype ChannelClass = ChannelClass'
  { fromChannelClass ::
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

pattern ChannelClassSINGLEPIPELINE :: ChannelClass
pattern ChannelClassSINGLEPIPELINE = ChannelClass' "SINGLE_PIPELINE"

pattern ChannelClassSTANDARD :: ChannelClass
pattern ChannelClassSTANDARD = ChannelClass' "STANDARD"

{-# COMPLETE
  ChannelClassSINGLEPIPELINE,
  ChannelClassSTANDARD,
  ChannelClass'
  #-}

instance Prelude.FromText ChannelClass where
  parser = ChannelClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelClass where
  toText (ChannelClass' x) = x

instance Prelude.Hashable ChannelClass

instance Prelude.NFData ChannelClass

instance Prelude.ToByteString ChannelClass

instance Prelude.ToQuery ChannelClass

instance Prelude.ToHeader ChannelClass

instance Prelude.ToJSON ChannelClass where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ChannelClass where
  parseJSON = Prelude.parseJSONText "ChannelClass"
