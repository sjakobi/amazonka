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
-- Module      : Network.AWS.SageMaker.Types.ModelPackageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageType
  ( ModelPackageType
      ( ..,
        ModelPackageTypeBoth,
        ModelPackageTypeUnversioned,
        ModelPackageTypeVersioned
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelPackageType = ModelPackageType'
  { fromModelPackageType ::
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

pattern ModelPackageTypeBoth :: ModelPackageType
pattern ModelPackageTypeBoth = ModelPackageType' "Both"

pattern ModelPackageTypeUnversioned :: ModelPackageType
pattern ModelPackageTypeUnversioned = ModelPackageType' "Unversioned"

pattern ModelPackageTypeVersioned :: ModelPackageType
pattern ModelPackageTypeVersioned = ModelPackageType' "Versioned"

{-# COMPLETE
  ModelPackageTypeBoth,
  ModelPackageTypeUnversioned,
  ModelPackageTypeVersioned,
  ModelPackageType'
  #-}

instance Prelude.FromText ModelPackageType where
  parser = ModelPackageType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelPackageType where
  toText (ModelPackageType' x) = x

instance Prelude.Hashable ModelPackageType

instance Prelude.NFData ModelPackageType

instance Prelude.ToByteString ModelPackageType

instance Prelude.ToQuery ModelPackageType

instance Prelude.ToHeader ModelPackageType

instance Prelude.ToJSON ModelPackageType where
  toJSON = Prelude.toJSONText
