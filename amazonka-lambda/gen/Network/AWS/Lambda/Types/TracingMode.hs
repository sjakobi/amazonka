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
-- Module      : Network.AWS.Lambda.Types.TracingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.TracingMode
  ( TracingMode
      ( ..,
        TracingModeActive,
        TracingModePassThrough
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TracingMode = TracingMode'
  { fromTracingMode ::
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

pattern TracingModeActive :: TracingMode
pattern TracingModeActive = TracingMode' "Active"

pattern TracingModePassThrough :: TracingMode
pattern TracingModePassThrough = TracingMode' "PassThrough"

{-# COMPLETE
  TracingModeActive,
  TracingModePassThrough,
  TracingMode'
  #-}

instance Prelude.FromText TracingMode where
  parser = TracingMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText TracingMode where
  toText (TracingMode' x) = x

instance Prelude.Hashable TracingMode

instance Prelude.NFData TracingMode

instance Prelude.ToByteString TracingMode

instance Prelude.ToQuery TracingMode

instance Prelude.ToHeader TracingMode

instance Prelude.ToJSON TracingMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TracingMode where
  parseJSON = Prelude.parseJSONText "TracingMode"
