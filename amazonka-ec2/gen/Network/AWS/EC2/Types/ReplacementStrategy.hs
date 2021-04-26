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
-- Module      : Network.AWS.EC2.Types.ReplacementStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReplacementStrategy
  ( ReplacementStrategy
      ( ..,
        ReplacementStrategyLaunch
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ReplacementStrategy = ReplacementStrategy'
  { fromReplacementStrategy ::
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

pattern ReplacementStrategyLaunch :: ReplacementStrategy
pattern ReplacementStrategyLaunch = ReplacementStrategy' "launch"

{-# COMPLETE
  ReplacementStrategyLaunch,
  ReplacementStrategy'
  #-}

instance Prelude.FromText ReplacementStrategy where
  parser = ReplacementStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplacementStrategy where
  toText (ReplacementStrategy' x) = x

instance Prelude.Hashable ReplacementStrategy

instance Prelude.NFData ReplacementStrategy

instance Prelude.ToByteString ReplacementStrategy

instance Prelude.ToQuery ReplacementStrategy

instance Prelude.ToHeader ReplacementStrategy

instance Prelude.FromXML ReplacementStrategy where
  parseXML = Prelude.parseXMLText "ReplacementStrategy"
