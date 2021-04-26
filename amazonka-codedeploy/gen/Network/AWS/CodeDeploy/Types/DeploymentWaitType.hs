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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentWaitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentWaitType
  ( DeploymentWaitType
      ( ..,
        DeploymentWaitTypeREADYWAIT,
        DeploymentWaitTypeTERMINATIONWAIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentWaitType = DeploymentWaitType'
  { fromDeploymentWaitType ::
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

pattern DeploymentWaitTypeREADYWAIT :: DeploymentWaitType
pattern DeploymentWaitTypeREADYWAIT = DeploymentWaitType' "READY_WAIT"

pattern DeploymentWaitTypeTERMINATIONWAIT :: DeploymentWaitType
pattern DeploymentWaitTypeTERMINATIONWAIT = DeploymentWaitType' "TERMINATION_WAIT"

{-# COMPLETE
  DeploymentWaitTypeREADYWAIT,
  DeploymentWaitTypeTERMINATIONWAIT,
  DeploymentWaitType'
  #-}

instance Prelude.FromText DeploymentWaitType where
  parser = DeploymentWaitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentWaitType where
  toText (DeploymentWaitType' x) = x

instance Prelude.Hashable DeploymentWaitType

instance Prelude.NFData DeploymentWaitType

instance Prelude.ToByteString DeploymentWaitType

instance Prelude.ToQuery DeploymentWaitType

instance Prelude.ToHeader DeploymentWaitType

instance Prelude.ToJSON DeploymentWaitType where
  toJSON = Prelude.toJSONText
