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
-- Module      : Network.AWS.SES.Types.BehaviorOnMXFailure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BehaviorOnMXFailure
  ( BehaviorOnMXFailure
      ( ..,
        BehaviorOnMXFailureRejectMessage,
        BehaviorOnMXFailureUseDefaultValue
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BehaviorOnMXFailure = BehaviorOnMXFailure'
  { fromBehaviorOnMXFailure ::
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

pattern BehaviorOnMXFailureRejectMessage :: BehaviorOnMXFailure
pattern BehaviorOnMXFailureRejectMessage = BehaviorOnMXFailure' "RejectMessage"

pattern BehaviorOnMXFailureUseDefaultValue :: BehaviorOnMXFailure
pattern BehaviorOnMXFailureUseDefaultValue = BehaviorOnMXFailure' "UseDefaultValue"

{-# COMPLETE
  BehaviorOnMXFailureRejectMessage,
  BehaviorOnMXFailureUseDefaultValue,
  BehaviorOnMXFailure'
  #-}

instance Prelude.FromText BehaviorOnMXFailure where
  parser = BehaviorOnMXFailure' Prelude.<$> Prelude.takeText

instance Prelude.ToText BehaviorOnMXFailure where
  toText (BehaviorOnMXFailure' x) = x

instance Prelude.Hashable BehaviorOnMXFailure

instance Prelude.NFData BehaviorOnMXFailure

instance Prelude.ToByteString BehaviorOnMXFailure

instance Prelude.ToQuery BehaviorOnMXFailure

instance Prelude.ToHeader BehaviorOnMXFailure

instance Prelude.FromXML BehaviorOnMXFailure where
  parseXML = Prelude.parseXMLText "BehaviorOnMXFailure"
