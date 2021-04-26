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
-- Module      : Network.AWS.SageMaker.Types.AutoMLSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLSortBy
  ( AutoMLSortBy
      ( ..,
        AutoMLSortByCreationTime,
        AutoMLSortByName,
        AutoMLSortByStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoMLSortBy = AutoMLSortBy'
  { fromAutoMLSortBy ::
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

pattern AutoMLSortByCreationTime :: AutoMLSortBy
pattern AutoMLSortByCreationTime = AutoMLSortBy' "CreationTime"

pattern AutoMLSortByName :: AutoMLSortBy
pattern AutoMLSortByName = AutoMLSortBy' "Name"

pattern AutoMLSortByStatus' :: AutoMLSortBy
pattern AutoMLSortByStatus' = AutoMLSortBy' "Status"

{-# COMPLETE
  AutoMLSortByCreationTime,
  AutoMLSortByName,
  AutoMLSortByStatus',
  AutoMLSortBy'
  #-}

instance Prelude.FromText AutoMLSortBy where
  parser = AutoMLSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoMLSortBy where
  toText (AutoMLSortBy' x) = x

instance Prelude.Hashable AutoMLSortBy

instance Prelude.NFData AutoMLSortBy

instance Prelude.ToByteString AutoMLSortBy

instance Prelude.ToQuery AutoMLSortBy

instance Prelude.ToHeader AutoMLSortBy

instance Prelude.ToJSON AutoMLSortBy where
  toJSON = Prelude.toJSONText
