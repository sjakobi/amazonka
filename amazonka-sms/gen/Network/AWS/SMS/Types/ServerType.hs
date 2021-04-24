{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerType
  ( ServerType
      ( ..,
        VirtualMachine
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServerType = ServerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VirtualMachine :: ServerType
pattern VirtualMachine = ServerType' "VIRTUAL_MACHINE"

{-# COMPLETE
  VirtualMachine,
  ServerType'
  #-}

instance FromText ServerType where
  parser = (ServerType' . mk) <$> takeText

instance ToText ServerType where
  toText (ServerType' ci) = original ci

instance Hashable ServerType

instance NFData ServerType

instance ToByteString ServerType

instance ToQuery ServerType

instance ToHeader ServerType

instance ToJSON ServerType where
  toJSON = toJSONText

instance FromJSON ServerType where
  parseJSON = parseJSONText "ServerType"
