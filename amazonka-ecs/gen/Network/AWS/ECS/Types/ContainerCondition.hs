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
-- Module      : Network.AWS.ECS.Types.ContainerCondition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerCondition
  ( ContainerCondition
      ( ..,
        ContainerConditionCOMPLETE,
        ContainerConditionHEALTHY,
        ContainerConditionSTART,
        ContainerConditionSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerCondition = ContainerCondition'
  { fromContainerCondition ::
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

pattern ContainerConditionCOMPLETE :: ContainerCondition
pattern ContainerConditionCOMPLETE = ContainerCondition' "COMPLETE"

pattern ContainerConditionHEALTHY :: ContainerCondition
pattern ContainerConditionHEALTHY = ContainerCondition' "HEALTHY"

pattern ContainerConditionSTART :: ContainerCondition
pattern ContainerConditionSTART = ContainerCondition' "START"

pattern ContainerConditionSUCCESS :: ContainerCondition
pattern ContainerConditionSUCCESS = ContainerCondition' "SUCCESS"

{-# COMPLETE
  ContainerConditionCOMPLETE,
  ContainerConditionHEALTHY,
  ContainerConditionSTART,
  ContainerConditionSUCCESS,
  ContainerCondition'
  #-}

instance Prelude.FromText ContainerCondition where
  parser = ContainerCondition' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerCondition where
  toText (ContainerCondition' x) = x

instance Prelude.Hashable ContainerCondition

instance Prelude.NFData ContainerCondition

instance Prelude.ToByteString ContainerCondition

instance Prelude.ToQuery ContainerCondition

instance Prelude.ToHeader ContainerCondition

instance Prelude.ToJSON ContainerCondition where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerCondition where
  parseJSON = Prelude.parseJSONText "ContainerCondition"
