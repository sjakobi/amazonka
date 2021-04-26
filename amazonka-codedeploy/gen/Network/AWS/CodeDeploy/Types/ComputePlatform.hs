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
-- Module      : Network.AWS.CodeDeploy.Types.ComputePlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ComputePlatform
  ( ComputePlatform
      ( ..,
        ComputePlatformECS,
        ComputePlatformLambda,
        ComputePlatformServer
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ComputePlatform = ComputePlatform'
  { fromComputePlatform ::
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

pattern ComputePlatformECS :: ComputePlatform
pattern ComputePlatformECS = ComputePlatform' "ECS"

pattern ComputePlatformLambda :: ComputePlatform
pattern ComputePlatformLambda = ComputePlatform' "Lambda"

pattern ComputePlatformServer :: ComputePlatform
pattern ComputePlatformServer = ComputePlatform' "Server"

{-# COMPLETE
  ComputePlatformECS,
  ComputePlatformLambda,
  ComputePlatformServer,
  ComputePlatform'
  #-}

instance Prelude.FromText ComputePlatform where
  parser = ComputePlatform' Prelude.<$> Prelude.takeText

instance Prelude.ToText ComputePlatform where
  toText (ComputePlatform' x) = x

instance Prelude.Hashable ComputePlatform

instance Prelude.NFData ComputePlatform

instance Prelude.ToByteString ComputePlatform

instance Prelude.ToQuery ComputePlatform

instance Prelude.ToHeader ComputePlatform

instance Prelude.ToJSON ComputePlatform where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ComputePlatform where
  parseJSON = Prelude.parseJSONText "ComputePlatform"
