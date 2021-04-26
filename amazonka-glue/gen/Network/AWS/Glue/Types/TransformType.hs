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
-- Module      : Network.AWS.Glue.Types.TransformType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformType
  ( TransformType
      ( ..,
        TransformTypeFINDMATCHES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransformType = TransformType'
  { fromTransformType ::
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

pattern TransformTypeFINDMATCHES :: TransformType
pattern TransformTypeFINDMATCHES = TransformType' "FIND_MATCHES"

{-# COMPLETE
  TransformTypeFINDMATCHES,
  TransformType'
  #-}

instance Prelude.FromText TransformType where
  parser = TransformType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransformType where
  toText (TransformType' x) = x

instance Prelude.Hashable TransformType

instance Prelude.NFData TransformType

instance Prelude.ToByteString TransformType

instance Prelude.ToQuery TransformType

instance Prelude.ToHeader TransformType

instance Prelude.ToJSON TransformType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TransformType where
  parseJSON = Prelude.parseJSONText "TransformType"
