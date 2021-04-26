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
-- Module      : Network.AWS.Glue.Types.TransformStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformStatusType
  ( TransformStatusType
      ( ..,
        TransformStatusTypeDELETING,
        TransformStatusTypeNOTREADY,
        TransformStatusTypeREADY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransformStatusType = TransformStatusType'
  { fromTransformStatusType ::
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

pattern TransformStatusTypeDELETING :: TransformStatusType
pattern TransformStatusTypeDELETING = TransformStatusType' "DELETING"

pattern TransformStatusTypeNOTREADY :: TransformStatusType
pattern TransformStatusTypeNOTREADY = TransformStatusType' "NOT_READY"

pattern TransformStatusTypeREADY :: TransformStatusType
pattern TransformStatusTypeREADY = TransformStatusType' "READY"

{-# COMPLETE
  TransformStatusTypeDELETING,
  TransformStatusTypeNOTREADY,
  TransformStatusTypeREADY,
  TransformStatusType'
  #-}

instance Prelude.FromText TransformStatusType where
  parser = TransformStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransformStatusType where
  toText (TransformStatusType' x) = x

instance Prelude.Hashable TransformStatusType

instance Prelude.NFData TransformStatusType

instance Prelude.ToByteString TransformStatusType

instance Prelude.ToQuery TransformStatusType

instance Prelude.ToHeader TransformStatusType

instance Prelude.ToJSON TransformStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransformStatusType where
  parseJSON = Prelude.parseJSONText "TransformStatusType"
