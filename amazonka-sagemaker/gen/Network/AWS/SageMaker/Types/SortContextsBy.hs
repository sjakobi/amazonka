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
-- Module      : Network.AWS.SageMaker.Types.SortContextsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortContextsBy
  ( SortContextsBy
      ( ..,
        SortContextsByCreationTime,
        SortContextsByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortContextsBy = SortContextsBy'
  { fromSortContextsBy ::
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

pattern SortContextsByCreationTime :: SortContextsBy
pattern SortContextsByCreationTime = SortContextsBy' "CreationTime"

pattern SortContextsByName :: SortContextsBy
pattern SortContextsByName = SortContextsBy' "Name"

{-# COMPLETE
  SortContextsByCreationTime,
  SortContextsByName,
  SortContextsBy'
  #-}

instance Prelude.FromText SortContextsBy where
  parser = SortContextsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortContextsBy where
  toText (SortContextsBy' x) = x

instance Prelude.Hashable SortContextsBy

instance Prelude.NFData SortContextsBy

instance Prelude.ToByteString SortContextsBy

instance Prelude.ToQuery SortContextsBy

instance Prelude.ToHeader SortContextsBy

instance Prelude.ToJSON SortContextsBy where
  toJSON = Prelude.toJSONText
