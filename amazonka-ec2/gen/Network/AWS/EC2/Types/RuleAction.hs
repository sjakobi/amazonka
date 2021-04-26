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
-- Module      : Network.AWS.EC2.Types.RuleAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RuleAction
  ( RuleAction
      ( ..,
        RuleActionAllow,
        RuleActionDeny
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RuleAction = RuleAction'
  { fromRuleAction ::
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

pattern RuleActionAllow :: RuleAction
pattern RuleActionAllow = RuleAction' "allow"

pattern RuleActionDeny :: RuleAction
pattern RuleActionDeny = RuleAction' "deny"

{-# COMPLETE
  RuleActionAllow,
  RuleActionDeny,
  RuleAction'
  #-}

instance Prelude.FromText RuleAction where
  parser = RuleAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText RuleAction where
  toText (RuleAction' x) = x

instance Prelude.Hashable RuleAction

instance Prelude.NFData RuleAction

instance Prelude.ToByteString RuleAction

instance Prelude.ToQuery RuleAction

instance Prelude.ToHeader RuleAction

instance Prelude.FromXML RuleAction where
  parseXML = Prelude.parseXMLText "RuleAction"
