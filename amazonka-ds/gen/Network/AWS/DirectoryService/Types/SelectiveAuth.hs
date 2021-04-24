{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.SelectiveAuth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SelectiveAuth
  ( SelectiveAuth
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SelectiveAuth = SelectiveAuth' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: SelectiveAuth
pattern Disabled = SelectiveAuth' "Disabled"

pattern Enabled :: SelectiveAuth
pattern Enabled = SelectiveAuth' "Enabled"

{-# COMPLETE
  Disabled,
  Enabled,
  SelectiveAuth'
  #-}

instance FromText SelectiveAuth where
  parser = (SelectiveAuth' . mk) <$> takeText

instance ToText SelectiveAuth where
  toText (SelectiveAuth' ci) = original ci

instance Hashable SelectiveAuth

instance NFData SelectiveAuth

instance ToByteString SelectiveAuth

instance ToQuery SelectiveAuth

instance ToHeader SelectiveAuth

instance ToJSON SelectiveAuth where
  toJSON = toJSONText

instance FromJSON SelectiveAuth where
  parseJSON = parseJSONText "SelectiveAuth"
