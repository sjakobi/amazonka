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
-- Module      : Network.AWS.SageMaker.Types.ModelPackageSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageSortBy
  ( ModelPackageSortBy
      ( ..,
        ModelPackageSortByCreationTime,
        ModelPackageSortByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelPackageSortBy = ModelPackageSortBy'
  { fromModelPackageSortBy ::
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

pattern ModelPackageSortByCreationTime :: ModelPackageSortBy
pattern ModelPackageSortByCreationTime = ModelPackageSortBy' "CreationTime"

pattern ModelPackageSortByName :: ModelPackageSortBy
pattern ModelPackageSortByName = ModelPackageSortBy' "Name"

{-# COMPLETE
  ModelPackageSortByCreationTime,
  ModelPackageSortByName,
  ModelPackageSortBy'
  #-}

instance Prelude.FromText ModelPackageSortBy where
  parser = ModelPackageSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelPackageSortBy where
  toText (ModelPackageSortBy' x) = x

instance Prelude.Hashable ModelPackageSortBy

instance Prelude.NFData ModelPackageSortBy

instance Prelude.ToByteString ModelPackageSortBy

instance Prelude.ToQuery ModelPackageSortBy

instance Prelude.ToHeader ModelPackageSortBy

instance Prelude.ToJSON ModelPackageSortBy where
  toJSON = Prelude.toJSONText
