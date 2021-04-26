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
-- Module      : Network.AWS.WorkSpaces.Types.ReconnectEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ReconnectEnum
  ( ReconnectEnum
      ( ..,
        ReconnectEnumDISABLED,
        ReconnectEnumENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReconnectEnum = ReconnectEnum'
  { fromReconnectEnum ::
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

pattern ReconnectEnumDISABLED :: ReconnectEnum
pattern ReconnectEnumDISABLED = ReconnectEnum' "DISABLED"

pattern ReconnectEnumENABLED :: ReconnectEnum
pattern ReconnectEnumENABLED = ReconnectEnum' "ENABLED"

{-# COMPLETE
  ReconnectEnumDISABLED,
  ReconnectEnumENABLED,
  ReconnectEnum'
  #-}

instance Prelude.FromText ReconnectEnum where
  parser = ReconnectEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReconnectEnum where
  toText (ReconnectEnum' x) = x

instance Prelude.Hashable ReconnectEnum

instance Prelude.NFData ReconnectEnum

instance Prelude.ToByteString ReconnectEnum

instance Prelude.ToQuery ReconnectEnum

instance Prelude.ToHeader ReconnectEnum

instance Prelude.ToJSON ReconnectEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ReconnectEnum where
  parseJSON = Prelude.parseJSONText "ReconnectEnum"
