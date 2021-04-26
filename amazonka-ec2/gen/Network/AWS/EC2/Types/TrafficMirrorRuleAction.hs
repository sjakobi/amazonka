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
-- Module      : Network.AWS.EC2.Types.TrafficMirrorRuleAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficMirrorRuleAction
  ( TrafficMirrorRuleAction
      ( ..,
        TrafficMirrorRuleActionAccept,
        TrafficMirrorRuleActionReject
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficMirrorRuleAction = TrafficMirrorRuleAction'
  { fromTrafficMirrorRuleAction ::
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

pattern TrafficMirrorRuleActionAccept :: TrafficMirrorRuleAction
pattern TrafficMirrorRuleActionAccept = TrafficMirrorRuleAction' "accept"

pattern TrafficMirrorRuleActionReject :: TrafficMirrorRuleAction
pattern TrafficMirrorRuleActionReject = TrafficMirrorRuleAction' "reject"

{-# COMPLETE
  TrafficMirrorRuleActionAccept,
  TrafficMirrorRuleActionReject,
  TrafficMirrorRuleAction'
  #-}

instance Prelude.FromText TrafficMirrorRuleAction where
  parser = TrafficMirrorRuleAction' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficMirrorRuleAction where
  toText (TrafficMirrorRuleAction' x) = x

instance Prelude.Hashable TrafficMirrorRuleAction

instance Prelude.NFData TrafficMirrorRuleAction

instance Prelude.ToByteString TrafficMirrorRuleAction

instance Prelude.ToQuery TrafficMirrorRuleAction

instance Prelude.ToHeader TrafficMirrorRuleAction

instance Prelude.FromXML TrafficMirrorRuleAction where
  parseXML = Prelude.parseXMLText "TrafficMirrorRuleAction"
