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
-- Module      : Network.AWS.WorkSpaces.Types.RunningMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.RunningMode
  ( RunningMode
      ( ..,
        RunningModeALWAYSON,
        RunningModeAUTOSTOP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RunningMode = RunningMode'
  { fromRunningMode ::
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

pattern RunningModeALWAYSON :: RunningMode
pattern RunningModeALWAYSON = RunningMode' "ALWAYS_ON"

pattern RunningModeAUTOSTOP :: RunningMode
pattern RunningModeAUTOSTOP = RunningMode' "AUTO_STOP"

{-# COMPLETE
  RunningModeALWAYSON,
  RunningModeAUTOSTOP,
  RunningMode'
  #-}

instance Prelude.FromText RunningMode where
  parser = RunningMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RunningMode where
  toText (RunningMode' x) = x

instance Prelude.Hashable RunningMode

instance Prelude.NFData RunningMode

instance Prelude.ToByteString RunningMode

instance Prelude.ToQuery RunningMode

instance Prelude.ToHeader RunningMode

instance Prelude.ToJSON RunningMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RunningMode where
  parseJSON = Prelude.parseJSONText "RunningMode"
