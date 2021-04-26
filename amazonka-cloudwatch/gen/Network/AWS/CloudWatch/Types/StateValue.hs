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
-- Module      : Network.AWS.CloudWatch.Types.StateValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.StateValue
  ( StateValue
      ( ..,
        StateValueALARM,
        StateValueINSUFFICIENTDATA,
        StateValueOK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StateValue = StateValue'
  { fromStateValue ::
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

pattern StateValueALARM :: StateValue
pattern StateValueALARM = StateValue' "ALARM"

pattern StateValueINSUFFICIENTDATA :: StateValue
pattern StateValueINSUFFICIENTDATA = StateValue' "INSUFFICIENT_DATA"

pattern StateValueOK :: StateValue
pattern StateValueOK = StateValue' "OK"

{-# COMPLETE
  StateValueALARM,
  StateValueINSUFFICIENTDATA,
  StateValueOK,
  StateValue'
  #-}

instance Prelude.FromText StateValue where
  parser = StateValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText StateValue where
  toText (StateValue' x) = x

instance Prelude.Hashable StateValue

instance Prelude.NFData StateValue

instance Prelude.ToByteString StateValue

instance Prelude.ToQuery StateValue

instance Prelude.ToHeader StateValue

instance Prelude.FromXML StateValue where
  parseXML = Prelude.parseXMLText "StateValue"
