{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ChangeAction
  ( ChangeAction
      ( ..,
        Create,
        Delete,
        Upsert
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data ChangeAction = ChangeAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Create :: ChangeAction
pattern Create = ChangeAction' "CREATE"

pattern Delete :: ChangeAction
pattern Delete = ChangeAction' "DELETE"

pattern Upsert :: ChangeAction
pattern Upsert = ChangeAction' "UPSERT"

{-# COMPLETE
  Create,
  Delete,
  Upsert,
  ChangeAction'
  #-}

instance FromText ChangeAction where
  parser = (ChangeAction' . mk) <$> takeText

instance ToText ChangeAction where
  toText (ChangeAction' ci) = original ci

instance Hashable ChangeAction

instance NFData ChangeAction

instance ToByteString ChangeAction

instance ToQuery ChangeAction

instance ToHeader ChangeAction

instance ToXML ChangeAction where
  toXML = toXMLText
