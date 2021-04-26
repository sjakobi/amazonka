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
-- Module      : Network.AWS.ECS.Types.ContainerInstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ContainerInstanceStatus
  ( ContainerInstanceStatus
      ( ..,
        ContainerInstanceStatusACTIVE,
        ContainerInstanceStatusDEREGISTERING,
        ContainerInstanceStatusDRAINING,
        ContainerInstanceStatusREGISTERING,
        ContainerInstanceStatusREGISTRATIONFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerInstanceStatus = ContainerInstanceStatus'
  { fromContainerInstanceStatus ::
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

pattern ContainerInstanceStatusACTIVE :: ContainerInstanceStatus
pattern ContainerInstanceStatusACTIVE = ContainerInstanceStatus' "ACTIVE"

pattern ContainerInstanceStatusDEREGISTERING :: ContainerInstanceStatus
pattern ContainerInstanceStatusDEREGISTERING = ContainerInstanceStatus' "DEREGISTERING"

pattern ContainerInstanceStatusDRAINING :: ContainerInstanceStatus
pattern ContainerInstanceStatusDRAINING = ContainerInstanceStatus' "DRAINING"

pattern ContainerInstanceStatusREGISTERING :: ContainerInstanceStatus
pattern ContainerInstanceStatusREGISTERING = ContainerInstanceStatus' "REGISTERING"

pattern ContainerInstanceStatusREGISTRATIONFAILED :: ContainerInstanceStatus
pattern ContainerInstanceStatusREGISTRATIONFAILED = ContainerInstanceStatus' "REGISTRATION_FAILED"

{-# COMPLETE
  ContainerInstanceStatusACTIVE,
  ContainerInstanceStatusDEREGISTERING,
  ContainerInstanceStatusDRAINING,
  ContainerInstanceStatusREGISTERING,
  ContainerInstanceStatusREGISTRATIONFAILED,
  ContainerInstanceStatus'
  #-}

instance Prelude.FromText ContainerInstanceStatus where
  parser = ContainerInstanceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerInstanceStatus where
  toText (ContainerInstanceStatus' x) = x

instance Prelude.Hashable ContainerInstanceStatus

instance Prelude.NFData ContainerInstanceStatus

instance Prelude.ToByteString ContainerInstanceStatus

instance Prelude.ToQuery ContainerInstanceStatus

instance Prelude.ToHeader ContainerInstanceStatus

instance Prelude.ToJSON ContainerInstanceStatus where
  toJSON = Prelude.toJSONText
