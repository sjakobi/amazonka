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
-- Module      : Network.AWS.ECS.Types.Compatibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Compatibility
  ( Compatibility
      ( ..,
        CompatibilityEC2,
        CompatibilityFARGATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Compatibility = Compatibility'
  { fromCompatibility ::
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

pattern CompatibilityEC2 :: Compatibility
pattern CompatibilityEC2 = Compatibility' "EC2"

pattern CompatibilityFARGATE :: Compatibility
pattern CompatibilityFARGATE = Compatibility' "FARGATE"

{-# COMPLETE
  CompatibilityEC2,
  CompatibilityFARGATE,
  Compatibility'
  #-}

instance Prelude.FromText Compatibility where
  parser = Compatibility' Prelude.<$> Prelude.takeText

instance Prelude.ToText Compatibility where
  toText (Compatibility' x) = x

instance Prelude.Hashable Compatibility

instance Prelude.NFData Compatibility

instance Prelude.ToByteString Compatibility

instance Prelude.ToQuery Compatibility

instance Prelude.ToHeader Compatibility

instance Prelude.ToJSON Compatibility where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Compatibility where
  parseJSON = Prelude.parseJSONText "Compatibility"
