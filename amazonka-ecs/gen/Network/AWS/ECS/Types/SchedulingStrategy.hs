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
-- Module      : Network.AWS.ECS.Types.SchedulingStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.SchedulingStrategy
  ( SchedulingStrategy
      ( ..,
        SchedulingStrategyDAEMON,
        SchedulingStrategyREPLICA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SchedulingStrategy = SchedulingStrategy'
  { fromSchedulingStrategy ::
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

pattern SchedulingStrategyDAEMON :: SchedulingStrategy
pattern SchedulingStrategyDAEMON = SchedulingStrategy' "DAEMON"

pattern SchedulingStrategyREPLICA :: SchedulingStrategy
pattern SchedulingStrategyREPLICA = SchedulingStrategy' "REPLICA"

{-# COMPLETE
  SchedulingStrategyDAEMON,
  SchedulingStrategyREPLICA,
  SchedulingStrategy'
  #-}

instance Prelude.FromText SchedulingStrategy where
  parser = SchedulingStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SchedulingStrategy where
  toText (SchedulingStrategy' x) = x

instance Prelude.Hashable SchedulingStrategy

instance Prelude.NFData SchedulingStrategy

instance Prelude.ToByteString SchedulingStrategy

instance Prelude.ToQuery SchedulingStrategy

instance Prelude.ToHeader SchedulingStrategy

instance Prelude.ToJSON SchedulingStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SchedulingStrategy where
  parseJSON = Prelude.parseJSONText "SchedulingStrategy"
