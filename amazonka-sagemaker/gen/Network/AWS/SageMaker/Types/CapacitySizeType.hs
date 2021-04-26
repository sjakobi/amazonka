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
-- Module      : Network.AWS.SageMaker.Types.CapacitySizeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CapacitySizeType
  ( CapacitySizeType
      ( ..,
        CapacitySizeTypeCAPACITYPERCENT,
        CapacitySizeTypeINSTANCECOUNT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CapacitySizeType = CapacitySizeType'
  { fromCapacitySizeType ::
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

pattern CapacitySizeTypeCAPACITYPERCENT :: CapacitySizeType
pattern CapacitySizeTypeCAPACITYPERCENT = CapacitySizeType' "CAPACITY_PERCENT"

pattern CapacitySizeTypeINSTANCECOUNT :: CapacitySizeType
pattern CapacitySizeTypeINSTANCECOUNT = CapacitySizeType' "INSTANCE_COUNT"

{-# COMPLETE
  CapacitySizeTypeCAPACITYPERCENT,
  CapacitySizeTypeINSTANCECOUNT,
  CapacitySizeType'
  #-}

instance Prelude.FromText CapacitySizeType where
  parser = CapacitySizeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacitySizeType where
  toText (CapacitySizeType' x) = x

instance Prelude.Hashable CapacitySizeType

instance Prelude.NFData CapacitySizeType

instance Prelude.ToByteString CapacitySizeType

instance Prelude.ToQuery CapacitySizeType

instance Prelude.ToHeader CapacitySizeType

instance Prelude.ToJSON CapacitySizeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CapacitySizeType where
  parseJSON = Prelude.parseJSONText "CapacitySizeType"
