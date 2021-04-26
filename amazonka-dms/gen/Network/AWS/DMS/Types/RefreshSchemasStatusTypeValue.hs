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
-- Module      : Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
  ( RefreshSchemasStatusTypeValue
      ( ..,
        RefreshSchemasStatusTypeValueFailed,
        RefreshSchemasStatusTypeValueRefreshing,
        RefreshSchemasStatusTypeValueSuccessful
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RefreshSchemasStatusTypeValue = RefreshSchemasStatusTypeValue'
  { fromRefreshSchemasStatusTypeValue ::
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

pattern RefreshSchemasStatusTypeValueFailed :: RefreshSchemasStatusTypeValue
pattern RefreshSchemasStatusTypeValueFailed = RefreshSchemasStatusTypeValue' "failed"

pattern RefreshSchemasStatusTypeValueRefreshing :: RefreshSchemasStatusTypeValue
pattern RefreshSchemasStatusTypeValueRefreshing = RefreshSchemasStatusTypeValue' "refreshing"

pattern RefreshSchemasStatusTypeValueSuccessful :: RefreshSchemasStatusTypeValue
pattern RefreshSchemasStatusTypeValueSuccessful = RefreshSchemasStatusTypeValue' "successful"

{-# COMPLETE
  RefreshSchemasStatusTypeValueFailed,
  RefreshSchemasStatusTypeValueRefreshing,
  RefreshSchemasStatusTypeValueSuccessful,
  RefreshSchemasStatusTypeValue'
  #-}

instance Prelude.FromText RefreshSchemasStatusTypeValue where
  parser = RefreshSchemasStatusTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText RefreshSchemasStatusTypeValue where
  toText (RefreshSchemasStatusTypeValue' x) = x

instance Prelude.Hashable RefreshSchemasStatusTypeValue

instance Prelude.NFData RefreshSchemasStatusTypeValue

instance Prelude.ToByteString RefreshSchemasStatusTypeValue

instance Prelude.ToQuery RefreshSchemasStatusTypeValue

instance Prelude.ToHeader RefreshSchemasStatusTypeValue

instance Prelude.FromJSON RefreshSchemasStatusTypeValue where
  parseJSON = Prelude.parseJSONText "RefreshSchemasStatusTypeValue"
