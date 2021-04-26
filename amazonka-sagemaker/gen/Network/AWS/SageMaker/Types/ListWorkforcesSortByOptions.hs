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
-- Module      : Network.AWS.SageMaker.Types.ListWorkforcesSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListWorkforcesSortByOptions
  ( ListWorkforcesSortByOptions
      ( ..,
        ListWorkforcesSortByOptionsCreateDate,
        ListWorkforcesSortByOptionsName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListWorkforcesSortByOptions = ListWorkforcesSortByOptions'
  { fromListWorkforcesSortByOptions ::
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

pattern ListWorkforcesSortByOptionsCreateDate :: ListWorkforcesSortByOptions
pattern ListWorkforcesSortByOptionsCreateDate = ListWorkforcesSortByOptions' "CreateDate"

pattern ListWorkforcesSortByOptionsName :: ListWorkforcesSortByOptions
pattern ListWorkforcesSortByOptionsName = ListWorkforcesSortByOptions' "Name"

{-# COMPLETE
  ListWorkforcesSortByOptionsCreateDate,
  ListWorkforcesSortByOptionsName,
  ListWorkforcesSortByOptions'
  #-}

instance Prelude.FromText ListWorkforcesSortByOptions where
  parser = ListWorkforcesSortByOptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListWorkforcesSortByOptions where
  toText (ListWorkforcesSortByOptions' x) = x

instance Prelude.Hashable ListWorkforcesSortByOptions

instance Prelude.NFData ListWorkforcesSortByOptions

instance Prelude.ToByteString ListWorkforcesSortByOptions

instance Prelude.ToQuery ListWorkforcesSortByOptions

instance Prelude.ToHeader ListWorkforcesSortByOptions

instance Prelude.ToJSON ListWorkforcesSortByOptions where
  toJSON = Prelude.toJSONText
