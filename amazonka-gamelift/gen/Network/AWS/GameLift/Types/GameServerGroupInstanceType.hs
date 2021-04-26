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
-- Module      : Network.AWS.GameLift.Types.GameServerGroupInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupInstanceType
  ( GameServerGroupInstanceType
      ( ..,
        GameServerGroupInstanceTypeC4_2xlarge,
        GameServerGroupInstanceTypeC4_4xlarge,
        GameServerGroupInstanceTypeC4_8xlarge,
        GameServerGroupInstanceTypeC4_Large,
        GameServerGroupInstanceTypeC4_Xlarge,
        GameServerGroupInstanceTypeC5_12xlarge,
        GameServerGroupInstanceTypeC5_18xlarge,
        GameServerGroupInstanceTypeC5_24xlarge,
        GameServerGroupInstanceTypeC5_2xlarge,
        GameServerGroupInstanceTypeC5_4xlarge,
        GameServerGroupInstanceTypeC5_9xlarge,
        GameServerGroupInstanceTypeC5_Large,
        GameServerGroupInstanceTypeC5_Xlarge,
        GameServerGroupInstanceTypeC5a_12xlarge,
        GameServerGroupInstanceTypeC5a_16xlarge,
        GameServerGroupInstanceTypeC5a_24xlarge,
        GameServerGroupInstanceTypeC5a_2xlarge,
        GameServerGroupInstanceTypeC5a_4xlarge,
        GameServerGroupInstanceTypeC5a_8xlarge,
        GameServerGroupInstanceTypeC5a_Large,
        GameServerGroupInstanceTypeC5a_Xlarge,
        GameServerGroupInstanceTypeM4_10xlarge,
        GameServerGroupInstanceTypeM4_2xlarge,
        GameServerGroupInstanceTypeM4_4xlarge,
        GameServerGroupInstanceTypeM4_Large,
        GameServerGroupInstanceTypeM4_Xlarge,
        GameServerGroupInstanceTypeM5_12xlarge,
        GameServerGroupInstanceTypeM5_16xlarge,
        GameServerGroupInstanceTypeM5_24xlarge,
        GameServerGroupInstanceTypeM5_2xlarge,
        GameServerGroupInstanceTypeM5_4xlarge,
        GameServerGroupInstanceTypeM5_8xlarge,
        GameServerGroupInstanceTypeM5_Large,
        GameServerGroupInstanceTypeM5_Xlarge,
        GameServerGroupInstanceTypeM5a_12xlarge,
        GameServerGroupInstanceTypeM5a_16xlarge,
        GameServerGroupInstanceTypeM5a_24xlarge,
        GameServerGroupInstanceTypeM5a_2xlarge,
        GameServerGroupInstanceTypeM5a_4xlarge,
        GameServerGroupInstanceTypeM5a_8xlarge,
        GameServerGroupInstanceTypeM5a_Large,
        GameServerGroupInstanceTypeM5a_Xlarge,
        GameServerGroupInstanceTypeR4_16xlarge,
        GameServerGroupInstanceTypeR4_2xlarge,
        GameServerGroupInstanceTypeR4_4xlarge,
        GameServerGroupInstanceTypeR4_8xlarge,
        GameServerGroupInstanceTypeR4_Large,
        GameServerGroupInstanceTypeR4_Xlarge,
        GameServerGroupInstanceTypeR5_12xlarge,
        GameServerGroupInstanceTypeR5_16xlarge,
        GameServerGroupInstanceTypeR5_24xlarge,
        GameServerGroupInstanceTypeR5_2xlarge,
        GameServerGroupInstanceTypeR5_4xlarge,
        GameServerGroupInstanceTypeR5_8xlarge,
        GameServerGroupInstanceTypeR5_Large,
        GameServerGroupInstanceTypeR5_Xlarge,
        GameServerGroupInstanceTypeR5a_12xlarge,
        GameServerGroupInstanceTypeR5a_16xlarge,
        GameServerGroupInstanceTypeR5a_24xlarge,
        GameServerGroupInstanceTypeR5a_2xlarge,
        GameServerGroupInstanceTypeR5a_4xlarge,
        GameServerGroupInstanceTypeR5a_8xlarge,
        GameServerGroupInstanceTypeR5a_Large,
        GameServerGroupInstanceTypeR5a_Xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GameServerGroupInstanceType = GameServerGroupInstanceType'
  { fromGameServerGroupInstanceType ::
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

pattern GameServerGroupInstanceTypeC4_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC4_2xlarge = GameServerGroupInstanceType' "c4.2xlarge"

pattern GameServerGroupInstanceTypeC4_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC4_4xlarge = GameServerGroupInstanceType' "c4.4xlarge"

pattern GameServerGroupInstanceTypeC4_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC4_8xlarge = GameServerGroupInstanceType' "c4.8xlarge"

pattern GameServerGroupInstanceTypeC4_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC4_Large = GameServerGroupInstanceType' "c4.large"

pattern GameServerGroupInstanceTypeC4_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC4_Xlarge = GameServerGroupInstanceType' "c4.xlarge"

pattern GameServerGroupInstanceTypeC5_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_12xlarge = GameServerGroupInstanceType' "c5.12xlarge"

pattern GameServerGroupInstanceTypeC5_18xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_18xlarge = GameServerGroupInstanceType' "c5.18xlarge"

pattern GameServerGroupInstanceTypeC5_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_24xlarge = GameServerGroupInstanceType' "c5.24xlarge"

pattern GameServerGroupInstanceTypeC5_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_2xlarge = GameServerGroupInstanceType' "c5.2xlarge"

pattern GameServerGroupInstanceTypeC5_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_4xlarge = GameServerGroupInstanceType' "c5.4xlarge"

pattern GameServerGroupInstanceTypeC5_9xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_9xlarge = GameServerGroupInstanceType' "c5.9xlarge"

pattern GameServerGroupInstanceTypeC5_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_Large = GameServerGroupInstanceType' "c5.large"

pattern GameServerGroupInstanceTypeC5_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5_Xlarge = GameServerGroupInstanceType' "c5.xlarge"

pattern GameServerGroupInstanceTypeC5a_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_12xlarge = GameServerGroupInstanceType' "c5a.12xlarge"

pattern GameServerGroupInstanceTypeC5a_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_16xlarge = GameServerGroupInstanceType' "c5a.16xlarge"

pattern GameServerGroupInstanceTypeC5a_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_24xlarge = GameServerGroupInstanceType' "c5a.24xlarge"

pattern GameServerGroupInstanceTypeC5a_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_2xlarge = GameServerGroupInstanceType' "c5a.2xlarge"

pattern GameServerGroupInstanceTypeC5a_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_4xlarge = GameServerGroupInstanceType' "c5a.4xlarge"

pattern GameServerGroupInstanceTypeC5a_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_8xlarge = GameServerGroupInstanceType' "c5a.8xlarge"

pattern GameServerGroupInstanceTypeC5a_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_Large = GameServerGroupInstanceType' "c5a.large"

pattern GameServerGroupInstanceTypeC5a_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeC5a_Xlarge = GameServerGroupInstanceType' "c5a.xlarge"

pattern GameServerGroupInstanceTypeM4_10xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM4_10xlarge = GameServerGroupInstanceType' "m4.10xlarge"

pattern GameServerGroupInstanceTypeM4_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM4_2xlarge = GameServerGroupInstanceType' "m4.2xlarge"

pattern GameServerGroupInstanceTypeM4_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM4_4xlarge = GameServerGroupInstanceType' "m4.4xlarge"

pattern GameServerGroupInstanceTypeM4_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM4_Large = GameServerGroupInstanceType' "m4.large"

pattern GameServerGroupInstanceTypeM4_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM4_Xlarge = GameServerGroupInstanceType' "m4.xlarge"

pattern GameServerGroupInstanceTypeM5_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_12xlarge = GameServerGroupInstanceType' "m5.12xlarge"

pattern GameServerGroupInstanceTypeM5_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_16xlarge = GameServerGroupInstanceType' "m5.16xlarge"

pattern GameServerGroupInstanceTypeM5_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_24xlarge = GameServerGroupInstanceType' "m5.24xlarge"

pattern GameServerGroupInstanceTypeM5_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_2xlarge = GameServerGroupInstanceType' "m5.2xlarge"

pattern GameServerGroupInstanceTypeM5_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_4xlarge = GameServerGroupInstanceType' "m5.4xlarge"

pattern GameServerGroupInstanceTypeM5_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_8xlarge = GameServerGroupInstanceType' "m5.8xlarge"

pattern GameServerGroupInstanceTypeM5_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_Large = GameServerGroupInstanceType' "m5.large"

pattern GameServerGroupInstanceTypeM5_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5_Xlarge = GameServerGroupInstanceType' "m5.xlarge"

pattern GameServerGroupInstanceTypeM5a_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_12xlarge = GameServerGroupInstanceType' "m5a.12xlarge"

pattern GameServerGroupInstanceTypeM5a_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_16xlarge = GameServerGroupInstanceType' "m5a.16xlarge"

pattern GameServerGroupInstanceTypeM5a_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_24xlarge = GameServerGroupInstanceType' "m5a.24xlarge"

pattern GameServerGroupInstanceTypeM5a_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_2xlarge = GameServerGroupInstanceType' "m5a.2xlarge"

pattern GameServerGroupInstanceTypeM5a_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_4xlarge = GameServerGroupInstanceType' "m5a.4xlarge"

pattern GameServerGroupInstanceTypeM5a_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_8xlarge = GameServerGroupInstanceType' "m5a.8xlarge"

pattern GameServerGroupInstanceTypeM5a_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_Large = GameServerGroupInstanceType' "m5a.large"

pattern GameServerGroupInstanceTypeM5a_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeM5a_Xlarge = GameServerGroupInstanceType' "m5a.xlarge"

pattern GameServerGroupInstanceTypeR4_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_16xlarge = GameServerGroupInstanceType' "r4.16xlarge"

pattern GameServerGroupInstanceTypeR4_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_2xlarge = GameServerGroupInstanceType' "r4.2xlarge"

pattern GameServerGroupInstanceTypeR4_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_4xlarge = GameServerGroupInstanceType' "r4.4xlarge"

pattern GameServerGroupInstanceTypeR4_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_8xlarge = GameServerGroupInstanceType' "r4.8xlarge"

pattern GameServerGroupInstanceTypeR4_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_Large = GameServerGroupInstanceType' "r4.large"

pattern GameServerGroupInstanceTypeR4_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR4_Xlarge = GameServerGroupInstanceType' "r4.xlarge"

pattern GameServerGroupInstanceTypeR5_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_12xlarge = GameServerGroupInstanceType' "r5.12xlarge"

pattern GameServerGroupInstanceTypeR5_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_16xlarge = GameServerGroupInstanceType' "r5.16xlarge"

pattern GameServerGroupInstanceTypeR5_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_24xlarge = GameServerGroupInstanceType' "r5.24xlarge"

pattern GameServerGroupInstanceTypeR5_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_2xlarge = GameServerGroupInstanceType' "r5.2xlarge"

pattern GameServerGroupInstanceTypeR5_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_4xlarge = GameServerGroupInstanceType' "r5.4xlarge"

pattern GameServerGroupInstanceTypeR5_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_8xlarge = GameServerGroupInstanceType' "r5.8xlarge"

pattern GameServerGroupInstanceTypeR5_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_Large = GameServerGroupInstanceType' "r5.large"

pattern GameServerGroupInstanceTypeR5_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5_Xlarge = GameServerGroupInstanceType' "r5.xlarge"

pattern GameServerGroupInstanceTypeR5a_12xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_12xlarge = GameServerGroupInstanceType' "r5a.12xlarge"

pattern GameServerGroupInstanceTypeR5a_16xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_16xlarge = GameServerGroupInstanceType' "r5a.16xlarge"

pattern GameServerGroupInstanceTypeR5a_24xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_24xlarge = GameServerGroupInstanceType' "r5a.24xlarge"

pattern GameServerGroupInstanceTypeR5a_2xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_2xlarge = GameServerGroupInstanceType' "r5a.2xlarge"

pattern GameServerGroupInstanceTypeR5a_4xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_4xlarge = GameServerGroupInstanceType' "r5a.4xlarge"

pattern GameServerGroupInstanceTypeR5a_8xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_8xlarge = GameServerGroupInstanceType' "r5a.8xlarge"

pattern GameServerGroupInstanceTypeR5a_Large :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_Large = GameServerGroupInstanceType' "r5a.large"

pattern GameServerGroupInstanceTypeR5a_Xlarge :: GameServerGroupInstanceType
pattern GameServerGroupInstanceTypeR5a_Xlarge = GameServerGroupInstanceType' "r5a.xlarge"

{-# COMPLETE
  GameServerGroupInstanceTypeC4_2xlarge,
  GameServerGroupInstanceTypeC4_4xlarge,
  GameServerGroupInstanceTypeC4_8xlarge,
  GameServerGroupInstanceTypeC4_Large,
  GameServerGroupInstanceTypeC4_Xlarge,
  GameServerGroupInstanceTypeC5_12xlarge,
  GameServerGroupInstanceTypeC5_18xlarge,
  GameServerGroupInstanceTypeC5_24xlarge,
  GameServerGroupInstanceTypeC5_2xlarge,
  GameServerGroupInstanceTypeC5_4xlarge,
  GameServerGroupInstanceTypeC5_9xlarge,
  GameServerGroupInstanceTypeC5_Large,
  GameServerGroupInstanceTypeC5_Xlarge,
  GameServerGroupInstanceTypeC5a_12xlarge,
  GameServerGroupInstanceTypeC5a_16xlarge,
  GameServerGroupInstanceTypeC5a_24xlarge,
  GameServerGroupInstanceTypeC5a_2xlarge,
  GameServerGroupInstanceTypeC5a_4xlarge,
  GameServerGroupInstanceTypeC5a_8xlarge,
  GameServerGroupInstanceTypeC5a_Large,
  GameServerGroupInstanceTypeC5a_Xlarge,
  GameServerGroupInstanceTypeM4_10xlarge,
  GameServerGroupInstanceTypeM4_2xlarge,
  GameServerGroupInstanceTypeM4_4xlarge,
  GameServerGroupInstanceTypeM4_Large,
  GameServerGroupInstanceTypeM4_Xlarge,
  GameServerGroupInstanceTypeM5_12xlarge,
  GameServerGroupInstanceTypeM5_16xlarge,
  GameServerGroupInstanceTypeM5_24xlarge,
  GameServerGroupInstanceTypeM5_2xlarge,
  GameServerGroupInstanceTypeM5_4xlarge,
  GameServerGroupInstanceTypeM5_8xlarge,
  GameServerGroupInstanceTypeM5_Large,
  GameServerGroupInstanceTypeM5_Xlarge,
  GameServerGroupInstanceTypeM5a_12xlarge,
  GameServerGroupInstanceTypeM5a_16xlarge,
  GameServerGroupInstanceTypeM5a_24xlarge,
  GameServerGroupInstanceTypeM5a_2xlarge,
  GameServerGroupInstanceTypeM5a_4xlarge,
  GameServerGroupInstanceTypeM5a_8xlarge,
  GameServerGroupInstanceTypeM5a_Large,
  GameServerGroupInstanceTypeM5a_Xlarge,
  GameServerGroupInstanceTypeR4_16xlarge,
  GameServerGroupInstanceTypeR4_2xlarge,
  GameServerGroupInstanceTypeR4_4xlarge,
  GameServerGroupInstanceTypeR4_8xlarge,
  GameServerGroupInstanceTypeR4_Large,
  GameServerGroupInstanceTypeR4_Xlarge,
  GameServerGroupInstanceTypeR5_12xlarge,
  GameServerGroupInstanceTypeR5_16xlarge,
  GameServerGroupInstanceTypeR5_24xlarge,
  GameServerGroupInstanceTypeR5_2xlarge,
  GameServerGroupInstanceTypeR5_4xlarge,
  GameServerGroupInstanceTypeR5_8xlarge,
  GameServerGroupInstanceTypeR5_Large,
  GameServerGroupInstanceTypeR5_Xlarge,
  GameServerGroupInstanceTypeR5a_12xlarge,
  GameServerGroupInstanceTypeR5a_16xlarge,
  GameServerGroupInstanceTypeR5a_24xlarge,
  GameServerGroupInstanceTypeR5a_2xlarge,
  GameServerGroupInstanceTypeR5a_4xlarge,
  GameServerGroupInstanceTypeR5a_8xlarge,
  GameServerGroupInstanceTypeR5a_Large,
  GameServerGroupInstanceTypeR5a_Xlarge,
  GameServerGroupInstanceType'
  #-}

instance Prelude.FromText GameServerGroupInstanceType where
  parser = GameServerGroupInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText GameServerGroupInstanceType where
  toText (GameServerGroupInstanceType' x) = x

instance Prelude.Hashable GameServerGroupInstanceType

instance Prelude.NFData GameServerGroupInstanceType

instance Prelude.ToByteString GameServerGroupInstanceType

instance Prelude.ToQuery GameServerGroupInstanceType

instance Prelude.ToHeader GameServerGroupInstanceType

instance Prelude.ToJSON GameServerGroupInstanceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON GameServerGroupInstanceType where
  parseJSON = Prelude.parseJSONText "GameServerGroupInstanceType"
