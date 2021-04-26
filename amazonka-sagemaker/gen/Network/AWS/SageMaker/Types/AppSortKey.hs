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
-- Module      : Network.AWS.SageMaker.Types.AppSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppSortKey
  ( AppSortKey
      ( ..,
        AppSortKeyCreationTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppSortKey = AppSortKey'
  { fromAppSortKey ::
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

pattern AppSortKeyCreationTime :: AppSortKey
pattern AppSortKeyCreationTime = AppSortKey' "CreationTime"

{-# COMPLETE
  AppSortKeyCreationTime,
  AppSortKey'
  #-}

instance Prelude.FromText AppSortKey where
  parser = AppSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppSortKey where
  toText (AppSortKey' x) = x

instance Prelude.Hashable AppSortKey

instance Prelude.NFData AppSortKey

instance Prelude.ToByteString AppSortKey

instance Prelude.ToQuery AppSortKey

instance Prelude.ToHeader AppSortKey

instance Prelude.ToJSON AppSortKey where
  toJSON = Prelude.toJSONText
