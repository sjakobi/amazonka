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
-- Module      : Network.AWS.CodeDeploy.Types.ListStateFilterAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ListStateFilterAction
  ( ListStateFilterAction
      ( ..,
        ListStateFilterActionExclude,
        ListStateFilterActionIgnore,
        ListStateFilterActionInclude
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ListStateFilterAction = ListStateFilterAction'
  { fromListStateFilterAction ::
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

pattern ListStateFilterActionExclude :: ListStateFilterAction
pattern ListStateFilterActionExclude = ListStateFilterAction' "exclude"

pattern ListStateFilterActionIgnore :: ListStateFilterAction
pattern ListStateFilterActionIgnore = ListStateFilterAction' "ignore"

pattern ListStateFilterActionInclude :: ListStateFilterAction
pattern ListStateFilterActionInclude = ListStateFilterAction' "include"

{-# COMPLETE
  ListStateFilterActionExclude,
  ListStateFilterActionIgnore,
  ListStateFilterActionInclude,
  ListStateFilterAction'
  #-}

instance Prelude.FromText ListStateFilterAction where
  parser = ListStateFilterAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText ListStateFilterAction where
  toText (ListStateFilterAction' x) = x

instance Prelude.Hashable ListStateFilterAction

instance Prelude.NFData ListStateFilterAction

instance Prelude.ToByteString ListStateFilterAction

instance Prelude.ToQuery ListStateFilterAction

instance Prelude.ToHeader ListStateFilterAction

instance Prelude.ToJSON ListStateFilterAction where
  toJSON = Prelude.toJSONText
