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
-- Module      : Network.AWS.ECS.Types.LaunchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.LaunchType
  ( LaunchType
      ( ..,
        LaunchTypeEC2,
        LaunchTypeFARGATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LaunchType = LaunchType'
  { fromLaunchType ::
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

pattern LaunchTypeEC2 :: LaunchType
pattern LaunchTypeEC2 = LaunchType' "EC2"

pattern LaunchTypeFARGATE :: LaunchType
pattern LaunchTypeFARGATE = LaunchType' "FARGATE"

{-# COMPLETE
  LaunchTypeEC2,
  LaunchTypeFARGATE,
  LaunchType'
  #-}

instance Prelude.FromText LaunchType where
  parser = LaunchType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LaunchType where
  toText (LaunchType' x) = x

instance Prelude.Hashable LaunchType

instance Prelude.NFData LaunchType

instance Prelude.ToByteString LaunchType

instance Prelude.ToQuery LaunchType

instance Prelude.ToHeader LaunchType

instance Prelude.ToJSON LaunchType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LaunchType where
  parseJSON = Prelude.parseJSONText "LaunchType"
