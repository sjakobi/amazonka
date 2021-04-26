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
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceDeploymentState
  ( ContainerServiceDeploymentState
      ( ..,
        ContainerServiceDeploymentStateACTIVATING,
        ContainerServiceDeploymentStateACTIVE,
        ContainerServiceDeploymentStateFAILED,
        ContainerServiceDeploymentStateINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServiceDeploymentState = ContainerServiceDeploymentState'
  { fromContainerServiceDeploymentState ::
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

pattern ContainerServiceDeploymentStateACTIVATING :: ContainerServiceDeploymentState
pattern ContainerServiceDeploymentStateACTIVATING = ContainerServiceDeploymentState' "ACTIVATING"

pattern ContainerServiceDeploymentStateACTIVE :: ContainerServiceDeploymentState
pattern ContainerServiceDeploymentStateACTIVE = ContainerServiceDeploymentState' "ACTIVE"

pattern ContainerServiceDeploymentStateFAILED :: ContainerServiceDeploymentState
pattern ContainerServiceDeploymentStateFAILED = ContainerServiceDeploymentState' "FAILED"

pattern ContainerServiceDeploymentStateINACTIVE :: ContainerServiceDeploymentState
pattern ContainerServiceDeploymentStateINACTIVE = ContainerServiceDeploymentState' "INACTIVE"

{-# COMPLETE
  ContainerServiceDeploymentStateACTIVATING,
  ContainerServiceDeploymentStateACTIVE,
  ContainerServiceDeploymentStateFAILED,
  ContainerServiceDeploymentStateINACTIVE,
  ContainerServiceDeploymentState'
  #-}

instance Prelude.FromText ContainerServiceDeploymentState where
  parser = ContainerServiceDeploymentState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerServiceDeploymentState where
  toText (ContainerServiceDeploymentState' x) = x

instance Prelude.Hashable ContainerServiceDeploymentState

instance Prelude.NFData ContainerServiceDeploymentState

instance Prelude.ToByteString ContainerServiceDeploymentState

instance Prelude.ToQuery ContainerServiceDeploymentState

instance Prelude.ToHeader ContainerServiceDeploymentState

instance Prelude.FromJSON ContainerServiceDeploymentState where
  parseJSON = Prelude.parseJSONText "ContainerServiceDeploymentState"
