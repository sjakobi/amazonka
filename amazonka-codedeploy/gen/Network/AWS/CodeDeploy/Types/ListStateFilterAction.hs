{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Exclude,
        Ignore,
        Include
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ListStateFilterAction
  = ListStateFilterAction'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Exclude :: ListStateFilterAction
pattern Exclude = ListStateFilterAction' "exclude"

pattern Ignore :: ListStateFilterAction
pattern Ignore = ListStateFilterAction' "ignore"

pattern Include :: ListStateFilterAction
pattern Include = ListStateFilterAction' "include"

{-# COMPLETE
  Exclude,
  Ignore,
  Include,
  ListStateFilterAction'
  #-}

instance FromText ListStateFilterAction where
  parser = (ListStateFilterAction' . mk) <$> takeText

instance ToText ListStateFilterAction where
  toText (ListStateFilterAction' ci) = original ci

instance Hashable ListStateFilterAction

instance NFData ListStateFilterAction

instance ToByteString ListStateFilterAction

instance ToQuery ListStateFilterAction

instance ToHeader ListStateFilterAction

instance ToJSON ListStateFilterAction where
  toJSON = toJSONText
