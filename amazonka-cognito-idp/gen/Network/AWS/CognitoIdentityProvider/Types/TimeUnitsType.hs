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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.TimeUnitsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.TimeUnitsType
  ( TimeUnitsType
      ( ..,
        TimeUnitsTypeDays,
        TimeUnitsTypeHours,
        TimeUnitsTypeMinutes,
        TimeUnitsTypeSeconds
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TimeUnitsType = TimeUnitsType'
  { fromTimeUnitsType ::
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

pattern TimeUnitsTypeDays :: TimeUnitsType
pattern TimeUnitsTypeDays = TimeUnitsType' "days"

pattern TimeUnitsTypeHours :: TimeUnitsType
pattern TimeUnitsTypeHours = TimeUnitsType' "hours"

pattern TimeUnitsTypeMinutes :: TimeUnitsType
pattern TimeUnitsTypeMinutes = TimeUnitsType' "minutes"

pattern TimeUnitsTypeSeconds :: TimeUnitsType
pattern TimeUnitsTypeSeconds = TimeUnitsType' "seconds"

{-# COMPLETE
  TimeUnitsTypeDays,
  TimeUnitsTypeHours,
  TimeUnitsTypeMinutes,
  TimeUnitsTypeSeconds,
  TimeUnitsType'
  #-}

instance Prelude.FromText TimeUnitsType where
  parser = TimeUnitsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeUnitsType where
  toText (TimeUnitsType' x) = x

instance Prelude.Hashable TimeUnitsType

instance Prelude.NFData TimeUnitsType

instance Prelude.ToByteString TimeUnitsType

instance Prelude.ToQuery TimeUnitsType

instance Prelude.ToHeader TimeUnitsType

instance Prelude.ToJSON TimeUnitsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimeUnitsType where
  parseJSON = Prelude.parseJSONText "TimeUnitsType"
