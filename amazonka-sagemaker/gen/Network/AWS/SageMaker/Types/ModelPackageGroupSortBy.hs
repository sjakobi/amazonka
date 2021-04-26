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
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroupSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroupSortBy
  ( ModelPackageGroupSortBy
      ( ..,
        ModelPackageGroupSortByCreationTime,
        ModelPackageGroupSortByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelPackageGroupSortBy = ModelPackageGroupSortBy'
  { fromModelPackageGroupSortBy ::
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

pattern ModelPackageGroupSortByCreationTime :: ModelPackageGroupSortBy
pattern ModelPackageGroupSortByCreationTime = ModelPackageGroupSortBy' "CreationTime"

pattern ModelPackageGroupSortByName :: ModelPackageGroupSortBy
pattern ModelPackageGroupSortByName = ModelPackageGroupSortBy' "Name"

{-# COMPLETE
  ModelPackageGroupSortByCreationTime,
  ModelPackageGroupSortByName,
  ModelPackageGroupSortBy'
  #-}

instance Prelude.FromText ModelPackageGroupSortBy where
  parser = ModelPackageGroupSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelPackageGroupSortBy where
  toText (ModelPackageGroupSortBy' x) = x

instance Prelude.Hashable ModelPackageGroupSortBy

instance Prelude.NFData ModelPackageGroupSortBy

instance Prelude.ToByteString ModelPackageGroupSortBy

instance Prelude.ToQuery ModelPackageGroupSortBy

instance Prelude.ToHeader ModelPackageGroupSortBy

instance Prelude.ToJSON ModelPackageGroupSortBy where
  toJSON = Prelude.toJSONText
