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
-- Module      : Network.AWS.Lambda.Types.Runtime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.Runtime
  ( Runtime
      ( ..,
        RuntimeDOTNETCORE1_0,
        RuntimeDOTNETCORE2_0,
        RuntimeDOTNETCORE2_1,
        RuntimeDOTNETCORE3_1,
        RuntimeGO1_x,
        RuntimeJAVA11,
        RuntimeJAVA8,
        RuntimeJAVA8_AL2,
        RuntimeNODEJS10_x,
        RuntimeNODEJS12_x,
        RuntimeNODEJS14_x,
        RuntimeNODEJS4_3,
        RuntimeNODEJS4_3Edge,
        RuntimeNODEJS6_10,
        RuntimeNODEJS8_10,
        RuntimeNodejs,
        RuntimePYTHON2_7,
        RuntimePYTHON3_6,
        RuntimePYTHON3_7,
        RuntimePYTHON3_8,
        RuntimeProvided,
        RuntimeProvided_AL2,
        RuntimeRUBY2_5,
        RuntimeRUBY2_7
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Runtime = Runtime'
  { fromRuntime ::
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

pattern RuntimeDOTNETCORE1_0 :: Runtime
pattern RuntimeDOTNETCORE1_0 = Runtime' "dotnetcore1.0"

pattern RuntimeDOTNETCORE2_0 :: Runtime
pattern RuntimeDOTNETCORE2_0 = Runtime' "dotnetcore2.0"

pattern RuntimeDOTNETCORE2_1 :: Runtime
pattern RuntimeDOTNETCORE2_1 = Runtime' "dotnetcore2.1"

pattern RuntimeDOTNETCORE3_1 :: Runtime
pattern RuntimeDOTNETCORE3_1 = Runtime' "dotnetcore3.1"

pattern RuntimeGO1_x :: Runtime
pattern RuntimeGO1_x = Runtime' "go1.x"

pattern RuntimeJAVA11 :: Runtime
pattern RuntimeJAVA11 = Runtime' "java11"

pattern RuntimeJAVA8 :: Runtime
pattern RuntimeJAVA8 = Runtime' "java8"

pattern RuntimeJAVA8_AL2 :: Runtime
pattern RuntimeJAVA8_AL2 = Runtime' "java8.al2"

pattern RuntimeNODEJS10_x :: Runtime
pattern RuntimeNODEJS10_x = Runtime' "nodejs10.x"

pattern RuntimeNODEJS12_x :: Runtime
pattern RuntimeNODEJS12_x = Runtime' "nodejs12.x"

pattern RuntimeNODEJS14_x :: Runtime
pattern RuntimeNODEJS14_x = Runtime' "nodejs14.x"

pattern RuntimeNODEJS4_3 :: Runtime
pattern RuntimeNODEJS4_3 = Runtime' "nodejs4.3"

pattern RuntimeNODEJS4_3Edge :: Runtime
pattern RuntimeNODEJS4_3Edge = Runtime' "nodejs4.3-edge"

pattern RuntimeNODEJS6_10 :: Runtime
pattern RuntimeNODEJS6_10 = Runtime' "nodejs6.10"

pattern RuntimeNODEJS8_10 :: Runtime
pattern RuntimeNODEJS8_10 = Runtime' "nodejs8.10"

pattern RuntimeNodejs :: Runtime
pattern RuntimeNodejs = Runtime' "nodejs"

pattern RuntimePYTHON2_7 :: Runtime
pattern RuntimePYTHON2_7 = Runtime' "python2.7"

pattern RuntimePYTHON3_6 :: Runtime
pattern RuntimePYTHON3_6 = Runtime' "python3.6"

pattern RuntimePYTHON3_7 :: Runtime
pattern RuntimePYTHON3_7 = Runtime' "python3.7"

pattern RuntimePYTHON3_8 :: Runtime
pattern RuntimePYTHON3_8 = Runtime' "python3.8"

pattern RuntimeProvided :: Runtime
pattern RuntimeProvided = Runtime' "provided"

pattern RuntimeProvided_AL2 :: Runtime
pattern RuntimeProvided_AL2 = Runtime' "provided.al2"

pattern RuntimeRUBY2_5 :: Runtime
pattern RuntimeRUBY2_5 = Runtime' "ruby2.5"

pattern RuntimeRUBY2_7 :: Runtime
pattern RuntimeRUBY2_7 = Runtime' "ruby2.7"

{-# COMPLETE
  RuntimeDOTNETCORE1_0,
  RuntimeDOTNETCORE2_0,
  RuntimeDOTNETCORE2_1,
  RuntimeDOTNETCORE3_1,
  RuntimeGO1_x,
  RuntimeJAVA11,
  RuntimeJAVA8,
  RuntimeJAVA8_AL2,
  RuntimeNODEJS10_x,
  RuntimeNODEJS12_x,
  RuntimeNODEJS14_x,
  RuntimeNODEJS4_3,
  RuntimeNODEJS4_3Edge,
  RuntimeNODEJS6_10,
  RuntimeNODEJS8_10,
  RuntimeNodejs,
  RuntimePYTHON2_7,
  RuntimePYTHON3_6,
  RuntimePYTHON3_7,
  RuntimePYTHON3_8,
  RuntimeProvided,
  RuntimeProvided_AL2,
  RuntimeRUBY2_5,
  RuntimeRUBY2_7,
  Runtime'
  #-}

instance Prelude.FromText Runtime where
  parser = Runtime' Prelude.<$> Prelude.takeText

instance Prelude.ToText Runtime where
  toText (Runtime' x) = x

instance Prelude.Hashable Runtime

instance Prelude.NFData Runtime

instance Prelude.ToByteString Runtime

instance Prelude.ToQuery Runtime

instance Prelude.ToHeader Runtime

instance Prelude.ToJSON Runtime where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Runtime where
  parseJSON = Prelude.parseJSONText "Runtime"
