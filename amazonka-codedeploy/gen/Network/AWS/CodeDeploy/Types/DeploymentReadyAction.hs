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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentReadyAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentReadyAction
  ( DeploymentReadyAction
      ( ..,
        DeploymentReadyActionCONTINUEDEPLOYMENT,
        DeploymentReadyActionSTOPDEPLOYMENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentReadyAction = DeploymentReadyAction'
  { fromDeploymentReadyAction ::
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

pattern DeploymentReadyActionCONTINUEDEPLOYMENT :: DeploymentReadyAction
pattern DeploymentReadyActionCONTINUEDEPLOYMENT = DeploymentReadyAction' "CONTINUE_DEPLOYMENT"

pattern DeploymentReadyActionSTOPDEPLOYMENT :: DeploymentReadyAction
pattern DeploymentReadyActionSTOPDEPLOYMENT = DeploymentReadyAction' "STOP_DEPLOYMENT"

{-# COMPLETE
  DeploymentReadyActionCONTINUEDEPLOYMENT,
  DeploymentReadyActionSTOPDEPLOYMENT,
  DeploymentReadyAction'
  #-}

instance Prelude.FromText DeploymentReadyAction where
  parser = DeploymentReadyAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentReadyAction where
  toText (DeploymentReadyAction' x) = x

instance Prelude.Hashable DeploymentReadyAction

instance Prelude.NFData DeploymentReadyAction

instance Prelude.ToByteString DeploymentReadyAction

instance Prelude.ToQuery DeploymentReadyAction

instance Prelude.ToHeader DeploymentReadyAction

instance Prelude.ToJSON DeploymentReadyAction where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentReadyAction where
  parseJSON = Prelude.parseJSONText "DeploymentReadyAction"
