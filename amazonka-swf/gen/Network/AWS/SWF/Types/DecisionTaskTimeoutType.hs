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
-- Module      : Network.AWS.SWF.Types.DecisionTaskTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.DecisionTaskTimeoutType
  ( DecisionTaskTimeoutType
      ( ..,
        DecisionTaskTimeoutTypeSTARTTOCLOSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DecisionTaskTimeoutType = DecisionTaskTimeoutType'
  { fromDecisionTaskTimeoutType ::
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

pattern DecisionTaskTimeoutTypeSTARTTOCLOSE :: DecisionTaskTimeoutType
pattern DecisionTaskTimeoutTypeSTARTTOCLOSE = DecisionTaskTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  DecisionTaskTimeoutTypeSTARTTOCLOSE,
  DecisionTaskTimeoutType'
  #-}

instance Prelude.FromText DecisionTaskTimeoutType where
  parser = DecisionTaskTimeoutType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DecisionTaskTimeoutType where
  toText (DecisionTaskTimeoutType' x) = x

instance Prelude.Hashable DecisionTaskTimeoutType

instance Prelude.NFData DecisionTaskTimeoutType

instance Prelude.ToByteString DecisionTaskTimeoutType

instance Prelude.ToQuery DecisionTaskTimeoutType

instance Prelude.ToHeader DecisionTaskTimeoutType

instance Prelude.FromJSON DecisionTaskTimeoutType where
  parseJSON = Prelude.parseJSONText "DecisionTaskTimeoutType"
