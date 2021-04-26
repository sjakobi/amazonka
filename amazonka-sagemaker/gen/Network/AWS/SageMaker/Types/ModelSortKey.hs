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
-- Module      : Network.AWS.SageMaker.Types.ModelSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelSortKey
  ( ModelSortKey
      ( ..,
        ModelSortKeyCreationTime,
        ModelSortKeyName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ModelSortKey = ModelSortKey'
  { fromModelSortKey ::
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

pattern ModelSortKeyCreationTime :: ModelSortKey
pattern ModelSortKeyCreationTime = ModelSortKey' "CreationTime"

pattern ModelSortKeyName :: ModelSortKey
pattern ModelSortKeyName = ModelSortKey' "Name"

{-# COMPLETE
  ModelSortKeyCreationTime,
  ModelSortKeyName,
  ModelSortKey'
  #-}

instance Prelude.FromText ModelSortKey where
  parser = ModelSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModelSortKey where
  toText (ModelSortKey' x) = x

instance Prelude.Hashable ModelSortKey

instance Prelude.NFData ModelSortKey

instance Prelude.ToByteString ModelSortKey

instance Prelude.ToQuery ModelSortKey

instance Prelude.ToHeader ModelSortKey

instance Prelude.ToJSON ModelSortKey where
  toJSON = Prelude.toJSONText
