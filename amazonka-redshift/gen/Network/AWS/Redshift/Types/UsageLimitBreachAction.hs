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
-- Module      : Network.AWS.Redshift.Types.UsageLimitBreachAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitBreachAction
  ( UsageLimitBreachAction
      ( ..,
        UsageLimitBreachActionDisable,
        UsageLimitBreachActionEmitMetric,
        UsageLimitBreachActionLog
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype UsageLimitBreachAction = UsageLimitBreachAction'
  { fromUsageLimitBreachAction ::
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

pattern UsageLimitBreachActionDisable :: UsageLimitBreachAction
pattern UsageLimitBreachActionDisable = UsageLimitBreachAction' "disable"

pattern UsageLimitBreachActionEmitMetric :: UsageLimitBreachAction
pattern UsageLimitBreachActionEmitMetric = UsageLimitBreachAction' "emit-metric"

pattern UsageLimitBreachActionLog :: UsageLimitBreachAction
pattern UsageLimitBreachActionLog = UsageLimitBreachAction' "log"

{-# COMPLETE
  UsageLimitBreachActionDisable,
  UsageLimitBreachActionEmitMetric,
  UsageLimitBreachActionLog,
  UsageLimitBreachAction'
  #-}

instance Prelude.FromText UsageLimitBreachAction where
  parser = UsageLimitBreachAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageLimitBreachAction where
  toText (UsageLimitBreachAction' x) = x

instance Prelude.Hashable UsageLimitBreachAction

instance Prelude.NFData UsageLimitBreachAction

instance Prelude.ToByteString UsageLimitBreachAction

instance Prelude.ToQuery UsageLimitBreachAction

instance Prelude.ToHeader UsageLimitBreachAction

instance Prelude.FromXML UsageLimitBreachAction where
  parseXML = Prelude.parseXMLText "UsageLimitBreachAction"
