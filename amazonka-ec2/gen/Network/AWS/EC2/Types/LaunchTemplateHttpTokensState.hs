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
-- Module      : Network.AWS.EC2.Types.LaunchTemplateHttpTokensState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.LaunchTemplateHttpTokensState
  ( LaunchTemplateHttpTokensState
      ( ..,
        LaunchTemplateHttpTokensStateOptional,
        LaunchTemplateHttpTokensStateRequired
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype LaunchTemplateHttpTokensState = LaunchTemplateHttpTokensState'
  { fromLaunchTemplateHttpTokensState ::
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

pattern LaunchTemplateHttpTokensStateOptional :: LaunchTemplateHttpTokensState
pattern LaunchTemplateHttpTokensStateOptional = LaunchTemplateHttpTokensState' "optional"

pattern LaunchTemplateHttpTokensStateRequired :: LaunchTemplateHttpTokensState
pattern LaunchTemplateHttpTokensStateRequired = LaunchTemplateHttpTokensState' "required"

{-# COMPLETE
  LaunchTemplateHttpTokensStateOptional,
  LaunchTemplateHttpTokensStateRequired,
  LaunchTemplateHttpTokensState'
  #-}

instance Prelude.FromText LaunchTemplateHttpTokensState where
  parser = LaunchTemplateHttpTokensState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LaunchTemplateHttpTokensState where
  toText (LaunchTemplateHttpTokensState' x) = x

instance Prelude.Hashable LaunchTemplateHttpTokensState

instance Prelude.NFData LaunchTemplateHttpTokensState

instance Prelude.ToByteString LaunchTemplateHttpTokensState

instance Prelude.ToQuery LaunchTemplateHttpTokensState

instance Prelude.ToHeader LaunchTemplateHttpTokensState

instance Prelude.FromXML LaunchTemplateHttpTokensState where
  parseXML = Prelude.parseXMLText "LaunchTemplateHttpTokensState"
