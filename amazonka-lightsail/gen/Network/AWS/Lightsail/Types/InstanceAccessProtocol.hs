{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceAccessProtocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceAccessProtocol
  ( InstanceAccessProtocol
      ( ..,
        Rdp,
        SSH
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceAccessProtocol
  = InstanceAccessProtocol'
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

pattern Rdp :: InstanceAccessProtocol
pattern Rdp = InstanceAccessProtocol' "rdp"

pattern SSH :: InstanceAccessProtocol
pattern SSH = InstanceAccessProtocol' "ssh"

{-# COMPLETE
  Rdp,
  SSH,
  InstanceAccessProtocol'
  #-}

instance FromText InstanceAccessProtocol where
  parser = (InstanceAccessProtocol' . mk) <$> takeText

instance ToText InstanceAccessProtocol where
  toText (InstanceAccessProtocol' ci) = original ci

instance Hashable InstanceAccessProtocol

instance NFData InstanceAccessProtocol

instance ToByteString InstanceAccessProtocol

instance ToQuery InstanceAccessProtocol

instance ToHeader InstanceAccessProtocol

instance ToJSON InstanceAccessProtocol where
  toJSON = toJSONText

instance FromJSON InstanceAccessProtocol where
  parseJSON = parseJSONText "InstanceAccessProtocol"
