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
-- Module      : Network.AWS.ECS.Types.UlimitName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.UlimitName
  ( UlimitName
      ( ..,
        UlimitNameCore,
        UlimitNameCpu,
        UlimitNameData,
        UlimitNameFsize,
        UlimitNameLocks,
        UlimitNameMemlock,
        UlimitNameMsgqueue,
        UlimitNameNice,
        UlimitNameNofile,
        UlimitNameNproc,
        UlimitNameRss,
        UlimitNameRtprio,
        UlimitNameRttime,
        UlimitNameSigpending,
        UlimitNameStack
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UlimitName = UlimitName'
  { fromUlimitName ::
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

pattern UlimitNameCore :: UlimitName
pattern UlimitNameCore = UlimitName' "core"

pattern UlimitNameCpu :: UlimitName
pattern UlimitNameCpu = UlimitName' "cpu"

pattern UlimitNameData :: UlimitName
pattern UlimitNameData = UlimitName' "data"

pattern UlimitNameFsize :: UlimitName
pattern UlimitNameFsize = UlimitName' "fsize"

pattern UlimitNameLocks :: UlimitName
pattern UlimitNameLocks = UlimitName' "locks"

pattern UlimitNameMemlock :: UlimitName
pattern UlimitNameMemlock = UlimitName' "memlock"

pattern UlimitNameMsgqueue :: UlimitName
pattern UlimitNameMsgqueue = UlimitName' "msgqueue"

pattern UlimitNameNice :: UlimitName
pattern UlimitNameNice = UlimitName' "nice"

pattern UlimitNameNofile :: UlimitName
pattern UlimitNameNofile = UlimitName' "nofile"

pattern UlimitNameNproc :: UlimitName
pattern UlimitNameNproc = UlimitName' "nproc"

pattern UlimitNameRss :: UlimitName
pattern UlimitNameRss = UlimitName' "rss"

pattern UlimitNameRtprio :: UlimitName
pattern UlimitNameRtprio = UlimitName' "rtprio"

pattern UlimitNameRttime :: UlimitName
pattern UlimitNameRttime = UlimitName' "rttime"

pattern UlimitNameSigpending :: UlimitName
pattern UlimitNameSigpending = UlimitName' "sigpending"

pattern UlimitNameStack :: UlimitName
pattern UlimitNameStack = UlimitName' "stack"

{-# COMPLETE
  UlimitNameCore,
  UlimitNameCpu,
  UlimitNameData,
  UlimitNameFsize,
  UlimitNameLocks,
  UlimitNameMemlock,
  UlimitNameMsgqueue,
  UlimitNameNice,
  UlimitNameNofile,
  UlimitNameNproc,
  UlimitNameRss,
  UlimitNameRtprio,
  UlimitNameRttime,
  UlimitNameSigpending,
  UlimitNameStack,
  UlimitName'
  #-}

instance Prelude.FromText UlimitName where
  parser = UlimitName' Prelude.<$> Prelude.takeText

instance Prelude.ToText UlimitName where
  toText (UlimitName' x) = x

instance Prelude.Hashable UlimitName

instance Prelude.NFData UlimitName

instance Prelude.ToByteString UlimitName

instance Prelude.ToQuery UlimitName

instance Prelude.ToHeader UlimitName

instance Prelude.ToJSON UlimitName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UlimitName where
  parseJSON = Prelude.parseJSONText "UlimitName"
