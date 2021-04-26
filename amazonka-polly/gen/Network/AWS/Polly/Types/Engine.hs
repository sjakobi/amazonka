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
-- Module      : Network.AWS.Polly.Types.Engine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.Engine
  ( Engine
      ( ..,
        EngineNeural,
        EngineStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Engine = Engine' {fromEngine :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern EngineNeural :: Engine
pattern EngineNeural = Engine' "neural"

pattern EngineStandard :: Engine
pattern EngineStandard = Engine' "standard"

{-# COMPLETE
  EngineNeural,
  EngineStandard,
  Engine'
  #-}

instance Prelude.FromText Engine where
  parser = Engine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Engine where
  toText (Engine' x) = x

instance Prelude.Hashable Engine

instance Prelude.NFData Engine

instance Prelude.ToByteString Engine

instance Prelude.ToQuery Engine

instance Prelude.ToHeader Engine

instance Prelude.ToJSON Engine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Engine where
  parseJSON = Prelude.parseJSONText "Engine"
