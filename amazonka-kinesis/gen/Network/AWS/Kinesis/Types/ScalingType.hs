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
-- Module      : Network.AWS.Kinesis.Types.ScalingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ScalingType
  ( ScalingType
      ( ..,
        ScalingTypeUNIFORMSCALING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingType = ScalingType'
  { fromScalingType ::
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

pattern ScalingTypeUNIFORMSCALING :: ScalingType
pattern ScalingTypeUNIFORMSCALING = ScalingType' "UNIFORM_SCALING"

{-# COMPLETE
  ScalingTypeUNIFORMSCALING,
  ScalingType'
  #-}

instance Prelude.FromText ScalingType where
  parser = ScalingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingType where
  toText (ScalingType' x) = x

instance Prelude.Hashable ScalingType

instance Prelude.NFData ScalingType

instance Prelude.ToByteString ScalingType

instance Prelude.ToQuery ScalingType

instance Prelude.ToHeader ScalingType

instance Prelude.ToJSON ScalingType where
  toJSON = Prelude.toJSONText
