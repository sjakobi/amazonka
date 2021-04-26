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
-- Module      : Network.AWS.SageMaker.Types.SortActionsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortActionsBy
  ( SortActionsBy
      ( ..,
        SortActionsByCreationTime,
        SortActionsByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SortActionsBy = SortActionsBy'
  { fromSortActionsBy ::
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

pattern SortActionsByCreationTime :: SortActionsBy
pattern SortActionsByCreationTime = SortActionsBy' "CreationTime"

pattern SortActionsByName :: SortActionsBy
pattern SortActionsByName = SortActionsBy' "Name"

{-# COMPLETE
  SortActionsByCreationTime,
  SortActionsByName,
  SortActionsBy'
  #-}

instance Prelude.FromText SortActionsBy where
  parser = SortActionsBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText SortActionsBy where
  toText (SortActionsBy' x) = x

instance Prelude.Hashable SortActionsBy

instance Prelude.NFData SortActionsBy

instance Prelude.ToByteString SortActionsBy

instance Prelude.ToQuery SortActionsBy

instance Prelude.ToHeader SortActionsBy

instance Prelude.ToJSON SortActionsBy where
  toJSON = Prelude.toJSONText
