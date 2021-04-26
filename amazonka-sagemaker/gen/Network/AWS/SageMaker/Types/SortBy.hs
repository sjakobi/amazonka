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
-- Module      : Network.AWS.SageMaker.Types.SortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortBy
  ( SortBy
      ( ..,
        SortByCreationTime,
        SortByName,
        SortByStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortBy = SortBy' {fromSortBy :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern SortByCreationTime :: SortBy
pattern SortByCreationTime = SortBy' "CreationTime"

pattern SortByName :: SortBy
pattern SortByName = SortBy' "Name"

pattern SortByStatus' :: SortBy
pattern SortByStatus' = SortBy' "Status"

{-# COMPLETE
  SortByCreationTime,
  SortByName,
  SortByStatus',
  SortBy'
  #-}

instance Prelude.FromText SortBy where
  parser = SortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortBy where
  toText (SortBy' x) = x

instance Prelude.Hashable SortBy

instance Prelude.NFData SortBy

instance Prelude.ToByteString SortBy

instance Prelude.ToQuery SortBy

instance Prelude.ToHeader SortBy

instance Prelude.ToJSON SortBy where
  toJSON = Prelude.toJSONText
