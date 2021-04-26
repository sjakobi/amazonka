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
-- Module      : Network.AWS.StepFunctions.Types.StateMachineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.StateMachineType
  ( StateMachineType
      ( ..,
        StateMachineTypeEXPRESS,
        StateMachineTypeSTANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StateMachineType = StateMachineType'
  { fromStateMachineType ::
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

pattern StateMachineTypeEXPRESS :: StateMachineType
pattern StateMachineTypeEXPRESS = StateMachineType' "EXPRESS"

pattern StateMachineTypeSTANDARD :: StateMachineType
pattern StateMachineTypeSTANDARD = StateMachineType' "STANDARD"

{-# COMPLETE
  StateMachineTypeEXPRESS,
  StateMachineTypeSTANDARD,
  StateMachineType'
  #-}

instance Prelude.FromText StateMachineType where
  parser = StateMachineType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StateMachineType where
  toText (StateMachineType' x) = x

instance Prelude.Hashable StateMachineType

instance Prelude.NFData StateMachineType

instance Prelude.ToByteString StateMachineType

instance Prelude.ToQuery StateMachineType

instance Prelude.ToHeader StateMachineType

instance Prelude.ToJSON StateMachineType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StateMachineType where
  parseJSON = Prelude.parseJSONText "StateMachineType"
