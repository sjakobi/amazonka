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
-- Module      : Network.AWS.SSM.Types.ExecutionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ExecutionMode
  ( ExecutionMode
      ( ..,
        ExecutionModeAuto,
        ExecutionModeInteractive
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionMode = ExecutionMode'
  { fromExecutionMode ::
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

pattern ExecutionModeAuto :: ExecutionMode
pattern ExecutionModeAuto = ExecutionMode' "Auto"

pattern ExecutionModeInteractive :: ExecutionMode
pattern ExecutionModeInteractive = ExecutionMode' "Interactive"

{-# COMPLETE
  ExecutionModeAuto,
  ExecutionModeInteractive,
  ExecutionMode'
  #-}

instance Prelude.FromText ExecutionMode where
  parser = ExecutionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionMode where
  toText (ExecutionMode' x) = x

instance Prelude.Hashable ExecutionMode

instance Prelude.NFData ExecutionMode

instance Prelude.ToByteString ExecutionMode

instance Prelude.ToQuery ExecutionMode

instance Prelude.ToHeader ExecutionMode

instance Prelude.ToJSON ExecutionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutionMode where
  parseJSON = Prelude.parseJSONText "ExecutionMode"
