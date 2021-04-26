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
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformArch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformArch
  ( TargetPlatformArch
      ( ..,
        TargetPlatformArchARM64,
        TargetPlatformArchARMEABI,
        TargetPlatformArchARMEABIHF,
        TargetPlatformArchX86,
        TargetPlatformArchX8664
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetPlatformArch = TargetPlatformArch'
  { fromTargetPlatformArch ::
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

pattern TargetPlatformArchARM64 :: TargetPlatformArch
pattern TargetPlatformArchARM64 = TargetPlatformArch' "ARM64"

pattern TargetPlatformArchARMEABI :: TargetPlatformArch
pattern TargetPlatformArchARMEABI = TargetPlatformArch' "ARM_EABI"

pattern TargetPlatformArchARMEABIHF :: TargetPlatformArch
pattern TargetPlatformArchARMEABIHF = TargetPlatformArch' "ARM_EABIHF"

pattern TargetPlatformArchX86 :: TargetPlatformArch
pattern TargetPlatformArchX86 = TargetPlatformArch' "X86"

pattern TargetPlatformArchX8664 :: TargetPlatformArch
pattern TargetPlatformArchX8664 = TargetPlatformArch' "X86_64"

{-# COMPLETE
  TargetPlatformArchARM64,
  TargetPlatformArchARMEABI,
  TargetPlatformArchARMEABIHF,
  TargetPlatformArchX86,
  TargetPlatformArchX8664,
  TargetPlatformArch'
  #-}

instance Prelude.FromText TargetPlatformArch where
  parser = TargetPlatformArch' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetPlatformArch where
  toText (TargetPlatformArch' x) = x

instance Prelude.Hashable TargetPlatformArch

instance Prelude.NFData TargetPlatformArch

instance Prelude.ToByteString TargetPlatformArch

instance Prelude.ToQuery TargetPlatformArch

instance Prelude.ToHeader TargetPlatformArch

instance Prelude.ToJSON TargetPlatformArch where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TargetPlatformArch where
  parseJSON = Prelude.parseJSONText "TargetPlatformArch"
