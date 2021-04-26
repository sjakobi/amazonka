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
-- Module      : Network.AWS.Lightsail.Types.InstanceAccessProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceAccessProtocol
  ( InstanceAccessProtocol
      ( ..,
        InstanceAccessProtocolRdp,
        InstanceAccessProtocolSsh
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceAccessProtocol = InstanceAccessProtocol'
  { fromInstanceAccessProtocol ::
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

pattern InstanceAccessProtocolRdp :: InstanceAccessProtocol
pattern InstanceAccessProtocolRdp = InstanceAccessProtocol' "rdp"

pattern InstanceAccessProtocolSsh :: InstanceAccessProtocol
pattern InstanceAccessProtocolSsh = InstanceAccessProtocol' "ssh"

{-# COMPLETE
  InstanceAccessProtocolRdp,
  InstanceAccessProtocolSsh,
  InstanceAccessProtocol'
  #-}

instance Prelude.FromText InstanceAccessProtocol where
  parser = InstanceAccessProtocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceAccessProtocol where
  toText (InstanceAccessProtocol' x) = x

instance Prelude.Hashable InstanceAccessProtocol

instance Prelude.NFData InstanceAccessProtocol

instance Prelude.ToByteString InstanceAccessProtocol

instance Prelude.ToQuery InstanceAccessProtocol

instance Prelude.ToHeader InstanceAccessProtocol

instance Prelude.ToJSON InstanceAccessProtocol where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InstanceAccessProtocol where
  parseJSON = Prelude.parseJSONText "InstanceAccessProtocol"
