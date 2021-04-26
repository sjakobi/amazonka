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
-- Module      : Network.AWS.ECS.Types.NetworkMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.NetworkMode
  ( NetworkMode
      ( ..,
        NetworkModeAwsvpc,
        NetworkModeBridge,
        NetworkModeHost,
        NetworkModeNone
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NetworkMode = NetworkMode'
  { fromNetworkMode ::
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

pattern NetworkModeAwsvpc :: NetworkMode
pattern NetworkModeAwsvpc = NetworkMode' "awsvpc"

pattern NetworkModeBridge :: NetworkMode
pattern NetworkModeBridge = NetworkMode' "bridge"

pattern NetworkModeHost :: NetworkMode
pattern NetworkModeHost = NetworkMode' "host"

pattern NetworkModeNone :: NetworkMode
pattern NetworkModeNone = NetworkMode' "none"

{-# COMPLETE
  NetworkModeAwsvpc,
  NetworkModeBridge,
  NetworkModeHost,
  NetworkModeNone,
  NetworkMode'
  #-}

instance Prelude.FromText NetworkMode where
  parser = NetworkMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText NetworkMode where
  toText (NetworkMode' x) = x

instance Prelude.Hashable NetworkMode

instance Prelude.NFData NetworkMode

instance Prelude.ToByteString NetworkMode

instance Prelude.ToQuery NetworkMode

instance Prelude.ToHeader NetworkMode

instance Prelude.ToJSON NetworkMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NetworkMode where
  parseJSON = Prelude.parseJSONText "NetworkMode"
