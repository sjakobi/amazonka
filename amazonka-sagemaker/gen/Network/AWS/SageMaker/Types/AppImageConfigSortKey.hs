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
-- Module      : Network.AWS.SageMaker.Types.AppImageConfigSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppImageConfigSortKey
  ( AppImageConfigSortKey
      ( ..,
        AppImageConfigSortKeyCreationTime,
        AppImageConfigSortKeyLastModifiedTime,
        AppImageConfigSortKeyName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AppImageConfigSortKey = AppImageConfigSortKey'
  { fromAppImageConfigSortKey ::
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

pattern AppImageConfigSortKeyCreationTime :: AppImageConfigSortKey
pattern AppImageConfigSortKeyCreationTime = AppImageConfigSortKey' "CreationTime"

pattern AppImageConfigSortKeyLastModifiedTime :: AppImageConfigSortKey
pattern AppImageConfigSortKeyLastModifiedTime = AppImageConfigSortKey' "LastModifiedTime"

pattern AppImageConfigSortKeyName :: AppImageConfigSortKey
pattern AppImageConfigSortKeyName = AppImageConfigSortKey' "Name"

{-# COMPLETE
  AppImageConfigSortKeyCreationTime,
  AppImageConfigSortKeyLastModifiedTime,
  AppImageConfigSortKeyName,
  AppImageConfigSortKey'
  #-}

instance Prelude.FromText AppImageConfigSortKey where
  parser = AppImageConfigSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText AppImageConfigSortKey where
  toText (AppImageConfigSortKey' x) = x

instance Prelude.Hashable AppImageConfigSortKey

instance Prelude.NFData AppImageConfigSortKey

instance Prelude.ToByteString AppImageConfigSortKey

instance Prelude.ToQuery AppImageConfigSortKey

instance Prelude.ToHeader AppImageConfigSortKey

instance Prelude.ToJSON AppImageConfigSortKey where
  toJSON = Prelude.toJSONText
