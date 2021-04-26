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
-- Module      : Network.AWS.ECS.Types.PidMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PidMode
  ( PidMode
      ( ..,
        PidModeHost,
        PidModeTask
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PidMode = PidMode'
  { fromPidMode ::
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

pattern PidModeHost :: PidMode
pattern PidModeHost = PidMode' "host"

pattern PidModeTask :: PidMode
pattern PidModeTask = PidMode' "task"

{-# COMPLETE
  PidModeHost,
  PidModeTask,
  PidMode'
  #-}

instance Prelude.FromText PidMode where
  parser = PidMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText PidMode where
  toText (PidMode' x) = x

instance Prelude.Hashable PidMode

instance Prelude.NFData PidMode

instance Prelude.ToByteString PidMode

instance Prelude.ToQuery PidMode

instance Prelude.ToHeader PidMode

instance Prelude.ToJSON PidMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PidMode where
  parseJSON = Prelude.parseJSONText "PidMode"
