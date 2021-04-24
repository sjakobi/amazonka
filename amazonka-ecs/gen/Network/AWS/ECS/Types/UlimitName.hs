{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.UlimitName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.UlimitName
  ( UlimitName
      ( ..,
        CPU,
        Core,
        Data,
        Fsize,
        Locks,
        Memlock,
        Msgqueue,
        Nice,
        Nofile,
        Nproc,
        Rss,
        Rtprio,
        Rttime,
        Sigpending,
        Stack
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UlimitName = UlimitName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CPU :: UlimitName
pattern CPU = UlimitName' "cpu"

pattern Core :: UlimitName
pattern Core = UlimitName' "core"

pattern Data :: UlimitName
pattern Data = UlimitName' "data"

pattern Fsize :: UlimitName
pattern Fsize = UlimitName' "fsize"

pattern Locks :: UlimitName
pattern Locks = UlimitName' "locks"

pattern Memlock :: UlimitName
pattern Memlock = UlimitName' "memlock"

pattern Msgqueue :: UlimitName
pattern Msgqueue = UlimitName' "msgqueue"

pattern Nice :: UlimitName
pattern Nice = UlimitName' "nice"

pattern Nofile :: UlimitName
pattern Nofile = UlimitName' "nofile"

pattern Nproc :: UlimitName
pattern Nproc = UlimitName' "nproc"

pattern Rss :: UlimitName
pattern Rss = UlimitName' "rss"

pattern Rtprio :: UlimitName
pattern Rtprio = UlimitName' "rtprio"

pattern Rttime :: UlimitName
pattern Rttime = UlimitName' "rttime"

pattern Sigpending :: UlimitName
pattern Sigpending = UlimitName' "sigpending"

pattern Stack :: UlimitName
pattern Stack = UlimitName' "stack"

{-# COMPLETE
  CPU,
  Core,
  Data,
  Fsize,
  Locks,
  Memlock,
  Msgqueue,
  Nice,
  Nofile,
  Nproc,
  Rss,
  Rtprio,
  Rttime,
  Sigpending,
  Stack,
  UlimitName'
  #-}

instance FromText UlimitName where
  parser = (UlimitName' . mk) <$> takeText

instance ToText UlimitName where
  toText (UlimitName' ci) = original ci

instance Hashable UlimitName

instance NFData UlimitName

instance ToByteString UlimitName

instance ToQuery UlimitName

instance ToHeader UlimitName

instance ToJSON UlimitName where
  toJSON = toJSONText

instance FromJSON UlimitName where
  parseJSON = parseJSONText "UlimitName"
