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
-- Module      : Network.AWS.CodeDeploy.Types.DeploymentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.DeploymentType
  ( DeploymentType
      ( ..,
        DeploymentTypeBLUEGREEN,
        DeploymentTypeINPLACE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeploymentType = DeploymentType'
  { fromDeploymentType ::
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

pattern DeploymentTypeBLUEGREEN :: DeploymentType
pattern DeploymentTypeBLUEGREEN = DeploymentType' "BLUE_GREEN"

pattern DeploymentTypeINPLACE :: DeploymentType
pattern DeploymentTypeINPLACE = DeploymentType' "IN_PLACE"

{-# COMPLETE
  DeploymentTypeBLUEGREEN,
  DeploymentTypeINPLACE,
  DeploymentType'
  #-}

instance Prelude.FromText DeploymentType where
  parser = DeploymentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeploymentType where
  toText (DeploymentType' x) = x

instance Prelude.Hashable DeploymentType

instance Prelude.NFData DeploymentType

instance Prelude.ToByteString DeploymentType

instance Prelude.ToQuery DeploymentType

instance Prelude.ToHeader DeploymentType

instance Prelude.ToJSON DeploymentType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeploymentType where
  parseJSON = Prelude.parseJSONText "DeploymentType"
