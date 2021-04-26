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
-- Module      : Network.AWS.SageMaker.Types.AlgorithmSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmSortBy
  ( AlgorithmSortBy
      ( ..,
        AlgorithmSortByCreationTime,
        AlgorithmSortByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AlgorithmSortBy = AlgorithmSortBy'
  { fromAlgorithmSortBy ::
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

pattern AlgorithmSortByCreationTime :: AlgorithmSortBy
pattern AlgorithmSortByCreationTime = AlgorithmSortBy' "CreationTime"

pattern AlgorithmSortByName :: AlgorithmSortBy
pattern AlgorithmSortByName = AlgorithmSortBy' "Name"

{-# COMPLETE
  AlgorithmSortByCreationTime,
  AlgorithmSortByName,
  AlgorithmSortBy'
  #-}

instance Prelude.FromText AlgorithmSortBy where
  parser = AlgorithmSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlgorithmSortBy where
  toText (AlgorithmSortBy' x) = x

instance Prelude.Hashable AlgorithmSortBy

instance Prelude.NFData AlgorithmSortBy

instance Prelude.ToByteString AlgorithmSortBy

instance Prelude.ToQuery AlgorithmSortBy

instance Prelude.ToHeader AlgorithmSortBy

instance Prelude.ToJSON AlgorithmSortBy where
  toJSON = Prelude.toJSONText
