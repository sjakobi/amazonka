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
-- Module      : Network.AWS.SageMaker.Types.CodeRepositorySortOrder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CodeRepositorySortOrder
  ( CodeRepositorySortOrder
      ( ..,
        CodeRepositorySortOrderAscending,
        CodeRepositorySortOrderDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CodeRepositorySortOrder = CodeRepositorySortOrder'
  { fromCodeRepositorySortOrder ::
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

pattern CodeRepositorySortOrderAscending :: CodeRepositorySortOrder
pattern CodeRepositorySortOrderAscending = CodeRepositorySortOrder' "Ascending"

pattern CodeRepositorySortOrderDescending :: CodeRepositorySortOrder
pattern CodeRepositorySortOrderDescending = CodeRepositorySortOrder' "Descending"

{-# COMPLETE
  CodeRepositorySortOrderAscending,
  CodeRepositorySortOrderDescending,
  CodeRepositorySortOrder'
  #-}

instance Prelude.FromText CodeRepositorySortOrder where
  parser = CodeRepositorySortOrder' Prelude.<$> Prelude.takeText

instance Prelude.ToText CodeRepositorySortOrder where
  toText (CodeRepositorySortOrder' x) = x

instance Prelude.Hashable CodeRepositorySortOrder

instance Prelude.NFData CodeRepositorySortOrder

instance Prelude.ToByteString CodeRepositorySortOrder

instance Prelude.ToQuery CodeRepositorySortOrder

instance Prelude.ToHeader CodeRepositorySortOrder

instance Prelude.ToJSON CodeRepositorySortOrder where
  toJSON = Prelude.toJSONText
