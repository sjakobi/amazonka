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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentOption
  ( DeploymentOption
      ( ..,
        DeploymentOptionWITHOUTTRAFFICCONTROL,
        DeploymentOptionWITHTRAFFICCONTROL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentOption = DeploymentOption'
  { fromDeploymentOption ::
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

pattern DeploymentOptionWITHOUTTRAFFICCONTROL :: DeploymentOption
pattern DeploymentOptionWITHOUTTRAFFICCONTROL = DeploymentOption' "WITHOUT_TRAFFIC_CONTROL"

pattern DeploymentOptionWITHTRAFFICCONTROL :: DeploymentOption
pattern DeploymentOptionWITHTRAFFICCONTROL = DeploymentOption' "WITH_TRAFFIC_CONTROL"

{-# COMPLETE
  DeploymentOptionWITHOUTTRAFFICCONTROL,
  DeploymentOptionWITHTRAFFICCONTROL,
  DeploymentOption'
  #-}

instance Prelude.FromText DeploymentOption where
  parser = DeploymentOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentOption where
  toText (DeploymentOption' x) = x

instance Prelude.Hashable DeploymentOption

instance Prelude.NFData DeploymentOption

instance Prelude.ToByteString DeploymentOption

instance Prelude.ToQuery DeploymentOption

instance Prelude.ToHeader DeploymentOption

instance Prelude.ToJSON DeploymentOption where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentOption where
  parseJSON = Prelude.parseJSONText "DeploymentOption"
