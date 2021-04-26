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
-- Module      : Network.AWS.IoT.Types.BehaviorCriteriaType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.BehaviorCriteriaType
  ( BehaviorCriteriaType
      ( ..,
        BehaviorCriteriaTypeMACHINELEARNING,
        BehaviorCriteriaTypeSTATIC,
        BehaviorCriteriaTypeSTATISTICAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BehaviorCriteriaType = BehaviorCriteriaType'
  { fromBehaviorCriteriaType ::
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

pattern BehaviorCriteriaTypeMACHINELEARNING :: BehaviorCriteriaType
pattern BehaviorCriteriaTypeMACHINELEARNING = BehaviorCriteriaType' "MACHINE_LEARNING"

pattern BehaviorCriteriaTypeSTATIC :: BehaviorCriteriaType
pattern BehaviorCriteriaTypeSTATIC = BehaviorCriteriaType' "STATIC"

pattern BehaviorCriteriaTypeSTATISTICAL :: BehaviorCriteriaType
pattern BehaviorCriteriaTypeSTATISTICAL = BehaviorCriteriaType' "STATISTICAL"

{-# COMPLETE
  BehaviorCriteriaTypeMACHINELEARNING,
  BehaviorCriteriaTypeSTATIC,
  BehaviorCriteriaTypeSTATISTICAL,
  BehaviorCriteriaType'
  #-}

instance Prelude.FromText BehaviorCriteriaType where
  parser = BehaviorCriteriaType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BehaviorCriteriaType where
  toText (BehaviorCriteriaType' x) = x

instance Prelude.Hashable BehaviorCriteriaType

instance Prelude.NFData BehaviorCriteriaType

instance Prelude.ToByteString BehaviorCriteriaType

instance Prelude.ToQuery BehaviorCriteriaType

instance Prelude.ToHeader BehaviorCriteriaType

instance Prelude.ToJSON BehaviorCriteriaType where
  toJSON = Prelude.toJSONText
