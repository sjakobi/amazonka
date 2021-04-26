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
-- Module      : Network.AWS.ECS.Types.IpcMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.IpcMode
  ( IpcMode
      ( ..,
        IpcModeHost,
        IpcModeNone,
        IpcModeTask
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpcMode = IpcMode'
  { fromIpcMode ::
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

pattern IpcModeHost :: IpcMode
pattern IpcModeHost = IpcMode' "host"

pattern IpcModeNone :: IpcMode
pattern IpcModeNone = IpcMode' "none"

pattern IpcModeTask :: IpcMode
pattern IpcModeTask = IpcMode' "task"

{-# COMPLETE
  IpcModeHost,
  IpcModeNone,
  IpcModeTask,
  IpcMode'
  #-}

instance Prelude.FromText IpcMode where
  parser = IpcMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText IpcMode where
  toText (IpcMode' x) = x

instance Prelude.Hashable IpcMode

instance Prelude.NFData IpcMode

instance Prelude.ToByteString IpcMode

instance Prelude.ToQuery IpcMode

instance Prelude.ToHeader IpcMode

instance Prelude.ToJSON IpcMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IpcMode where
  parseJSON = Prelude.parseJSONText "IpcMode"
