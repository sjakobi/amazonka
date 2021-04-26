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
-- Module      : Network.AWS.SageMaker.Types.ListWorkteamsSortByOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ListWorkteamsSortByOptions
  ( ListWorkteamsSortByOptions
      ( ..,
        ListWorkteamsSortByOptionsCreateDate,
        ListWorkteamsSortByOptionsName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListWorkteamsSortByOptions = ListWorkteamsSortByOptions'
  { fromListWorkteamsSortByOptions ::
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

pattern ListWorkteamsSortByOptionsCreateDate :: ListWorkteamsSortByOptions
pattern ListWorkteamsSortByOptionsCreateDate = ListWorkteamsSortByOptions' "CreateDate"

pattern ListWorkteamsSortByOptionsName :: ListWorkteamsSortByOptions
pattern ListWorkteamsSortByOptionsName = ListWorkteamsSortByOptions' "Name"

{-# COMPLETE
  ListWorkteamsSortByOptionsCreateDate,
  ListWorkteamsSortByOptionsName,
  ListWorkteamsSortByOptions'
  #-}

instance Prelude.FromText ListWorkteamsSortByOptions where
  parser = ListWorkteamsSortByOptions' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListWorkteamsSortByOptions where
  toText (ListWorkteamsSortByOptions' x) = x

instance Prelude.Hashable ListWorkteamsSortByOptions

instance Prelude.NFData ListWorkteamsSortByOptions

instance Prelude.ToByteString ListWorkteamsSortByOptions

instance Prelude.ToQuery ListWorkteamsSortByOptions

instance Prelude.ToHeader ListWorkteamsSortByOptions

instance Prelude.ToJSON ListWorkteamsSortByOptions where
  toJSON = Prelude.toJSONText
